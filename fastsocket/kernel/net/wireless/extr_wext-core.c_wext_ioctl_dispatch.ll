; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-core.c_wext_ioctl_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-core.c_wext_ioctl_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ifreq = type { i32 }
%struct.iw_request_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ifreq*, i32, %struct.iw_request_info*, i32, i32)* @wext_ioctl_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wext_ioctl_dispatch(%struct.net* %0, %struct.ifreq* %1, i32 %2, %struct.iw_request_info* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iw_request_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.ifreq* %1, %struct.ifreq** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.iw_request_info* %3, %struct.iw_request_info** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @wext_permission_check(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %7, align 4
  br label %37

21:                                               ; preds = %6
  %22 = load %struct.net*, %struct.net** %8, align 8
  %23 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %24 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_load(%struct.net* %22, i32 %25)
  %27 = call i32 (...) @rtnl_lock()
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.iw_request_info*, %struct.iw_request_info** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @wireless_process_ioctl(%struct.net* %28, %struct.ifreq* %29, i32 %30, %struct.iw_request_info* %31, i32 %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = call i32 (...) @rtnl_unlock()
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %21, %19
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @wext_permission_check(i32) #1

declare dso_local i32 @dev_load(%struct.net*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @wireless_process_ioctl(%struct.net*, %struct.ifreq*, i32, %struct.iw_request_info*, i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
