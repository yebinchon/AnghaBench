; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_beacon.c_uwb_rc_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_beacon.c_uwb_rc_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Cannot set new IE on device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_beacon(%struct.uwb_rc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %11 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %6, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %21 = call i32 @uwb_rc_stop_beacon(%struct.uwb_rc* %20)
  store i32 %21, i32* %8, align 4
  br label %55

22:                                               ; preds = %16
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @uwb_rc_start_beacon(%struct.uwb_rc* %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %64

31:                                               ; preds = %22
  %32 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %33 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le16_to_cpu(i32 %36)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %41 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %42 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @uwb_rc_set_ie(%struct.uwb_rc* %40, %struct.TYPE_4__* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.device*, %struct.device** %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %52 = call i32 @uwb_rc_stop_beacon(%struct.uwb_rc* %51)
  store i32 %52, i32* %8, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %39
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* %8, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %61 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %29
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @uwb_rc_stop_beacon(%struct.uwb_rc*) #1

declare dso_local i32 @uwb_rc_start_beacon(%struct.uwb_rc*, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @uwb_rc_set_ie(%struct.uwb_rc*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
