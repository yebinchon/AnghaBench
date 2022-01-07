; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_audio.c_sb16_audio_output_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_audio.c_sb16_audio_output_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i64, i8*, i8* }

@audio_devs = common dso_local global %struct.TYPE_5__** null, align 8
@AFMT_S16_LE = common dso_local global i64 0, align 8
@IMODE_OUTPUT = common dso_local global i8* null, align 8
@AFMT_U8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @sb16_audio_output_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb16_audio_output_block(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @audio_devs, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %13, i64 %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %11, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AFMT_S16_LE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24, %4
  %31 = load i8*, i8** @IMODE_OUTPUT, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  br label %42

36:                                               ; preds = %24
  %37 = load i8*, i8** @IMODE_OUTPUT, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %42
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AFMT_S16_LE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* @AFMT_U8, align 8
  br label %64

62:                                               ; preds = %54
  %63 = load i64, i64* @AFMT_S16_LE, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %42
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %10, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AFMT_S16_LE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i64, i64* %10, align 8
  %82 = lshr i64 %81, 1
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %80, %68
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %10, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 5
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %91 = call i32 @sb_dsp_command(%struct.TYPE_4__* %90, i8 zeroext 65)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = ashr i32 %95, 8
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = call i32 @sb_dsp_command(%struct.TYPE_4__* %92, i8 zeroext %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 255
  %105 = trunc i32 %104 to i8
  %106 = call i32 @sb_dsp_command(%struct.TYPE_4__* %100, i8 zeroext %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @AFMT_S16_LE, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 182, i32 198
  %115 = trunc i32 %114 to i8
  %116 = call i32 @sb_dsp_command(%struct.TYPE_4__* %107, i8 zeroext %115)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 2
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 32, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AFMT_S16_LE, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 16, i32 0
  %131 = add nsw i32 %123, %130
  %132 = trunc i32 %131 to i8
  %133 = call i32 @sb_dsp_command(%struct.TYPE_4__* %117, i8 zeroext %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %135 = load i64, i64* %10, align 8
  %136 = and i64 %135, 255
  %137 = trunc i64 %136 to i8
  %138 = call i32 @sb_dsp_command(%struct.TYPE_4__* %134, i8 zeroext %137)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %140 = load i64, i64* %10, align 8
  %141 = lshr i64 %140, 8
  %142 = trunc i64 %141 to i8
  %143 = call i32 @sb_dsp_command(%struct.TYPE_4__* %139, i8 zeroext %142)
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sb_dsp_command(%struct.TYPE_4__*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
