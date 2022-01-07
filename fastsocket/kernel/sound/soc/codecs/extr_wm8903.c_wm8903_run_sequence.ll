; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_run_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_run_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@WM8903_WRITE_SEQUENCER_0 = common dso_local global i32 0, align 4
@WM8903_WSEQ_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting sequence at %d\0A\00", align 1
@WM8903_WRITE_SEQUENCER_3 = common dso_local global i32 0, align 4
@WM8903_WSEQ_START = common dso_local global i32 0, align 4
@WM8903_WRITE_SEQUENCER_4 = common dso_local global i32 0, align 4
@WM8903_WSEQ_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Sequence complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8903_run_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_run_sequence(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %7, i32 0, i32 0
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ugt i32 %10, 48
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %15 = load i32, i32* @WM8903_WRITE_SEQUENCER_0, align 4
  %16 = call i32 @snd_soc_read(%struct.snd_soc_codec* %14, i32 %15)
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load i32, i32* @WM8903_WSEQ_ENA, align 4
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 16
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %23 = load i32, i32* @WM8903_WRITE_SEQUENCER_0, align 4
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = call i32 @snd_soc_write(%struct.snd_soc_codec* %22, i32 %23, i32 %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %32 = load i32, i32* @WM8903_WRITE_SEQUENCER_3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @WM8903_WSEQ_START, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @snd_soc_write(%struct.snd_soc_codec* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %43, %2
  %38 = call i32 @msleep(i32 10)
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %40 = load i32, i32* @WM8903_WRITE_SEQUENCER_4, align 4
  %41 = call i32 @snd_soc_read(%struct.snd_soc_codec* %39, i32 %40)
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  store i32 %41, i32* %42, align 16
  br label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %45 = load i32, i32* %44, align 16
  %46 = load i32, i32* @WM8903_WSEQ_BUSY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %37, label %49

49:                                               ; preds = %43
  %50 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %54 = load i32, i32* @WM8903_WRITE_SEQUENCER_0, align 4
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = load i32, i32* @WM8903_WSEQ_ENA, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 @snd_soc_write(%struct.snd_soc_codec* %53, i32 %54, i32 %59)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
