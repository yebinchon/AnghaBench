; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_stream_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_stream_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.azx_dev = type { i64* }

@SD_CTL = common dso_local global i32 0, align 4
@SD_CTL_STREAM_RESET = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*, %struct.azx_dev*)* @azx_stream_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @azx_stream_reset(%struct.azx* %0, %struct.azx_dev* %1) #0 {
  %3 = alloca %struct.azx*, align 8
  %4 = alloca %struct.azx_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %3, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %4, align 8
  %7 = load %struct.azx*, %struct.azx** %3, align 8
  %8 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %9 = call i32 @azx_stream_clear(%struct.azx* %7, %struct.azx_dev* %8)
  %10 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %11 = load i32, i32* @SD_CTL, align 4
  %12 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %13 = load i32, i32* @SD_CTL, align 4
  %14 = call zeroext i8 @azx_sd_readb(%struct.azx_dev* %12, i32 %13)
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @SD_CTL_STREAM_RESET, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = trunc i32 %18 to i8
  %20 = call i32 @azx_sd_writeb(%struct.azx_dev* %10, i32 %11, i8 zeroext %19)
  %21 = call i32 @udelay(i32 3)
  store i32 300, i32* %6, align 4
  br label %22

22:                                               ; preds = %37, %2
  %23 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %24 = load i32, i32* @SD_CTL, align 4
  %25 = call zeroext i8 @azx_sd_readb(%struct.azx_dev* %23, i32 %24)
  store i8 %25, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @SD_CTL_STREAM_RESET, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %31, %22
  %36 = phi i1 [ false, %22 ], [ %34, %31 ]
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  br label %22

38:                                               ; preds = %35
  %39 = load i8, i8* @SD_CTL_STREAM_RESET, align 1
  %40 = zext i8 %39 to i32
  %41 = xor i32 %40, -1
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %5, align 1
  %46 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %47 = load i32, i32* @SD_CTL, align 4
  %48 = load i8, i8* %5, align 1
  %49 = call i32 @azx_sd_writeb(%struct.azx_dev* %46, i32 %47, i8 zeroext %48)
  %50 = call i32 @udelay(i32 3)
  store i32 300, i32* %6, align 4
  br label %51

51:                                               ; preds = %66, %38
  %52 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %53 = load i32, i32* @SD_CTL, align 4
  %54 = call zeroext i8 @azx_sd_readb(%struct.azx_dev* %52, i32 %53)
  store i8 %54, i8* %5, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @SD_CTL_STREAM_RESET, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %60, %51
  %65 = phi i1 [ false, %51 ], [ %63, %60 ]
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  br label %51

67:                                               ; preds = %64
  %68 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %69 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  store i64 0, i64* %70, align 8
  ret void
}

declare dso_local i32 @azx_stream_clear(%struct.azx*, %struct.azx_dev*) #1

declare dso_local i32 @azx_sd_writeb(%struct.azx_dev*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @azx_sd_readb(%struct.azx_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
