; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_mmap_data_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_mmap_data_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.snd_pcm_runtime* }
%struct.TYPE_2__ = type { %struct.page* (%struct.snd_pcm_substream*, i64)* }
%struct.page = type { i32 }
%struct.snd_pcm_runtime = type { i8*, i32 }
%struct.vm_fault = type { i64, %struct.page* }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @snd_pcm_mmap_data_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_mmap_data_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %6, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %16 = icmp eq %struct.snd_pcm_substream* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 1
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %7, align 8
  %23 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %24 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = shl i64 %25, %26
  store i64 %27, i64* %8, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @PAGE_ALIGN(i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = sub i64 %33, %34
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %38, i32* %3, align 4
  br label %74

39:                                               ; preds = %19
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.page* (%struct.snd_pcm_substream*, i64)*, %struct.page* (%struct.snd_pcm_substream*, i64)** %43, align 8
  %45 = icmp ne %struct.page* (%struct.snd_pcm_substream*, i64)* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.page* (%struct.snd_pcm_substream*, i64)*, %struct.page* (%struct.snd_pcm_substream*, i64)** %50, align 8
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call %struct.page* %51(%struct.snd_pcm_substream* %52, i64 %53)
  store %struct.page* %54, %struct.page** %9, align 8
  %55 = load %struct.page*, %struct.page** %9, align 8
  %56 = icmp ne %struct.page* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %58, i32* %3, align 4
  br label %74

59:                                               ; preds = %46
  br label %68

60:                                               ; preds = %39
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr i8, i8* %63, i64 %64
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call %struct.page* @virt_to_page(i8* %66)
  store %struct.page* %67, %struct.page** %9, align 8
  br label %68

68:                                               ; preds = %60, %59
  %69 = load %struct.page*, %struct.page** %9, align 8
  %70 = call i32 @get_page(%struct.page* %69)
  %71 = load %struct.page*, %struct.page** %9, align 8
  %72 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %73 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %72, i32 0, i32 1
  store %struct.page* %71, %struct.page** %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %57, %37, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
