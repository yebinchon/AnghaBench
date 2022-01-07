; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/pcsp/extr_pcsp_lib.c_pcsp_timer_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/pcsp/extr_pcsp_lib.c_pcsp_timer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcsp = type { i32, i32, i32, i32, i64, i64, i64, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i8* }

@i8253_lock = common dso_local global i32 0, align 4
@nforce_wa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcsp*)* @pcsp_timer_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcsp_timer_update(%struct.snd_pcsp* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pcsp*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i64, align 8
  store %struct.snd_pcsp* %0, %struct.snd_pcsp** %3, align 8
  %10 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @outb(i32 %17, i32 97)
  %19 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %2, align 8
  br label %126

24:                                               ; preds = %1
  %25 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %25, i32 0, i32 7
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %26, align 8
  store %struct.snd_pcm_substream* %27, %struct.snd_pcm_substream** %7, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %29 = icmp ne %struct.snd_pcm_substream* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i64 0, i64* %2, align 8
  br label %126

31:                                               ; preds = %24
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %33, align 8
  store %struct.snd_pcm_runtime* %34, %struct.snd_pcm_runtime** %8, align 8
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %42 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %37, i64 %46
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %5, align 1
  %49 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %31
  %54 = load i8, i8* %5, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, 128
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %5, align 1
  br label %58

58:                                               ; preds = %53, %31
  %59 = load i8, i8* %5, align 1
  %60 = zext i8 %59 to i32
  %61 = call zeroext i8 (...) @CUR_DIV()
  %62 = zext i8 %61 to i32
  %63 = mul nsw i32 %60, %62
  %64 = sdiv i32 %63, 256
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %4, align 1
  %66 = load i8, i8* %4, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %58
  %70 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %71 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %69
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_lock_irqsave(i32* @i8253_lock, i64 %75)
  %77 = load i32, i32* @nforce_wa, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %74
  %80 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %81 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = trunc i32 %82 to i8
  %84 = call i32 @outb_p(i8 zeroext %83, i32 97)
  %85 = load i8, i8* %4, align 1
  %86 = call i32 @outb_p(i8 zeroext %85, i32 66)
  %87 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %88 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %89, 1
  %91 = call i32 @outb(i32 %90, i32 97)
  br label %100

92:                                               ; preds = %74
  %93 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %94 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, 2
  %97 = call i32 @outb(i32 %96, i32 97)
  %98 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %99 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %92, %79
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* @i8253_lock, i64 %101)
  br label %103

103:                                              ; preds = %100, %69, %58
  %104 = call i64 (...) @PCSP_PERIOD_NS()
  %105 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %106 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  %107 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %108 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i8, i8* %4, align 1
  %113 = call i64 @PCSP_CALC_NS(i8 zeroext %112)
  br label %118

114:                                              ; preds = %103
  %115 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %116 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi i64 [ %113, %111 ], [ %117, %114 ]
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %122 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, %120
  store i64 %124, i64* %122, align 8
  %125 = load i64, i64* %6, align 8
  store i64 %125, i64* %2, align 8
  br label %126

126:                                              ; preds = %118, %30, %14
  %127 = load i64, i64* %2, align 8
  ret i64 %127
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local zeroext i8 @CUR_DIV(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @PCSP_PERIOD_NS(...) #1

declare dso_local i64 @PCSP_CALC_NS(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
