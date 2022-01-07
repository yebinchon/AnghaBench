; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_capture.c_snd_line6_capture_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_capture.c_snd_line6_capture_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_line6_pcm = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LINE6_ISO_BUFFERS = common dso_local global i32 0, align 4
@LINE6_ISO_PACKETS = common dso_local global i32 0, align 4
@LINE6_ISO_PACKET_SIZE_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot malloc buffer_in\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_line6_capture_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_line6_capture_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_line6_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_line6_pcm* %9, %struct.snd_line6_pcm** %7, align 8
  %10 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %7, align 8
  %11 = icmp eq %struct.snd_line6_pcm* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %74

20:                                               ; preds = %12
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %74

30:                                               ; preds = %20
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %39 = call %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %38)
  store %struct.snd_line6_pcm* %39, %struct.snd_line6_pcm** %7, align 8
  br label %40

40:                                               ; preds = %30, %2
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %43 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %42)
  %44 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %41, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %40
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %51 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %50)
  %52 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %7, align 8
  %53 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @LINE6_ISO_BUFFERS, align 4
  %55 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* @LINE6_ISO_PACKET_SIZE_MAX, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @kmalloc(i32 %58, i32 %59)
  %61 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %7, align 8
  %62 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %7, align 8
  %64 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %49
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %69 = call i32 @s2m(%struct.snd_pcm_substream* %68)
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %67, %47, %27, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @s2m(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
