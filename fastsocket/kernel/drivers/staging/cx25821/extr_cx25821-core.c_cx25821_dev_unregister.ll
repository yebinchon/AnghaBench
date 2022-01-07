; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_dev_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_dev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32*, i32, i32, i32 }

@VID_CHANNEL_NUM = common dso_local global i32 0, align 4
@VID_UPSTREAM_SRAM_CHANNEL_I = common dso_local global i32 0, align 4
@AUDIO_UPSTREAM_SRAM_CHANNEL_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_dev_unregister(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  %4 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %64

9:                                                ; preds = %1
  %10 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %11 = call i32 @cx25821_free_mem_upstream_ch1(%struct.cx25821_dev* %10)
  %12 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %13 = call i32 @cx25821_free_mem_upstream_ch2(%struct.cx25821_dev* %12)
  %14 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %15 = call i32 @cx25821_free_mem_upstream_audio(%struct.cx25821_dev* %14)
  %16 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %17 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %20 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pci_resource_len(i32 %21, i32 0)
  %23 = call i32 @release_mem_region(i32 %18, i32 %22)
  %24 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %25 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %24, i32 0, i32 1
  %26 = call i32 @atomic_dec_and_test(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %9
  br label %64

29:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %38, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @VID_CHANNEL_NUM, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @cx25821_video_unregister(%struct.cx25821_dev* %35, i32 %36)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %30

41:                                               ; preds = %30
  %42 = load i32, i32* @VID_UPSTREAM_SRAM_CHANNEL_I, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %51, %41
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @AUDIO_UPSTREAM_SRAM_CHANNEL_B, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @cx25821_video_unregister(%struct.cx25821_dev* %48, i32 %49)
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %43

54:                                               ; preds = %43
  %55 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %56 = call i32 @cx25821_videoioctl_unregister(%struct.cx25821_dev* %55)
  %57 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %58 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @cx25821_i2c_unregister(i32* %60)
  %62 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %63 = call i32 @cx25821_iounmap(%struct.cx25821_dev* %62)
  br label %64

64:                                               ; preds = %54, %28, %8
  ret void
}

declare dso_local i32 @cx25821_free_mem_upstream_ch1(%struct.cx25821_dev*) #1

declare dso_local i32 @cx25821_free_mem_upstream_ch2(%struct.cx25821_dev*) #1

declare dso_local i32 @cx25821_free_mem_upstream_audio(%struct.cx25821_dev*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @cx25821_video_unregister(%struct.cx25821_dev*, i32) #1

declare dso_local i32 @cx25821_videoioctl_unregister(%struct.cx25821_dev*) #1

declare dso_local i32 @cx25821_i2c_unregister(i32*) #1

declare dso_local i32 @cx25821_iounmap(%struct.cx25821_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
