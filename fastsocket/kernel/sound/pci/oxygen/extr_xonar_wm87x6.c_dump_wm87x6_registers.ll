; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_dump_wm87x6_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_dump_wm87x6_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"\0AWM8766:\0A00:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %03x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, %struct.snd_info_buffer*)* @dump_wm87x6_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_wm87x6_registers(%struct.oxygen* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.xonar_wm87x6*, align 8
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %8 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %7, i32 0, i32 0
  %9 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %8, align 8
  store %struct.xonar_wm87x6* %9, %struct.xonar_wm87x6** %5, align 8
  %10 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %11 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %12 = call i32 @dump_wm8776_registers(%struct.oxygen* %10, %struct.snd_info_buffer* %11)
  %13 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %14 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %28, %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %16, 16
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %20 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %5, align 8
  %21 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %33 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dump_wm8776_registers(%struct.oxygen*, %struct.snd_info_buffer*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
