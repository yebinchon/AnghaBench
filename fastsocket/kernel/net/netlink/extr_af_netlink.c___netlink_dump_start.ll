; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c___netlink_dump_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c___netlink_dump_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_dump_control = type { i32, i32, i32, i32 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32, i32 }
%struct.netlink_callback_extended = type { i32, i32 }
%struct.netlink_sock = type { i32, %struct.netlink_callback* }
%struct.TYPE_2__ = type { i32 }

@NETLINK_CALLBACK_TOTAL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__netlink_dump_start(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.netlink_dump_control* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.netlink_dump_control*, align 8
  %10 = alloca %struct.netlink_callback*, align 8
  %11 = alloca %struct.netlink_callback_extended*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.netlink_sock*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.netlink_dump_control* %3, %struct.netlink_dump_control** %9, align 8
  %16 = load i32, i32* @NETLINK_CALLBACK_TOTAL_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.netlink_callback* @kzalloc(i32 %16, i32 %17)
  store %struct.netlink_callback* %18, %struct.netlink_callback** %10, align 8
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %20 = icmp eq %struct.netlink_callback* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOBUFS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %129

24:                                               ; preds = %4
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %26 = call %struct.netlink_callback_extended* @nl_callback_extended(%struct.netlink_callback* %25)
  store %struct.netlink_callback_extended* %26, %struct.netlink_callback_extended** %11, align 8
  %27 = load %struct.netlink_dump_control*, %struct.netlink_dump_control** %9, align 8
  %28 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %31 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.netlink_dump_control*, %struct.netlink_dump_control** %9, align 8
  %33 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %36 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %38 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %39 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %38, i32 0, i32 1
  store %struct.nlmsghdr* %37, %struct.nlmsghdr** %39, align 8
  %40 = load %struct.netlink_dump_control*, %struct.netlink_dump_control** %9, align 8
  %41 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.netlink_callback_extended*, %struct.netlink_callback_extended** %11, align 8
  %44 = getelementptr inbounds %struct.netlink_callback_extended, %struct.netlink_callback_extended* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.netlink_dump_control*, %struct.netlink_dump_control** %9, align 8
  %46 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.netlink_callback_extended*, %struct.netlink_callback_extended** %11, align 8
  %49 = getelementptr inbounds %struct.netlink_callback_extended, %struct.netlink_callback_extended* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = call i32 @atomic_inc(i32* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %55 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %54, i32 0, i32 0
  store %struct.sk_buff* %53, %struct.sk_buff** %55, align 8
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = call i32 @sock_net(%struct.sock* %56)
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call i32 @NETLINK_CB(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.sock* @netlink_lookup(i32 %57, i32 %60, i32 %65)
  store %struct.sock* %66, %struct.sock** %12, align 8
  %67 = load %struct.sock*, %struct.sock** %12, align 8
  %68 = icmp eq %struct.sock* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %24
  %70 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %71 = call i32 @netlink_destroy_callback(%struct.netlink_callback* %70)
  %72 = load i32, i32* @ECONNREFUSED, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %129

74:                                               ; preds = %24
  %75 = load %struct.sock*, %struct.sock** %12, align 8
  %76 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %75)
  store %struct.netlink_sock* %76, %struct.netlink_sock** %13, align 8
  %77 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %78 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mutex_lock(i32 %79)
  %81 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %82 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %81, i32 0, i32 1
  %83 = load %struct.netlink_callback*, %struct.netlink_callback** %82, align 8
  %84 = icmp ne %struct.netlink_callback* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %74
  %86 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %87 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @mutex_unlock(i32 %88)
  %90 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %91 = call i32 @netlink_destroy_callback(%struct.netlink_callback* %90)
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %14, align 4
  br label %119

94:                                               ; preds = %74
  %95 = load %struct.netlink_callback_extended*, %struct.netlink_callback_extended** %11, align 8
  %96 = getelementptr inbounds %struct.netlink_callback_extended, %struct.netlink_callback_extended* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @try_module_get(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %94
  %101 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %102 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @mutex_unlock(i32 %103)
  %105 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %106 = call i32 @netlink_destroy_callback(%struct.netlink_callback* %105)
  %107 = load i32, i32* @EPROTONOSUPPORT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %14, align 4
  br label %119

109:                                              ; preds = %94
  %110 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %111 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %112 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %111, i32 0, i32 1
  store %struct.netlink_callback* %110, %struct.netlink_callback** %112, align 8
  %113 = load %struct.netlink_sock*, %struct.netlink_sock** %13, align 8
  %114 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @mutex_unlock(i32 %115)
  %117 = load %struct.sock*, %struct.sock** %12, align 8
  %118 = call i32 @netlink_dump(%struct.sock* %117)
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %109, %100, %85
  %120 = load %struct.sock*, %struct.sock** %12, align 8
  %121 = call i32 @sock_put(%struct.sock* %120)
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %5, align 4
  br label %129

126:                                              ; preds = %119
  %127 = load i32, i32* @EINTR, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %126, %124, %69, %21
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.netlink_callback* @kzalloc(i32, i32) #1

declare dso_local %struct.netlink_callback_extended* @nl_callback_extended(%struct.netlink_callback*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.sock* @netlink_lookup(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @netlink_destroy_callback(%struct.netlink_callback*) #1

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @netlink_dump(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
