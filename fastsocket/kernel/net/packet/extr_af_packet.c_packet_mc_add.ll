; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_mc_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_mc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.packet_mreq_max = type { i64, i64, i64, i32 }
%struct.packet_sock = type { %struct.packet_mclist* }
%struct.packet_mclist = type { i64, i64, i64, i32, %struct.packet_mclist*, i32 }
%struct.net_device = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.packet_mreq_max*)* @packet_mc_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_mc_add(%struct.sock* %0, %struct.packet_mreq_max* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.packet_mreq_max*, align 8
  %5 = alloca %struct.packet_sock*, align 8
  %6 = alloca %struct.packet_mclist*, align 8
  %7 = alloca %struct.packet_mclist*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.packet_mreq_max* %1, %struct.packet_mreq_max** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.packet_sock* @pkt_sk(%struct.sock* %10)
  store %struct.packet_sock* %11, %struct.packet_sock** %5, align 8
  %12 = call i32 (...) @rtnl_lock()
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call i32 @sock_net(%struct.sock* %15)
  %17 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %18 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.net_device* @__dev_get_by_index(i32 %16, i64 %19)
  store %struct.net_device* %20, %struct.net_device** %8, align 8
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %148

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %28 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %148

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOBUFS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.packet_mclist* @kmalloc(i32 48, i32 %38)
  store %struct.packet_mclist* %39, %struct.packet_mclist** %7, align 8
  %40 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %41 = icmp eq %struct.packet_mclist* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %148

43:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  %44 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %45 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %44, i32 0, i32 0
  %46 = load %struct.packet_mclist*, %struct.packet_mclist** %45, align 8
  store %struct.packet_mclist* %46, %struct.packet_mclist** %6, align 8
  br label %47

47:                                               ; preds = %94, %43
  %48 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %49 = icmp ne %struct.packet_mclist* %48, null
  br i1 %49, label %50, label %98

50:                                               ; preds = %47
  %51 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %52 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %55 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %50
  %59 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %60 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %63 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %58
  %67 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %68 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %71 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %66
  %75 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %76 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %79 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %82 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @memcmp(i32 %77, i32 %80, i64 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %74
  %87 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %88 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %92 = call i32 @kfree(%struct.packet_mclist* %91)
  br label %148

93:                                               ; preds = %74, %66, %58, %50
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %96 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %95, i32 0, i32 4
  %97 = load %struct.packet_mclist*, %struct.packet_mclist** %96, align 8
  store %struct.packet_mclist* %97, %struct.packet_mclist** %6, align 8
  br label %47

98:                                               ; preds = %47
  %99 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %100 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %103 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %105 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %108 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %110 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %113 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %115 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %4, align 8
  %118 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %121 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @memcpy(i32 %116, i32 %119, i64 %122)
  %124 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %125 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %124, i32 0, i32 3
  store i32 1, i32* %125, align 8
  %126 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %127 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %126, i32 0, i32 0
  %128 = load %struct.packet_mclist*, %struct.packet_mclist** %127, align 8
  %129 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %130 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %129, i32 0, i32 4
  store %struct.packet_mclist* %128, %struct.packet_mclist** %130, align 8
  %131 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %132 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %133 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %132, i32 0, i32 0
  store %struct.packet_mclist* %131, %struct.packet_mclist** %133, align 8
  %134 = load %struct.net_device*, %struct.net_device** %8, align 8
  %135 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %136 = call i32 @packet_dev_mc(%struct.net_device* %134, %struct.packet_mclist* %135, i32 1)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %98
  %140 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %141 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %140, i32 0, i32 4
  %142 = load %struct.packet_mclist*, %struct.packet_mclist** %141, align 8
  %143 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %144 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %143, i32 0, i32 0
  store %struct.packet_mclist* %142, %struct.packet_mclist** %144, align 8
  %145 = load %struct.packet_mclist*, %struct.packet_mclist** %7, align 8
  %146 = call i32 @kfree(%struct.packet_mclist* %145)
  br label %147

147:                                              ; preds = %139, %98
  br label %148

148:                                              ; preds = %147, %86, %42, %34, %23
  %149 = call i32 (...) @rtnl_unlock()
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.packet_mclist* @kmalloc(i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @kfree(%struct.packet_mclist*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @packet_dev_mc(%struct.net_device*, %struct.packet_mclist*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
