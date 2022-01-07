; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_data_received.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_data_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i64 }
%struct.usb_line6 = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.MidiBuffer }
%struct.MidiBuffer = type { i32 }
%struct.usb_line6_pod = type { i32 }
%struct.usb_line6_variax = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%d %d buffer overflow - message skipped\0A\00", align 1
@LINE6_MESSAGE_MAXLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"PODxt Live interface %d not supported\0A\00", align 1
@MISSING_CASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @line6_data_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_data_received(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca %struct.MidiBuffer*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.usb_line6*
  store %struct.usb_line6* %9, %struct.usb_line6** %3, align 8
  %10 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %11 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.MidiBuffer* %13, %struct.MidiBuffer** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ESHUTDOWN, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %120

21:                                               ; preds = %1
  %22 = load %struct.MidiBuffer*, %struct.MidiBuffer** %4, align 8
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.urb*, %struct.urb** %2, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @midibuf_write(%struct.MidiBuffer* %22, i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %21
  %36 = load %struct.MidiBuffer*, %struct.MidiBuffer** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @midibuf_ignore(%struct.MidiBuffer* %36, i32 %37)
  %39 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %40 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.urb*, %struct.urb** %2, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = call i32 @DEBUG_MESSAGES(i32 %46)
  br label %48

48:                                               ; preds = %35, %21
  br label %49

49:                                               ; preds = %116, %68, %48
  %50 = load %struct.MidiBuffer*, %struct.MidiBuffer** %4, align 8
  %51 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %52 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @LINE6_MESSAGE_MAXLEN, align 4
  %55 = call i32 @midibuf_read(%struct.MidiBuffer* %50, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %117

59:                                               ; preds = %49
  %60 = load %struct.MidiBuffer*, %struct.MidiBuffer** %4, align 8
  %61 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %62 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %61, i32 0, i32 5
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @midibuf_skip_message(%struct.MidiBuffer* %60, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %49

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %72 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %74 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %75 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @line6_midi_receive(%struct.usb_line6* %73, i32 %76, i32 %77)
  %79 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %80 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %114 [
    i32 137, label %85
    i32 136, label %85
    i32 135, label %85
    i32 133, label %85
    i32 131, label %85
    i32 134, label %85
    i32 132, label %89
    i32 130, label %110
  ]

85:                                               ; preds = %69, %69, %69, %69, %69, %69
  %86 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %87 = bitcast %struct.usb_line6* %86 to %struct.usb_line6_pod*
  %88 = call i32 @pod_process_message(%struct.usb_line6_pod* %87)
  br label %116

89:                                               ; preds = %69
  %90 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %91 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %101 [
    i32 129, label %93
    i32 128, label %97
  ]

93:                                               ; preds = %89
  %94 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %95 = bitcast %struct.usb_line6* %94 to %struct.usb_line6_pod*
  %96 = call i32 @pod_process_message(%struct.usb_line6_pod* %95)
  br label %109

97:                                               ; preds = %89
  %98 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %99 = bitcast %struct.usb_line6* %98 to %struct.usb_line6_variax*
  %100 = call i32 @variax_process_message(%struct.usb_line6_variax* %99)
  br label %109

101:                                              ; preds = %89
  %102 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %103 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %106 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %101, %97, %93
  br label %116

110:                                              ; preds = %69
  %111 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %112 = bitcast %struct.usb_line6* %111 to %struct.usb_line6_variax*
  %113 = call i32 @variax_process_message(%struct.usb_line6_variax* %112)
  br label %116

114:                                              ; preds = %69
  %115 = load i32, i32* @MISSING_CASE, align 4
  br label %116

116:                                              ; preds = %114, %110, %109, %85
  br label %49

117:                                              ; preds = %58
  %118 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %119 = call i32 @line6_start_listen(%struct.usb_line6* %118)
  br label %120

120:                                              ; preds = %117, %20
  ret void
}

declare dso_local i32 @midibuf_write(%struct.MidiBuffer*, i32, i32) #1

declare dso_local i32 @midibuf_ignore(%struct.MidiBuffer*, i32) #1

declare dso_local i32 @DEBUG_MESSAGES(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @midibuf_read(%struct.MidiBuffer*, i32, i32) #1

declare dso_local i64 @midibuf_skip_message(%struct.MidiBuffer*, i32) #1

declare dso_local i32 @line6_midi_receive(%struct.usb_line6*, i32, i32) #1

declare dso_local i32 @pod_process_message(%struct.usb_line6_pod*) #1

declare dso_local i32 @variax_process_message(%struct.usb_line6_variax*) #1

declare dso_local i32 @line6_start_listen(%struct.usb_line6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
