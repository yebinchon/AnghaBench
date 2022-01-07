; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_pdacf_proc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_pdacf_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_pdacf* }
%struct.snd_pdacf = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"PDAudioCF\0A\0A\00", align 1
@PDAUDIOCF_REG_SCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"FPGA revision      : 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @pdacf_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdacf_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_pdacf*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_pdacf*, %struct.snd_pdacf** %8, align 8
  store %struct.snd_pdacf* %9, %struct.snd_pdacf** %5, align 8
  %10 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %11 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.snd_pdacf*, %struct.snd_pdacf** %5, align 8
  %13 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %14 = call i32 @pdacf_reg_read(%struct.snd_pdacf* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @PDAUDIOCF_FPGAREV(i32 %16)
  %18 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @pdacf_reg_read(%struct.snd_pdacf*, i32) #1

declare dso_local i32 @PDAUDIOCF_FPGAREV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
