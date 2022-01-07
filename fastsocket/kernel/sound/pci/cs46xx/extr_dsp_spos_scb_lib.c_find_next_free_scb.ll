; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_find_next_free_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_find_next_free_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { %struct.dsp_scb_descriptor* }
%struct.dsp_scb_descriptor = type { %struct.dsp_scb_descriptor* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_scb_descriptor* (%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*)* @find_next_free_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_scb_descriptor* @find_next_free_scb(%struct.snd_cs46xx* %0, %struct.dsp_scb_descriptor* %1) #0 {
  %3 = alloca %struct.dsp_scb_descriptor*, align 8
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca %struct.dsp_scb_descriptor*, align 8
  %6 = alloca %struct.dsp_spos_instance*, align 8
  %7 = alloca %struct.dsp_scb_descriptor*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store %struct.dsp_scb_descriptor* %1, %struct.dsp_scb_descriptor** %5, align 8
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %9 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %8, i32 0, i32 0
  %10 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %9, align 8
  store %struct.dsp_spos_instance* %10, %struct.dsp_spos_instance** %6, align 8
  %11 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %5, align 8
  store %struct.dsp_scb_descriptor* %11, %struct.dsp_scb_descriptor** %7, align 8
  br label %12

12:                                               ; preds = %30, %2
  %13 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %7, align 8
  %14 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %13, i32 0, i32 0
  %15 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %14, align 8
  %16 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %17 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %16, i32 0, i32 0
  %18 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %19 = icmp ne %struct.dsp_scb_descriptor* %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %12
  %21 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %7, align 8
  %22 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %21, i32 0, i32 0
  %23 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %22, align 8
  %24 = icmp ne %struct.dsp_scb_descriptor* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @snd_BUG_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %3, align 8
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %7, align 8
  %32 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %31, i32 0, i32 0
  %33 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %32, align 8
  store %struct.dsp_scb_descriptor* %33, %struct.dsp_scb_descriptor** %7, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %7, align 8
  store %struct.dsp_scb_descriptor* %35, %struct.dsp_scb_descriptor** %3, align 8
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %3, align 8
  ret %struct.dsp_scb_descriptor* %37
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
