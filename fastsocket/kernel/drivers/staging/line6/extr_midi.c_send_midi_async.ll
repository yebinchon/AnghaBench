; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midi.c_send_midi_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_midi.c_send_midi_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { %struct.TYPE_7__*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type { i64 }
%struct.usb_line6_pod = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@midi_sent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"usb_submit_urb failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MISSING_CASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*, i8*, i32)* @send_midi_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_midi_async(%struct.usb_line6* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_line6*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %11)
  store %struct.urb* %12, %struct.urb** %8, align 8
  %13 = load %struct.urb*, %struct.urb** %8, align 8
  %14 = icmp eq %struct.urb* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %17 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %99

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i8* @kmalloc(i32 %23, i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.urb*, %struct.urb** %8, align 8
  %30 = call i32 @usb_free_urb(%struct.urb* %29)
  %31 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %32 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %99

37:                                               ; preds = %22
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @memcpy(i8* %38, i8* %39, i32 %40)
  %42 = load %struct.urb*, %struct.urb** %8, align 8
  %43 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %44 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %47 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %50 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usb_sndbulkpipe(%struct.TYPE_7__* %48, i32 %51)
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @midi_sent, align 4
  %56 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %57 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %58 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_fill_int_urb(%struct.urb* %42, %struct.TYPE_7__* %45, i32 %52, i8* %53, i32 %54, i32 %55, %struct.usb_line6* %56, i32 %59)
  %61 = load %struct.urb*, %struct.urb** %8, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.urb*, %struct.urb** %8, align 8
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call i32 @usb_submit_urb(%struct.urb* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %37
  %69 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %70 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.urb*, %struct.urb** %8, align 8
  %74 = call i32 @usb_free_urb(%struct.urb* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %99

77:                                               ; preds = %37
  %78 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %79 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %85 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %96 [
    i32 134, label %90
    i32 133, label %90
    i32 132, label %90
    i32 130, label %90
    i32 129, label %90
    i32 128, label %90
    i32 131, label %90
  ]

90:                                               ; preds = %77, %77, %77, %77, %77, %77, %77
  %91 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %92 = bitcast %struct.usb_line6* %91 to %struct.usb_line6_pod*
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @pod_midi_postprocess(%struct.usb_line6_pod* %92, i8* %93, i32 %94)
  br label %98

96:                                               ; preds = %77
  %97 = load i32, i32* @MISSING_CASE, align 4
  br label %98

98:                                               ; preds = %96, %90
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %68, %28, %15
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, %struct.TYPE_7__*, i32, i8*, i32, i32, %struct.usb_line6*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @pod_midi_postprocess(%struct.usb_line6_pod*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
