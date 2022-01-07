; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/aw2/extr_aw2-saa7146.c_snd_aw2_saa7146_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/aw2/extr_aw2-saa7146.c_snd_aw2_saa7146_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32)* }
%struct.TYPE_4__ = type { i32, i32 (i32)* }
%struct.snd_aw2_saa7146 = type { i32 }

@ISR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IIC_S = common dso_local global i32 0, align 4
@IIC_E = common dso_local global i32 0, align 4
@IICSTA = common dso_local global i32 0, align 4
@A1_out = common dso_local global i32 0, align 4
@arr_substream_it_playback_cb = common dso_local global %struct.TYPE_3__* null, align 8
@A2_out = common dso_local global i32 0, align 4
@A1_in = common dso_local global i32 0, align 4
@arr_substream_it_capture_cb = common dso_local global %struct.TYPE_4__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_aw2_saa7146_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_aw2_saa7146*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.snd_aw2_saa7146*
  store %struct.snd_aw2_saa7146* %10, %struct.snd_aw2_saa7146** %8, align 8
  %11 = load i32, i32* @ISR, align 4
  %12 = call i32 @READREG(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %100

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ISR, align 4
  %20 = call i32 @WRITEREG(i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @IIC_S, align 4
  %23 = load i32, i32* @IIC_E, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i32, i32* @IICSTA, align 4
  %29 = call i32 @READREG(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @IICSTA, align 4
  %31 = call i32 @WRITEREG(i32 256, i32 %30)
  br label %32

32:                                               ; preds = %27, %17
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @A1_out, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arr_substream_it_playback_cb, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = icmp ne i32 (i32)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arr_substream_it_playback_cb, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arr_substream_it_playback_cb, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %47(i32 %51)
  br label %53

53:                                               ; preds = %43, %37
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @A2_out, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arr_substream_it_playback_cb, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = icmp ne i32 (i32)* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arr_substream_it_playback_cb, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32 (i32)*, i32 (i32)** %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arr_substream_it_playback_cb, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %69(i32 %73)
  br label %75

75:                                               ; preds = %65, %59
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @A1_in, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arr_substream_it_capture_cb, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32 (i32)*, i32 (i32)** %84, align 8
  %86 = icmp ne i32 (i32)* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arr_substream_it_capture_cb, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32 (i32)*, i32 (i32)** %90, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arr_substream_it_capture_cb, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %91(i32 %95)
  br label %97

97:                                               ; preds = %87, %81
  br label %98

98:                                               ; preds = %97, %76
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %15
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @READREG(i32) #1

declare dso_local i32 @WRITEREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
