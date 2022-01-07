; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als300.c_snd_als300plus_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als300.c_snd_als300plus_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_als300 = type { %struct.TYPE_4__*, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_als300_substream_data* }
%struct.snd_als300_substream_data = type { i32 }

@ALS300P_IRQ_STATUS = common dso_local global i64 0, align 8
@MPU_IRQ_STATUS = common dso_local global i64 0, align 8
@ALS300P_DRAM_IRQ_STATUS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"IRQ_PLAYBACK\0A\00", align 1
@IRQ_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"IRQ_CAPTURE\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_als300plus_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300plus_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_als300*, align 8
  %10 = alloca %struct.snd_als300_substream_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.snd_als300*
  store %struct.snd_als300* %12, %struct.snd_als300** %9, align 8
  %13 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %14 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ALS300P_IRQ_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inb(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %20 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MPU_IRQ_STATUS, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inb(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %26 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ALS300P_DRAM_IRQ_STATUS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @inb(i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %3, align 4
  br label %125

43:                                               ; preds = %37, %33, %2
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @IRQ_PLAYBACK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %43
  %49 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %50 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %48
  %54 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %55 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %82

58:                                               ; preds = %53
  %59 = load i32, i32* @IRQ_PLAYBACK, align 4
  %60 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %61 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ALS300P_IRQ_STATUS, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i32 %59, i64 %64)
  %66 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %67 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %71, align 8
  store %struct.snd_als300_substream_data* %72, %struct.snd_als300_substream_data** %10, align 8
  %73 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %10, align 8
  %74 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %78 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_4__* %79)
  %81 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %58, %53, %48
  br label %83

83:                                               ; preds = %82, %43
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @IRQ_CAPTURE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %123

88:                                               ; preds = %83
  %89 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %90 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %88
  %94 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %95 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %98, label %122

98:                                               ; preds = %93
  %99 = load i32, i32* @IRQ_CAPTURE, align 4
  %100 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %101 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ALS300P_IRQ_STATUS, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb(i32 %99, i64 %104)
  %106 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %107 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %111, align 8
  store %struct.snd_als300_substream_data* %112, %struct.snd_als300_substream_data** %10, align 8
  %113 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %10, align 8
  %114 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.snd_als300*, %struct.snd_als300** %9, align 8
  %118 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_4__* %119)
  %121 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %98, %93, %88
  br label %123

123:                                              ; preds = %122, %83
  %124 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %41
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_4__*) #1

declare dso_local i32 @snd_als300_dbgplay(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
