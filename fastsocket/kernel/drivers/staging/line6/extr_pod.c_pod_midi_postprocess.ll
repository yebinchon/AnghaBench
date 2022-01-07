; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_midi_postprocess.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_midi_postprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6_pod = type { i32, i32 }

@LINE6_PROGRAM_CHANGE = common dso_local global i8 0, align 1
@LINE6_CHANNEL_HOST = common dso_local global i8 0, align 1
@LINE6_PARAM_CHANGE = common dso_local global i8 0, align 1
@POD_amp_model_setup = common dso_local global i8 0, align 1
@POD_effect_setup = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pod_midi_postprocess(%struct.usb_line6_pod* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_line6_pod*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_line6_pod* %0, %struct.usb_line6_pod** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %9 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %85

13:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %82, %13
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %85

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @LINE6_PROGRAM_CHANGE, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @LINE6_CHANNEL_HOST, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = icmp eq i32 %24, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %33 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %32, i32 0, i32 0
  %34 = call i32 @line6_invalidate_current(i32* %33)
  br label %85

35:                                               ; preds = %18
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @LINE6_PARAM_CHANGE, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @LINE6_CHANNEL_HOST, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %43, %45
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @POD_amp_model_setup, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %53
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @POD_effect_setup, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %64, %53
  %76 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %4, align 8
  %77 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %76, i32 0, i32 0
  %78 = call i32 @line6_invalidate_current(i32* %77)
  br label %85

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79, %48, %35
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %14

85:                                               ; preds = %12, %75, %31, %14
  ret void
}

declare dso_local i32 @line6_invalidate_current(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
