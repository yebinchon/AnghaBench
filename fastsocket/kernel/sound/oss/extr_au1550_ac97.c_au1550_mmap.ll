; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.vm_area_struct = type { i32, i64, i64, i64, i32 }
%struct.au1550_state = type { i32, %struct.dmabuf, %struct.dmabuf }
%struct.dmabuf = type { i64, i32, i32 }

@VM_WRITE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @au1550_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.au1550_state*, align 8
  %6 = alloca %struct.dmabuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.au1550_state*
  store %struct.au1550_state* %12, %struct.au1550_state** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = call i32 (...) @lock_kernel()
  %14 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %15 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VM_WRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %25 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %24, i32 0, i32 2
  store %struct.dmabuf* %25, %struct.dmabuf** %6, align 8
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VM_READ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %35 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %34, i32 0, i32 1
  store %struct.dmabuf* %35, %struct.dmabuf** %6, align 8
  br label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %94

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %23
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %94

48:                                               ; preds = %40
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %51, %54
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %59 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = shl i64 %57, %60
  %62 = icmp ugt i64 %56, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %94

66:                                               ; preds = %48
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %72 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @virt_to_page(i32 %73)
  %75 = call i32 @page_to_pfn(i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @remap_pfn_range(%struct.vm_area_struct* %67, i64 %70, i32 %75, i64 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %66
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %94

85:                                               ; preds = %66
  %86 = load i32, i32* @VM_IO, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %93 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %92, i32 0, i32 1
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %85, %82, %63, %45, %36
  %95 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %96 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = call i32 (...) @unlock_kernel()
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
