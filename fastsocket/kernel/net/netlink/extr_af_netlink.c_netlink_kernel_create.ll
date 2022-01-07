; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_kernel_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_kernel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64*, %struct.module*, %struct.mutex* }
%struct.module = type { i32 }
%struct.mutex = type { i32 }
%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type opaque
%struct.socket = type { %struct.sock* }
%struct.netlink_sock = type { void (%struct.sk_buff.0*)*, i32 }
%struct.sk_buff.0 = type opaque

@nl_table = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_LINKS = common dso_local global i32 0, align 4
@PF_NETLINK = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@netlink_data_ready = common dso_local global i32 0, align 4
@NETLINK_KERNEL_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @netlink_kernel_create(%struct.net* %0, i32 %1, i32 %2, void (%struct.sk_buff*)* %3, %struct.mutex* %4, %struct.module* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.sk_buff*)*, align 8
  %12 = alloca %struct.mutex*, align 8
  %13 = alloca %struct.module*, align 8
  %14 = alloca %struct.socket*, align 8
  %15 = alloca %struct.sock*, align 8
  %16 = alloca %struct.netlink_sock*, align 8
  %17 = alloca i64*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store void (%struct.sk_buff*)* %3, void (%struct.sk_buff*)** %11, align 8
  store %struct.mutex* %4, %struct.mutex** %12, align 8
  store %struct.module* %5, %struct.module** %13, align 8
  store i64* null, i64** %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MAX_LINKS, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %6
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %148

30:                                               ; preds = %25
  %31 = load i32, i32* @PF_NETLINK, align 4
  %32 = load i32, i32* @SOCK_DGRAM, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @sock_create_lite(i32 %31, i32 %32, i32 %33, %struct.socket** %14)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %148

37:                                               ; preds = %30
  %38 = load %struct.socket*, %struct.socket** %14, align 8
  %39 = load %struct.mutex*, %struct.mutex** %12, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @__netlink_create(i32* @init_net, %struct.socket* %38, %struct.mutex* %39, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %145

44:                                               ; preds = %37
  %45 = load %struct.socket*, %struct.socket** %14, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 0
  %47 = load %struct.sock*, %struct.sock** %46, align 8
  store %struct.sock* %47, %struct.sock** %15, align 8
  %48 = load %struct.sock*, %struct.sock** %15, align 8
  %49 = load %struct.net*, %struct.net** %8, align 8
  %50 = call i32 @sk_change_net(%struct.sock* %48, %struct.net* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %51, 32
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 32, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @NLGRPSZ(i32 %55)
  %57 = add i64 %56, 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i64* @kzalloc(i64 %57, i32 %58)
  store i64* %59, i64** %17, align 8
  %60 = load i64*, i64** %17, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %140

63:                                               ; preds = %54
  %64 = load i32, i32* @netlink_data_ready, align 4
  %65 = load %struct.sock*, %struct.sock** %15, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %11, align 8
  %68 = icmp ne void (%struct.sk_buff*)* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %11, align 8
  %71 = bitcast void (%struct.sk_buff*)* %70 to void (%struct.sk_buff.0*)*
  %72 = load %struct.sock*, %struct.sock** %15, align 8
  %73 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %72)
  %74 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %73, i32 0, i32 0
  store void (%struct.sk_buff.0*)* %71, void (%struct.sk_buff.0*)** %74, align 8
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.sock*, %struct.sock** %15, align 8
  %77 = load %struct.net*, %struct.net** %8, align 8
  %78 = call i64 @netlink_insert(%struct.sock* %76, %struct.net* %77, i32 0)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %140

81:                                               ; preds = %75
  %82 = load %struct.sock*, %struct.sock** %15, align 8
  %83 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %82)
  store %struct.netlink_sock* %83, %struct.netlink_sock** %16, align 8
  %84 = load i32, i32* @NETLINK_KERNEL_SOCKET, align 4
  %85 = load %struct.netlink_sock*, %struct.netlink_sock** %16, align 8
  %86 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = call i32 (...) @netlink_table_grab()
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %127, label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i32 %98, i32* %103, align 4
  %104 = load i64*, i64** %17, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i64* %104, i64** %109, align 8
  %110 = load %struct.mutex*, %struct.mutex** %12, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  store %struct.mutex* %110, %struct.mutex** %115, align 8
  %116 = load %struct.module*, %struct.module** %13, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  store %struct.module* %116, %struct.module** %121, align 8
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %137

127:                                              ; preds = %81
  %128 = load i64*, i64** %17, align 8
  %129 = call i32 @kfree(i64* %128)
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %127, %97
  %138 = call i32 (...) @netlink_table_ungrab()
  %139 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %139, %struct.sock** %7, align 8
  br label %148

140:                                              ; preds = %80, %62
  %141 = load i64*, i64** %17, align 8
  %142 = call i32 @kfree(i64* %141)
  %143 = load %struct.sock*, %struct.sock** %15, align 8
  %144 = call i32 @netlink_kernel_release(%struct.sock* %143)
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %148

145:                                              ; preds = %43
  %146 = load %struct.socket*, %struct.socket** %14, align 8
  %147 = call i32 @sock_release(%struct.socket* %146)
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %148

148:                                              ; preds = %145, %140, %137, %36, %29
  %149 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %149
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @sock_create_lite(i32, i32, i32, %struct.socket**) #1

declare dso_local i64 @__netlink_create(i32*, %struct.socket*, %struct.mutex*, i32) #1

declare dso_local i32 @sk_change_net(%struct.sock*, %struct.net*) #1

declare dso_local i64* @kzalloc(i64, i32) #1

declare dso_local i64 @NLGRPSZ(i32) #1

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i64 @netlink_insert(%struct.sock*, %struct.net*, i32) #1

declare dso_local i32 @netlink_table_grab(...) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @netlink_table_ungrab(...) #1

declare dso_local i32 @netlink_kernel_release(%struct.sock*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
