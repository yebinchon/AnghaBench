; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_get_system_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_get_system_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.usb_line6_pod = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ValueWait = type { i64, i32 }

@pod_get_system_param.size = internal constant i32 1, align 4
@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@POD_tuner = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@POD_system_invalid = common dso_local global i64 0, align 8
@POD_SYSEX_SYSTEMREQ = common dso_local global i32 0, align 4
@SYSEX_DATA_OFS = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6_pod*, i8*, i32, %struct.ValueWait*, i32, i32)* @pod_get_system_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pod_get_system_param(%struct.usb_line6_pod* %0, i8* %1, i32 %2, %struct.ValueWait* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_line6_pod*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ValueWait*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_line6_pod* %0, %struct.usb_line6_pod** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ValueWait* %3, %struct.ValueWait** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @wait, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %19 = call i32 @DECLARE_WAITQUEUE(i32 %17, %struct.TYPE_6__* %18)
  %20 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %8, align 8
  %21 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @POD_tuner, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %110

35:                                               ; preds = %29, %6
  %36 = load i64, i64* @POD_system_invalid, align 8
  %37 = load %struct.ValueWait*, %struct.ValueWait** %11, align 8
  %38 = getelementptr inbounds %struct.ValueWait, %struct.ValueWait* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %8, align 8
  %40 = load i32, i32* @POD_SYSEX_SYSTEMREQ, align 4
  %41 = call i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod* %39, i32 %40, i32 1)
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %110

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %14, align 8
  %49 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %47, i8* %50, align 1
  %51 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %8, align 8
  %52 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %51, i32 0, i32 0
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @line6_send_sysex_message(i32* %52, i8* %53, i32 1)
  %55 = load i8*, i8** %14, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load %struct.ValueWait*, %struct.ValueWait** %11, align 8
  %58 = getelementptr inbounds %struct.ValueWait, %struct.ValueWait* %57, i32 0, i32 1
  %59 = call i32 @add_wait_queue(i32* %58, i32* @wait)
  %60 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %78, %45
  %64 = load %struct.ValueWait*, %struct.ValueWait** %11, align 8
  %65 = getelementptr inbounds %struct.ValueWait, %struct.ValueWait* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @POD_system_invalid, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %71 = call i64 @signal_pending(%struct.TYPE_6__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @ERESTARTSYS, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %16, align 4
  br label %79

76:                                               ; preds = %69
  %77 = call i32 (...) @schedule()
  br label %78

78:                                               ; preds = %76
  br label %63

79:                                               ; preds = %73, %63
  %80 = load i32, i32* @TASK_RUNNING, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ValueWait*, %struct.ValueWait** %11, align 8
  %84 = getelementptr inbounds %struct.ValueWait, %struct.ValueWait* %83, i32 0, i32 1
  %85 = call i32 @remove_wait_queue(i32* %84, i32* @wait)
  %86 = load i32, i32* %16, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %7, align 4
  br label %110

90:                                               ; preds = %79
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.ValueWait*, %struct.ValueWait** %11, align 8
  %95 = getelementptr inbounds %struct.ValueWait, %struct.ValueWait* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i16
  %98 = sext i16 %97 to i32
  br label %105

99:                                               ; preds = %90
  %100 = load %struct.ValueWait*, %struct.ValueWait** %11, align 8
  %101 = getelementptr inbounds %struct.ValueWait, %struct.ValueWait* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i16
  %104 = zext i16 %103 to i32
  br label %105

105:                                              ; preds = %99, %93
  %106 = phi i32 [ %98, %93 ], [ %104, %99 ]
  store i32 %106, i32* %15, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @sprintf(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %108)
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %105, %88, %44, %32
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_6__*) #1

declare dso_local i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod*, i32, i32) #1

declare dso_local i32 @line6_send_sysex_message(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
