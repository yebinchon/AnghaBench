; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_audio.c_f_audio_out_ep_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_audio.c_f_audio_out_ep_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i32, %struct.f_audio* }
%struct.f_audio = type { %struct.f_audio_buf*, i32, i32, %struct.TYPE_6__ }
%struct.f_audio_buf = type { i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@audio_buf_size = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s queue req: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*)* @f_audio_out_ep_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_audio_out_ep_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca %struct.f_audio*, align 8
  %7 = alloca %struct.usb_composite_dev*, align 8
  %8 = alloca %struct.f_audio_buf*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_request* %1, %struct.usb_request** %5, align 8
  %10 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %11 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %10, i32 0, i32 2
  %12 = load %struct.f_audio*, %struct.f_audio** %11, align 8
  store %struct.f_audio* %12, %struct.f_audio** %6, align 8
  %13 = load %struct.f_audio*, %struct.f_audio** %6, align 8
  %14 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %18, align 8
  store %struct.usb_composite_dev* %19, %struct.usb_composite_dev** %7, align 8
  %20 = load %struct.f_audio*, %struct.f_audio** %6, align 8
  %21 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %20, i32 0, i32 0
  %22 = load %struct.f_audio_buf*, %struct.f_audio_buf** %21, align 8
  store %struct.f_audio_buf* %22, %struct.f_audio_buf** %8, align 8
  %23 = load %struct.f_audio_buf*, %struct.f_audio_buf** %8, align 8
  %24 = icmp ne %struct.f_audio_buf* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %94

28:                                               ; preds = %2
  %29 = load i64, i64* @audio_buf_size, align 8
  %30 = load %struct.f_audio_buf*, %struct.f_audio_buf** %8, align 8
  %31 = getelementptr inbounds %struct.f_audio_buf, %struct.f_audio_buf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %35 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %28
  %39 = load %struct.f_audio_buf*, %struct.f_audio_buf** %8, align 8
  %40 = getelementptr inbounds %struct.f_audio_buf, %struct.f_audio_buf* %39, i32 0, i32 2
  %41 = load %struct.f_audio*, %struct.f_audio** %6, align 8
  %42 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %41, i32 0, i32 2
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  %44 = load %struct.f_audio*, %struct.f_audio** %6, align 8
  %45 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %44, i32 0, i32 1
  %46 = call i32 @schedule_work(i32* %45)
  %47 = load i64, i64* @audio_buf_size, align 8
  %48 = call %struct.f_audio_buf* @f_audio_buffer_alloc(i64 %47)
  store %struct.f_audio_buf* %48, %struct.f_audio_buf** %8, align 8
  %49 = load %struct.f_audio_buf*, %struct.f_audio_buf** %8, align 8
  %50 = icmp ult %struct.f_audio_buf* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %94

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.f_audio_buf*, %struct.f_audio_buf** %8, align 8
  %57 = getelementptr inbounds %struct.f_audio_buf, %struct.f_audio_buf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.f_audio_buf*, %struct.f_audio_buf** %8, align 8
  %60 = getelementptr inbounds %struct.f_audio_buf, %struct.f_audio_buf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %64 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %67 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memcpy(i64 %62, i32 %65, i64 %68)
  %70 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %71 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.f_audio_buf*, %struct.f_audio_buf** %8, align 8
  %74 = getelementptr inbounds %struct.f_audio_buf, %struct.f_audio_buf* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load %struct.f_audio_buf*, %struct.f_audio_buf** %8, align 8
  %78 = load %struct.f_audio*, %struct.f_audio** %6, align 8
  %79 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %78, i32 0, i32 0
  store %struct.f_audio_buf* %77, %struct.f_audio_buf** %79, align 8
  %80 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %81 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %82 = load i32, i32* @GFP_ATOMIC, align 4
  %83 = call i32 @usb_ep_queue(%struct.usb_ep* %80, %struct.usb_request* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %55
  %87 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %7, align 8
  %88 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %89 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @ERROR(%struct.usb_composite_dev* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %55
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %51, %25
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local %struct.f_audio_buf* @f_audio_buffer_alloc(i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @usb_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
