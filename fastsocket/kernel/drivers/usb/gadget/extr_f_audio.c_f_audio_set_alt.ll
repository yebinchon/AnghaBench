; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_audio.c_f_audio_set_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_audio.c_f_audio_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_audio = type { i32, i32, %struct.f_audio_buf*, i32, %struct.usb_ep* }
%struct.f_audio_buf = type { i32 }
%struct.usb_ep = type { i32, %struct.f_audio* }
%struct.usb_request = type { i32, %struct.f_audio*, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"intf %d, alt %d\0A\00", align 1
@audio_buf_size = common dso_local global i32 0, align 4
@req_count = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@req_buf_size = common dso_local global i32 0, align 4
@f_audio_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s queue req: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @f_audio_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_audio_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.f_audio*, align 8
  %8 = alloca %struct.usb_composite_dev*, align 8
  %9 = alloca %struct.usb_ep*, align 8
  %10 = alloca %struct.usb_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.f_audio_buf*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %15 = call %struct.f_audio* @func_to_audio(%struct.usb_function* %14)
  store %struct.f_audio* %15, %struct.f_audio** %7, align 8
  %16 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %17 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %19, align 8
  store %struct.usb_composite_dev* %20, %struct.usb_composite_dev** %8, align 8
  %21 = load %struct.f_audio*, %struct.f_audio** %7, align 8
  %22 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %21, i32 0, i32 4
  %23 = load %struct.usb_ep*, %struct.usb_ep** %22, align 8
  store %struct.usb_ep* %23, %struct.usb_ep** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @DBG(%struct.usb_composite_dev* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %124

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %107

33:                                               ; preds = %30
  %34 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %35 = load %struct.f_audio*, %struct.f_audio** %7, align 8
  %36 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_ep_enable(%struct.usb_ep* %34, i32 %37)
  %39 = load %struct.f_audio*, %struct.f_audio** %7, align 8
  %40 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %41 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %40, i32 0, i32 1
  store %struct.f_audio* %39, %struct.f_audio** %41, align 8
  %42 = load i32, i32* @audio_buf_size, align 4
  %43 = call %struct.f_audio_buf* @f_audio_buffer_alloc(i32 %42)
  %44 = load %struct.f_audio*, %struct.f_audio** %7, align 8
  %45 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %44, i32 0, i32 2
  store %struct.f_audio_buf* %43, %struct.f_audio_buf** %45, align 8
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %103, %33
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @req_count, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i1 [ false, %46 ], [ %52, %50 ]
  br i1 %54, label %55, label %106

55:                                               ; preds = %53
  %56 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call %struct.usb_request* @usb_ep_alloc_request(%struct.usb_ep* %56, i32 %57)
  store %struct.usb_request* %58, %struct.usb_request** %10, align 8
  %59 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  %60 = icmp ne %struct.usb_request* %59, null
  br i1 %60, label %61, label %99

61:                                               ; preds = %55
  %62 = load i32, i32* @req_buf_size, align 4
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i64 @kzalloc(i32 %62, i32 %63)
  %65 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  %66 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  %68 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %61
  %72 = load i32, i32* @req_buf_size, align 4
  %73 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  %74 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.f_audio*, %struct.f_audio** %7, align 8
  %76 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  %77 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %76, i32 0, i32 1
  store %struct.f_audio* %75, %struct.f_audio** %77, align 8
  %78 = load i32, i32* @f_audio_complete, align 4
  %79 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  %80 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %82 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  %83 = load i32, i32* @GFP_ATOMIC, align 4
  %84 = call i32 @usb_ep_queue(%struct.usb_ep* %81, %struct.usb_request* %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %71
  %88 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %89 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %90 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @ERROR(%struct.usb_composite_dev* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %71
  br label %98

95:                                               ; preds = %61
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %95, %94
  br label %102

99:                                               ; preds = %55
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %99, %98
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %46

106:                                              ; preds = %53
  br label %123

107:                                              ; preds = %30
  %108 = load %struct.f_audio*, %struct.f_audio** %7, align 8
  %109 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %108, i32 0, i32 2
  %110 = load %struct.f_audio_buf*, %struct.f_audio_buf** %109, align 8
  store %struct.f_audio_buf* %110, %struct.f_audio_buf** %13, align 8
  %111 = load %struct.f_audio_buf*, %struct.f_audio_buf** %13, align 8
  %112 = icmp ne %struct.f_audio_buf* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load %struct.f_audio_buf*, %struct.f_audio_buf** %13, align 8
  %115 = getelementptr inbounds %struct.f_audio_buf, %struct.f_audio_buf* %114, i32 0, i32 0
  %116 = load %struct.f_audio*, %struct.f_audio** %7, align 8
  %117 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %116, i32 0, i32 1
  %118 = call i32 @list_add_tail(i32* %115, i32* %117)
  %119 = load %struct.f_audio*, %struct.f_audio** %7, align 8
  %120 = getelementptr inbounds %struct.f_audio, %struct.f_audio* %119, i32 0, i32 0
  %121 = call i32 @schedule_work(i32* %120)
  br label %122

122:                                              ; preds = %113, %107
  br label %123

123:                                              ; preds = %122, %106
  br label %124

124:                                              ; preds = %123, %3
  %125 = load i32, i32* %12, align 4
  ret i32 %125
}

declare dso_local %struct.f_audio* @func_to_audio(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32, i32) #1

declare dso_local i32 @usb_ep_enable(%struct.usb_ep*, i32) #1

declare dso_local %struct.f_audio_buf* @f_audio_buffer_alloc(i32) #1

declare dso_local %struct.usb_request* @usb_ep_alloc_request(%struct.usb_ep*, i32) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @usb_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
