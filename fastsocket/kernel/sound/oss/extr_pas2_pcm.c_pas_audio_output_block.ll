; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_pcm.c_pas_audio_output_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_pcm.c_pas_audio_output_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [80 x i8] c"pas2_pcm.c: static void pas_audio_output_block(char *buf = %P, int count = %X)\0A\00", align 1
@audio_devs = common dso_local global %struct.TYPE_4__** null, align 8
@DMA_AUTOMODE = common dso_local global i32 0, align 4
@pcm_count = common dso_local global i64 0, align 8
@pas_lock = common dso_local global i32 0, align 4
@PCM_DAC = common dso_local global i32 0, align 4
@pcm_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @pas_audio_output_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pas_audio_output_block(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @printk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %12)
  %14 = call i32 @DEB(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %10, align 8
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* %10, align 8
  %29 = lshr i64 %28, 1
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %27, %4
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DMA_AUTOMODE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @pcm_count, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %98

49:                                               ; preds = %44, %41, %30
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_lock_irqsave(i32* @pas_lock, i64 %50)
  %52 = call i32 @pas_read(i32 3978)
  %53 = and i32 %52, -65
  %54 = call i32 @pas_write(i32 %53, i32 3978)
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 3
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %49
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @pcm_count, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = call i32 @pas_read(i32 2954)
  %75 = and i32 %74, -129
  %76 = call i32 @pas_write(i32 %75, i32 2954)
  %77 = call i32 @pas_write(i32 116, i32 5003)
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 255
  %80 = call i32 @pas_write(i32 %79, i32 5001)
  %81 = load i32, i32* %7, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = call i32 @pas_write(i32 %83, i32 5001)
  %85 = call i32 @pas_read(i32 2954)
  %86 = or i32 %85, 128
  %87 = call i32 @pas_write(i32 %86, i32 2954)
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* @pcm_count, align 8
  br label %90

90:                                               ; preds = %73, %68
  %91 = call i32 @pas_read(i32 2954)
  %92 = or i32 %91, 128
  %93 = or i32 %92, 64
  %94 = call i32 @pas_write(i32 %93, i32 2954)
  %95 = load i32, i32* @PCM_DAC, align 4
  store i32 %95, i32* @pcm_mode, align 4
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* @pas_lock, i64 %96)
  br label %98

98:                                               ; preds = %90, %48
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
