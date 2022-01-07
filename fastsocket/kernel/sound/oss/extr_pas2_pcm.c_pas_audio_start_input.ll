; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_pcm.c_pas_audio_start_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_pcm.c_pas_audio_start_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"pas2_pcm.c: static void pas_audio_start_input(char *buf = %P, int count = %X)\0A\00", align 1
@audio_devs = common dso_local global %struct.TYPE_4__** null, align 8
@pas_audiodev = common dso_local global i64 0, align 8
@DMA_AUTOMODE = common dso_local global i32 0, align 4
@pcm_count = common dso_local global i32 0, align 4
@pas_lock = common dso_local global i32 0, align 4
@PCM_ADC = common dso_local global i32 0, align 4
@pcm_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @pas_audio_start_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pas_audio_start_input(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %12)
  %14 = call i32 @DEB(i32 %13)
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26, %4
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %31 = load i64, i64* @pas_audiodev, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DMA_AUTOMODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @pcm_count, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %91

47:                                               ; preds = %42, %39, %29
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_lock_irqsave(i32* @pas_lock, i64 %48)
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 3
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %47
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @pcm_count, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = call i32 @pas_read(i32 2954)
  %69 = and i32 %68, -129
  %70 = call i32 @pas_write(i32 %69, i32 2954)
  %71 = call i32 @pas_write(i32 116, i32 5003)
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @pas_write(i32 %73, i32 5001)
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 8
  %77 = and i32 %76, 255
  %78 = call i32 @pas_write(i32 %77, i32 5001)
  %79 = call i32 @pas_read(i32 2954)
  %80 = or i32 %79, 128
  %81 = call i32 @pas_write(i32 %80, i32 2954)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* @pcm_count, align 4
  br label %83

83:                                               ; preds = %67, %63
  %84 = call i32 @pas_read(i32 2954)
  %85 = or i32 %84, 128
  %86 = or i32 %85, 64
  %87 = call i32 @pas_write(i32 %86, i32 2954)
  %88 = load i32, i32* @PCM_ADC, align 4
  store i32 %88, i32* @pcm_mode, align 4
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* @pas_lock, i64 %89)
  br label %91

91:                                               ; preds = %83, %46
  ret void
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printk(i8*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pas_write(i32, i32) #1

declare dso_local i32 @pas_read(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
