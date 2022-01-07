; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_hwdep_pcm_vm_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_hwdep_pcm_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64 }
%struct.vm_fault = type { i64, i32 }
%struct.usX2Ydev = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @snd_usX2Y_hwdep_pcm_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usX2Y_hwdep_pcm_vm_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %4, align 8
  %7 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PAGE_SHIFT, align 8
  %11 = shl i64 %9, %10
  store i64 %11, i64* %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.usX2Ydev*
  %16 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @virt_to_page(i8* %21)
  %23 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %24 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %26 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @get_page(i32 %27)
  ret i32 0
}

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
