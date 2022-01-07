; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_rdcodec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_rdcodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i64 }
%struct.au1550_state = type { i32 }

@POLL_COUNT = common dso_local global i32 0, align 4
@PSC_AC97STAT = common dso_local global i32 0, align 4
@PSC_AC97STAT_CP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rdcodec: codec cmd pending expired!\00", align 1
@PSC_AC97CDC_RD = common dso_local global i32 0, align 4
@PSC_AC97CDC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"rdcodec: read poll expired!\00", align 1
@PSC_AC97EVNT = common dso_local global i32 0, align 4
@PSC_AC97EVNT_CD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"rdcodec: read cmdwait expired!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*, i32)* @rdcodec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdcodec(%struct.ac97_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.ac97_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au1550_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ac97_codec* %0, %struct.ac97_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %12 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.au1550_state*
  store %struct.au1550_state* %14, %struct.au1550_state** %5, align 8
  %15 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %16 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %33, %2
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @POLL_COUNT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32, i32* @PSC_AC97STAT, align 4
  %25 = call i32 @au_readl(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = call i32 (...) @au_sync()
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PSC_AC97STAT_CP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %19

36:                                               ; preds = %31, %19
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @POLL_COUNT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @PSC_AC97CDC_INDX(i32 %43)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @PSC_AC97CDC_RD, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @PSC_AC97CDC, align 4
  %51 = call i32 @au_writel(i32 %49, i32 %50)
  %52 = call i32 (...) @au_sync()
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %67, %42
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @POLL_COUNT, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i32, i32* @PSC_AC97STAT, align 4
  %59 = call i32 @au_readl(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = call i32 (...) @au_sync()
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @PSC_AC97STAT_CP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %70

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %53

70:                                               ; preds = %65, %53
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @POLL_COUNT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %109

76:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @POLL_COUNT, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i32, i32* @PSC_AC97EVNT, align 4
  %83 = call i32 @au_readl(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = call i32 (...) @au_sync()
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %94

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %77

94:                                               ; preds = %89, %77
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @POLL_COUNT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %109

100:                                              ; preds = %94
  %101 = load i32, i32* @PSC_AC97CDC, align 4
  %102 = call i32 @au_readl(i32 %101)
  %103 = and i32 %102, 65535
  store i32 %103, i32* %9, align 4
  %104 = call i32 (...) @au_sync()
  %105 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %106 = load i32, i32* @PSC_AC97EVNT, align 4
  %107 = call i32 @au_writel(i32 %105, i32 %106)
  %108 = call i32 (...) @au_sync()
  br label %109

109:                                              ; preds = %100, %98, %74
  %110 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %111 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %110, i32 0, i32 0
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load i32, i32* %9, align 4
  ret i32 %114
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
