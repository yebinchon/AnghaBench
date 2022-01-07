; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_proc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_korg1212* }
%struct.snd_korg1212 = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64*, i64, i32* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c" (index #%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0AGeneral settings\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"    period size: %Zd bytes\0A\00", align 1
@K1212_PERIOD_BYTES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"     clock mode: %s\0A\00", align 1
@clockSourceName = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"  left ADC Sens: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" right ADC Sens: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"    Volume Info:\0A\00", align 1
@kAudioChannels = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c" Channel %d: %s -> %s [%d]\0A\00", align 1
@channelName = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"\0AGeneral status\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c" ADAT Time Code: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"     Card State: %s\0A\00", align 1
@stateName = common dso_local global i64* null, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"Idle mon. State: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Cmd retry count: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"      Irq count: %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"    Error count: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_korg1212_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_korg1212_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_korg1212*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_korg1212*, %struct.snd_korg1212** %8, align 8
  store %struct.snd_korg1212* %9, %struct.snd_korg1212** %6, align 8
  %10 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %11 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %12 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %11, i32 0, i32 9
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %10, i8* %17)
  %19 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %20 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %21 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %20, i32 0, i32 9
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %28 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %30 = load i64, i64* @K1212_PERIOD_BYTES, align 8
  %31 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %33 = load i64*, i64** @clockSourceName, align 8
  %34 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %35 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %41 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %42 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %43)
  %45 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %46 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %47 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %48)
  %50 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %51 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %86, %2
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @kAudioChannels, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** @channelName, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** @channelName, align 8
  %65 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %66 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %65, i32 0, i32 6
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %64, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %77 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %76, i32 0, i32 6
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %58, i32 %63, i32 %75, i32 %84)
  br label %86

86:                                               ; preds = %56
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %52

89:                                               ; preds = %52
  %90 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %91 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %92 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %93 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %94 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %93, i32 0, i32 6
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %97)
  %99 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %100 = load i64*, i64** @stateName, align 8
  %101 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %102 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64 %105)
  %107 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %108 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %109 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i64 %110)
  %112 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %113 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %114 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i64 %115)
  %117 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %118 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %119 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i64 %120)
  %122 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %123 = load %struct.snd_korg1212*, %struct.snd_korg1212** %6, align 8
  %124 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %125)
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
