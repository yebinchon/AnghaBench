; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_waitcodec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_waitcodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i32 }

@POLL_COUNT = common dso_local global i32 0, align 4
@PSC_AC97STAT = common dso_local global i32 0, align 4
@PSC_AC97STAT_CR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"waitcodec: CODEC_READY poll expired!\00", align 1
@AC97_POWER_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"codec reg 26 status (0x%x) not ready!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ac97_codec*)* @waitcodec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waitcodec(%struct.ac97_codec* %0) #0 {
  %2 = alloca %struct.ac97_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ac97_codec* %0, %struct.ac97_codec** %2, align 8
  %6 = call i32 @au1550_delay(i32 10)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @POLL_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load i32, i32* @PSC_AC97STAT, align 4
  %13 = call i32 @au_readl(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = call i32 (...) @au_sync()
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PSC_AC97STAT_CR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %24

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

24:                                               ; preds = %19, %7
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @POLL_COUNT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %52

30:                                               ; preds = %24
  %31 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %32 = load i32, i32* @AC97_POWER_CONTROL, align 4
  %33 = call i32 @rdcodec(%struct.ac97_codec* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 32512
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %39 = load i32, i32* @AC97_POWER_CONTROL, align 4
  %40 = call i32 @wrcodec(%struct.ac97_codec* %38, i32 %39, i32 0)
  %41 = call i32 @au1550_delay(i32 100)
  %42 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %43 = load i32, i32* @AC97_POWER_CONTROL, align 4
  %44 = call i32 @rdcodec(%struct.ac97_codec* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %30
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 32527
  %48 = icmp ne i32 %47, 15
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %28, %49, %45
  ret void
}

declare dso_local i32 @au1550_delay(i32) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @rdcodec(%struct.ac97_codec*, i32) #1

declare dso_local i32 @wrcodec(%struct.ac97_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
