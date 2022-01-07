; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_snd_ps3.c_snd_ps3_program_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_snd_ps3.c_snd_ps3_program_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ps3_card_info = type { i32, i32, i8** }

@PS3_AUDIO_KICK_EVENT_ALWAYS = common dso_local global i32 0, align 4
@PS3_AUDIO_KICK_EVENT_SERIALOUT0_EMPTY = common dso_local global i32 0, align 4
@PS3_AUDIO_SOURCE_TARGET_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@PS3_AUDIO_DEST_TARGET_AUDIOFIFO = common dso_local global i32 0, align 4
@PS3_AUDIO_DMAC_BLOCK_SIZE = common dso_local global i32 0, align 4
@PS3_AUDIO_KICK_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ps3_card_info*, i32)* @snd_ps3_program_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ps3_program_dma(%struct.snd_ps3_card_info* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ps3_card_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.snd_ps3_card_info* %0, %struct.snd_ps3_card_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 131, label %16
    i32 128, label %18
    i32 130, label %19
  ]

15:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  br label %16

16:                                               ; preds = %2, %15
  %17 = load i32, i32* @PS3_AUDIO_KICK_EVENT_ALWAYS, align 4
  store i32 %17, i32* %10, align 4
  br label %21

18:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  br label %19

19:                                               ; preds = %2, %18
  %20 = load i32, i32* @PS3_AUDIO_KICK_EVENT_SERIALOUT0_EMPTY, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %2, %19, %16
  %22 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %23 = call i32 @snd_ps3_verify_dma_stop(%struct.snd_ps3_card_info* %22, i32 700, i32 0)
  store i32 4, i32* %6, align 4
  %24 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %24, i32 0, i32 1
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %120, %21
  %29 = load i32, i32* %9, align 4
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %123

31:                                               ; preds = %28
  %32 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %33 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %32, i32 0, i32 2
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %116, %31
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %119

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %42, 2
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %50 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %5, align 4
  br label %63

52:                                               ; preds = %41
  %53 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %54 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %55 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @v_to_bus(%struct.snd_ps3_card_info* %53, i8* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %52, %48
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @PS3_AUDIO_SOURCE(i32 %64)
  %66 = load i32, i32* @PS3_AUDIO_SOURCE_TARGET_SYSTEM_MEMORY, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @write_reg(i32 %65, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @PS3_AUDIO_DEST(i32 %73)
  %75 = load i32, i32* @PS3_AUDIO_DEST_TARGET_AUDIOFIFO, align 4
  %76 = call i32 @PS3_AUDIO_AO_3W_LDATA(i32 0)
  %77 = or i32 %75, %76
  %78 = call i32 @write_reg(i32 %74, i32 %77)
  br label %86

79:                                               ; preds = %63
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @PS3_AUDIO_DEST(i32 %80)
  %82 = load i32, i32* @PS3_AUDIO_DEST_TARGET_AUDIOFIFO, align 4
  %83 = call i32 @PS3_AUDIO_AO_3W_RDATA(i32 0)
  %84 = or i32 %82, %83
  %85 = call i32 @write_reg(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %79, %72
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @PS3_AUDIO_DMASIZE(i32 %87)
  %89 = call i32 @write_reg(i32 %88, i32 0)
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @PS3_AUDIO_DMAC_BLOCK_SIZE, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @snd_ps3_bump_buffer(%struct.snd_ps3_card_info* %93, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %86
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @PS3_AUDIO_KICK(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @write_reg(i32 %103, i32 %104)
  br label %115

106:                                              ; preds = %98
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @PS3_AUDIO_KICK(i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @PS3_AUDIO_KICK_EVENT_AUDIO_DMA(i32 %110)
  %112 = load i32, i32* @PS3_AUDIO_KICK_REQUEST, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @write_reg(i32 %108, i32 %113)
  br label %115

115:                                              ; preds = %106, %101
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %37

119:                                              ; preds = %37
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %9, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %28

123:                                              ; preds = %28
  %124 = call i32 (...) @wmb()
  %125 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %3, align 8
  %126 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %125, i32 0, i32 1
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  ret i32 0
}

declare dso_local i32 @snd_ps3_verify_dma_stop(%struct.snd_ps3_card_info*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v_to_bus(%struct.snd_ps3_card_info*, i8*, i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @PS3_AUDIO_SOURCE(i32) #1

declare dso_local i32 @PS3_AUDIO_DEST(i32) #1

declare dso_local i32 @PS3_AUDIO_AO_3W_LDATA(i32) #1

declare dso_local i32 @PS3_AUDIO_AO_3W_RDATA(i32) #1

declare dso_local i32 @PS3_AUDIO_DMASIZE(i32) #1

declare dso_local i32 @snd_ps3_bump_buffer(%struct.snd_ps3_card_info*, i32, i32, i32) #1

declare dso_local i32 @PS3_AUDIO_KICK(i32) #1

declare dso_local i32 @PS3_AUDIO_KICK_EVENT_AUDIO_DMA(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
