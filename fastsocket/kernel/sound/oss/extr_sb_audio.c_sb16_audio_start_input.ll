; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_audio.c_sb16_audio_start_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_audio.c_sb16_audio_start_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i8*, i8*, i32 }

@audio_devs = common dso_local global %struct.TYPE_5__** null, align 8
@AFMT_S16_LE = common dso_local global i64 0, align 8
@IMODE_INPUT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @sb16_audio_start_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb16_audio_start_input(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @audio_devs, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %12, i64 %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %11, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AFMT_S16_LE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23, %4
  %30 = load i8*, i8** @IMODE_INPUT, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  br label %41

35:                                               ; preds = %23
  %36 = load i8*, i8** @IMODE_INPUT, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %10, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AFMT_S16_LE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i64, i64* %10, align 8
  %51 = lshr i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %49, %41
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %10, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %60 = call i32 @sb_dsp_command(%struct.TYPE_4__* %59, i8 zeroext 66)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = trunc i32 %66 to i8
  %68 = call i32 @sb_dsp_command(%struct.TYPE_4__* %61, i8 zeroext %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = call i32 @sb_dsp_command(%struct.TYPE_4__* %69, i8 zeroext %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AFMT_S16_LE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 190, i32 206
  %84 = trunc i32 %83 to i8
  %85 = call i32 @sb_dsp_command(%struct.TYPE_4__* %76, i8 zeroext %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 32, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AFMT_S16_LE, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 16, i32 0
  %100 = add nsw i32 %92, %99
  %101 = trunc i32 %100 to i8
  %102 = call i32 @sb_dsp_command(%struct.TYPE_4__* %86, i8 zeroext %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = and i64 %104, 255
  %106 = trunc i64 %105 to i8
  %107 = call i32 @sb_dsp_command(%struct.TYPE_4__* %103, i8 zeroext %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %109 = load i64, i64* %10, align 8
  %110 = lshr i64 %109, 8
  %111 = trunc i64 %110 to i8
  %112 = call i32 @sb_dsp_command(%struct.TYPE_4__* %108, i8 zeroext %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sb_dsp_command(%struct.TYPE_4__*, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
