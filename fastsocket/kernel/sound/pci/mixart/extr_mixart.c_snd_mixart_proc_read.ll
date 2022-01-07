; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart.c_snd_mixart_proc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart.c_snd_mixart_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_mixart* }
%struct.snd_mixart = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Digigram miXart (alsa card %d)\0A\0A\00", align 1
@MIXART_MOTHERBOARD_ELF_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"- hardware -\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\09miXart8 (no daughter board)\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\09miXart8 AES/EBU\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\09miXart8 Cobranet\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\09UNKNOWN!\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"- system load -\0A\00", align 1
@MIXART_PSEUDOREG_PERF_SYSTEM_LOAD_OFFSET = common dso_local global i32 0, align 4
@MIXART_PSEUDOREG_PERF_MAILBX_LOAD_OFFSET = common dso_local global i32 0, align 4
@MIXART_PSEUDOREG_PERF_STREAM_LOAD_OFFSET = common dso_local global i32 0, align 4
@MIXART_PSEUDOREG_PERF_INTERR_LOAD_OFFSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"\09streaming          : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\09mailbox            : %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"\09interrups handling : %d\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_mixart_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mixart_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_mixart*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %10 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %11 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %10, i32 0, i32 0
  %12 = load %struct.snd_mixart*, %struct.snd_mixart** %11, align 8
  store %struct.snd_mixart* %12, %struct.snd_mixart** %5, align 8
  %13 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %14 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %15 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %19 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MIXART_MOTHERBOARD_ELF_INDEX, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %2
  %28 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %29 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %31 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %44 [
    i32 128, label %35
    i32 130, label %38
    i32 129, label %41
  ]

35:                                               ; preds = %27
  %36 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %37 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %47

38:                                               ; preds = %27
  %39 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %40 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %47

41:                                               ; preds = %27
  %42 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %43 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %47

44:                                               ; preds = %27
  %45 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %46 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41, %38, %35
  %48 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %49 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %50 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %51 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* @MIXART_PSEUDOREG_PERF_SYSTEM_LOAD_OFFSET, align 4
  %54 = call i32 @MIXART_MEM(%struct.TYPE_2__* %52, i32 %53)
  %55 = call i32 @readl_be(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %47
  %59 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %60 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* @MIXART_PSEUDOREG_PERF_MAILBX_LOAD_OFFSET, align 4
  %63 = call i32 @MIXART_MEM(%struct.TYPE_2__* %61, i32 %62)
  %64 = call i32 @readl_be(i32 %63)
  %65 = mul nsw i32 100, %64
  %66 = load i32, i32* %6, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %69 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* @MIXART_PSEUDOREG_PERF_STREAM_LOAD_OFFSET, align 4
  %72 = call i32 @MIXART_MEM(%struct.TYPE_2__* %70, i32 %71)
  %73 = call i32 @readl_be(i32 %72)
  %74 = mul nsw i32 100, %73
  %75 = load i32, i32* %6, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %78 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* @MIXART_PSEUDOREG_PERF_INTERR_LOAD_OFFSET, align 4
  %81 = call i32 @MIXART_MEM(%struct.TYPE_2__* %79, i32 %80)
  %82 = call i32 @readl_be(i32 %81)
  %83 = mul nsw i32 100, %82
  %84 = load i32, i32* %6, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  %89 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  %92 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %58, %47
  br label %96

96:                                               ; preds = %95, %2
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @readl_be(i32) #1

declare dso_local i32 @MIXART_MEM(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
