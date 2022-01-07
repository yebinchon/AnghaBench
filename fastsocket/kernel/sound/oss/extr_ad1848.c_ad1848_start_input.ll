; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_start_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_start_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@audio_devs = common dso_local global %struct.TYPE_8__** null, align 8
@AFMT_IMA_ADPCM = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@AFMT_S16_BE = common dso_local global i32 0, align 4
@PCM_ENABLE_INPUT = common dso_local global i32 0, align 4
@DMA_AUTOMODE = common dso_local global i32 0, align 4
@MD_1848 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @ad1848_start_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1848_start_input(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @audio_devs, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %13, i64 %15
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %11, align 8
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @audio_devs, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %12, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AFMT_IMA_ADPCM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i64, i64* %10, align 8
  %38 = udiv i64 %37, 4
  store i64 %38, i64* %10, align 8
  br label %52

39:                                               ; preds = %4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AFMT_S16_LE, align 4
  %44 = load i32, i32* @AFMT_S16_BE, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i64, i64* %10, align 8
  %50 = lshr i64 %49, 1
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %48, %39
  br label %52

52:                                               ; preds = %51, %36
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i64, i64* %10, align 8
  %59 = lshr i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %10, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %60
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @audio_devs, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %70, i64 %72
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @DMA_AUTOMODE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %69
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  br label %148

97:                                               ; preds = %83, %80, %69, %60
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MD_1848, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %97
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %109 = load i64, i64* %10, align 8
  %110 = and i64 %109, 255
  %111 = trunc i64 %110 to i8
  %112 = call i32 @ad_write(%struct.TYPE_7__* %108, i32 15, i8 zeroext %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %114 = load i64, i64* %10, align 8
  %115 = lshr i64 %114, 8
  %116 = and i64 %115, 255
  %117 = trunc i64 %116 to i8
  %118 = call i32 @ad_write(%struct.TYPE_7__* %113, i32 14, i8 zeroext %117)
  br label %131

119:                                              ; preds = %97
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = and i64 %121, 255
  %123 = trunc i64 %122 to i8
  %124 = call i32 @ad_write(%struct.TYPE_7__* %120, i32 31, i8 zeroext %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %126 = load i64, i64* %10, align 8
  %127 = lshr i64 %126, 8
  %128 = and i64 %127, 255
  %129 = trunc i64 %128 to i8
  %130 = call i32 @ad_write(%struct.TYPE_7__* %125, i32 30, i8 zeroext %129)
  br label %131

131:                                              ; preds = %119, %107
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %133 = call i32 @ad_unmute(%struct.TYPE_7__* %132)
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  store i32 1, i32* %143, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 4
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  br label %148

148:                                              ; preds = %131, %89
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ad_write(%struct.TYPE_7__*, i32, i8 zeroext) #1

declare dso_local i32 @ad_unmute(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
