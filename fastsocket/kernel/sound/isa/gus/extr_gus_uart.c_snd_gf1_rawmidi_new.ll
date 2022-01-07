; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_uart.c_snd_gf1_rawmidi_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_uart.c_snd_gf1_rawmidi_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.snd_rawmidi*, i64, i32 }
%struct.snd_rawmidi = type { i32, %struct.snd_gus_card*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"GF1\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"AMD InterWave\00", align 1
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_gf1_uart_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_gf1_uart_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_rawmidi_new(%struct.snd_gus_card* %0, i32 %1, %struct.snd_rawmidi** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_gus_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_rawmidi**, align 8
  %8 = alloca %struct.snd_rawmidi*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_rawmidi** %2, %struct.snd_rawmidi*** %7, align 8
  %10 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %7, align 8
  %11 = icmp ne %struct.snd_rawmidi** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %7, align 8
  store %struct.snd_rawmidi* null, %struct.snd_rawmidi** %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %16 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @snd_rawmidi_new(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18, i32 1, i32 1, %struct.snd_rawmidi** %8)
  store i32 %19, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %14
  %24 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %25 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %28 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)
  %33 = call i32 @strcpy(i32 %26, i8* %32)
  %34 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %35 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %36 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %34, i32 %35, i32* @snd_gf1_uart_output)
  %37 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %38 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %39 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %37, i32 %38, i32* @snd_gf1_uart_input)
  %40 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %41 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %46 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %50 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %51 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %50, i32 0, i32 1
  store %struct.snd_gus_card* %49, %struct.snd_gus_card** %51, align 8
  %52 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %53 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %54 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %53, i32 0, i32 0
  store %struct.snd_rawmidi* %52, %struct.snd_rawmidi** %54, align 8
  %55 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %7, align 8
  %56 = icmp ne %struct.snd_rawmidi** %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %23
  %58 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %59 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %7, align 8
  store %struct.snd_rawmidi* %58, %struct.snd_rawmidi** %59, align 8
  br label %60

60:                                               ; preds = %57, %23
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %21
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @snd_rawmidi_new(i32, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
