; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_getfirstbyhwtype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_getfirstbyhwtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @dev_getfirstbyhwtype(%struct.net* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = call i32 (...) @rtnl_lock()
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i16, i16* %4, align 2
  %9 = call %struct.net_device* @__dev_getfirstbyhwtype(%struct.net* %7, i16 zeroext %8)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @dev_hold(%struct.net_device* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = call i32 (...) @rtnl_unlock()
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  ret %struct.net_device* %17
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.net_device* @__dev_getfirstbyhwtype(%struct.net*, i16 zeroext) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
