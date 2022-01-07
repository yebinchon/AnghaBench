; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-rc.c_find_rc_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-rc.c_find_rc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.uwb_dev_addr = type { i32 }
%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @find_rc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_rc_dev(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uwb_dev_addr*, align 8
  %7 = alloca %struct.uwb_rc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.uwb_dev_addr*
  store %struct.uwb_dev_addr* %9, %struct.uwb_dev_addr** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.uwb_rc* @dev_get_drvdata(%struct.device* %10)
  store %struct.uwb_rc* %11, %struct.uwb_rc** %7, align 8
  %12 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %13 = icmp eq %struct.uwb_rc* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %18 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %6, align 8
  %21 = call i32 @uwb_dev_addr_cmp(i32* %19, %struct.uwb_dev_addr* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %25 = call %struct.uwb_rc* @uwb_rc_get(%struct.uwb_rc* %24)
  store %struct.uwb_rc* %25, %struct.uwb_rc** %7, align 8
  store i32 1, i32* %3, align 4
  br label %27

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %23, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.uwb_rc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @uwb_dev_addr_cmp(i32*, %struct.uwb_dev_addr*) #1

declare dso_local %struct.uwb_rc* @uwb_rc_get(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
