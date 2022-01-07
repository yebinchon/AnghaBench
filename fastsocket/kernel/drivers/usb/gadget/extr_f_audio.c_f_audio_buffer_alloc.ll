; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_audio.c_f_audio_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_audio.c_f_audio_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_audio_buf = type { i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f_audio_buf* (i32)* @f_audio_buffer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f_audio_buf* @f_audio_buffer_alloc(i32 %0) #0 {
  %2 = alloca %struct.f_audio_buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.f_audio_buf*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call i8* @kzalloc(i32 8, i32 %5)
  %7 = bitcast i8* %6 to %struct.f_audio_buf*
  store %struct.f_audio_buf* %7, %struct.f_audio_buf** %4, align 8
  %8 = load %struct.f_audio_buf*, %struct.f_audio_buf** %4, align 8
  %9 = icmp ne %struct.f_audio_buf* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @ENOMEM, align 8
  %12 = sub nsw i64 0, %11
  %13 = inttoptr i64 %12 to %struct.f_audio_buf*
  store %struct.f_audio_buf* %13, %struct.f_audio_buf** %2, align 8
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  %18 = load %struct.f_audio_buf*, %struct.f_audio_buf** %4, align 8
  %19 = getelementptr inbounds %struct.f_audio_buf, %struct.f_audio_buf* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.f_audio_buf*, %struct.f_audio_buf** %4, align 8
  %21 = getelementptr inbounds %struct.f_audio_buf, %struct.f_audio_buf* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %14
  %25 = load %struct.f_audio_buf*, %struct.f_audio_buf** %4, align 8
  %26 = call i32 @kfree(%struct.f_audio_buf* %25)
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = sub nsw i64 0, %27
  %29 = inttoptr i64 %28 to %struct.f_audio_buf*
  store %struct.f_audio_buf* %29, %struct.f_audio_buf** %2, align 8
  br label %32

30:                                               ; preds = %14
  %31 = load %struct.f_audio_buf*, %struct.f_audio_buf** %4, align 8
  store %struct.f_audio_buf* %31, %struct.f_audio_buf** %2, align 8
  br label %32

32:                                               ; preds = %30, %24, %10
  %33 = load %struct.f_audio_buf*, %struct.f_audio_buf** %2, align 8
  ret %struct.f_audio_buf* %33
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.f_audio_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
