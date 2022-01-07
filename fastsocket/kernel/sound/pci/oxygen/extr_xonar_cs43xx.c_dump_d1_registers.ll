; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_cs43xx.c_dump_d1_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_cs43xx.c_dump_d1_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_cs43xx* }
%struct.xonar_cs43xx = type { i32* }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"\0ACS4398: 7?\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, %struct.snd_info_buffer*)* @dump_d1_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_d1_registers(%struct.oxygen* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.xonar_cs43xx*, align 8
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %8 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %7, i32 0, i32 0
  %9 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %8, align 8
  store %struct.xonar_cs43xx* %9, %struct.xonar_cs43xx** %5, align 8
  %10 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %11 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %6, align 4
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %13, 8
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %17 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %5, align 8
  %18 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %30 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %5, align 8
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %33 = call i32 @dump_cs4362a_registers(%struct.xonar_cs43xx* %31, %struct.snd_info_buffer* %32)
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @dump_cs4362a_registers(%struct.xonar_cs43xx*, %struct.snd_info_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
