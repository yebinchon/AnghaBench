; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_radio.c_uwb_radio_change_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_radio.c_uwb_radio_change_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, i32)* @uwb_radio_change_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_radio_change_channel(%struct.uwb_rc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @uwb_radio_channel_changed(%struct.uwb_rc* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %16 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %21 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %29 = call i32 @uwb_radio_change_channel(%struct.uwb_rc* %28, i32 -1)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %24, %19
  %36 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @uwb_rc_beacon(%struct.uwb_rc* %36, i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %13
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %44 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %45 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @uwb_radio_channel_changed(%struct.uwb_rc* %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %32
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @uwb_radio_channel_changed(%struct.uwb_rc*, i32) #1

declare dso_local i32 @uwb_rc_beacon(%struct.uwb_rc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
