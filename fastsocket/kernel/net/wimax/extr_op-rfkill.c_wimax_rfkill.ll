; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_op-rfkill.c_wimax_rfkill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_op-rfkill.c_wimax_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"(wimax_dev %p state %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"(wimax_dev %p state %u) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_rfkill(%struct.wimax_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.wimax_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %8 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %7)
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @d_fnstart(i32 3, %struct.device* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %10, i32 %11)
  %13 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %14 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %17 = call i32 @wimax_dev_is_ready(%struct.wimax_dev* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %52

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %39 [
    i32 129, label %23
    i32 130, label %23
    i32 128, label %38
  ]

23:                                               ; preds = %21, %21
  %24 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @__wimax_rf_toggle_radio(%struct.wimax_dev* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %51

30:                                               ; preds = %23
  %31 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %32 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 130
  %36 = zext i1 %35 to i32
  %37 = call i32 @rfkill_set_sw_state(i32 %33, i32 %36)
  br label %42

38:                                               ; preds = %21
  br label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %38, %30
  %43 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %44 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 1
  %47 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %48 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %39, %29
  br label %52

52:                                               ; preds = %51, %20
  %53 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %54 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @d_fnend(i32 3, %struct.device* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.wimax_dev* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wimax_dev_is_ready(%struct.wimax_dev*) #1

declare dso_local i32 @__wimax_rf_toggle_radio(%struct.wimax_dev*, i32) #1

declare dso_local i32 @rfkill_set_sw_state(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
