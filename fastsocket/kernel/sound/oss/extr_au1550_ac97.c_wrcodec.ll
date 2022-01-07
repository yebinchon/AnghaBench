; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_wrcodec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_wrcodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i64 }
%struct.au1550_state = type { i32 }

@POLL_COUNT = common dso_local global i32 0, align 4
@PSC_AC97STAT = common dso_local global i32 0, align 4
@PSC_AC97STAT_CP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"wrcodec: codec cmd pending expired!\00", align 1
@PSC_AC97CDC = common dso_local global i32 0, align 4
@PSC_AC97EVNT = common dso_local global i32 0, align 4
@PSC_AC97EVNT_CD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"wrcodec: read cmdwait expired!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ac97_codec*, i32, i64)* @wrcodec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrcodec(%struct.ac97_codec* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ac97_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.au1550_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ac97_codec* %0, %struct.ac97_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ac97_codec*, %struct.ac97_codec** %4, align 8
  %13 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.au1550_state*
  store %struct.au1550_state* %15, %struct.au1550_state** %7, align 8
  %16 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %17 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %34, %3
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @POLL_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, i32* @PSC_AC97STAT, align 4
  %26 = call i32 @au_readl(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = call i32 (...) @au_sync()
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PSC_AC97STAT_CP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %20

37:                                               ; preds = %32, %20
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @POLL_COUNT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @PSC_AC97CDC_INDX(i32 %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @PSC_AC97CDC, align 4
  %53 = call i32 @au_writel(i32 %51, i32 %52)
  %54 = call i32 (...) @au_sync()
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %69, %43
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @POLL_COUNT, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i32, i32* @PSC_AC97STAT, align 4
  %61 = call i32 @au_readl(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = call i32 (...) @au_sync()
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @PSC_AC97STAT_CP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %72

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %55

72:                                               ; preds = %67, %55
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @POLL_COUNT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %72
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @POLL_COUNT, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* @PSC_AC97EVNT, align 4
  %85 = call i32 @au_readl(i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = call i32 (...) @au_sync()
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %96

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %79

96:                                               ; preds = %91, %79
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @POLL_COUNT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %96
  %103 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %104 = load i32, i32* @PSC_AC97EVNT, align 4
  %105 = call i32 @au_writel(i32 %103, i32 %104)
  %106 = call i32 (...) @au_sync()
  %107 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %108 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %107, i32 0, i32 0
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i64 @PSC_AC97CDC_INDX(i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
