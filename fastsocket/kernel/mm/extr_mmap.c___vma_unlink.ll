; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c___vma_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c___vma_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.vm_area_struct*, i32 }
%struct.vm_area_struct = type { i32, i32, i32, %struct.vm_area_struct*, %struct.vm_area_struct* }

@VM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*)* @__vma_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vma_unlink(%struct.mm_struct* %0, %struct.vm_area_struct* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %6, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 4
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  store %struct.vm_area_struct* %10, %struct.vm_area_struct** %7, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 4
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %13, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = icmp ne %struct.vm_area_struct* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 3
  store %struct.vm_area_struct* %17, %struct.vm_area_struct** %19, align 8
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 2
  %23 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 1
  %25 = call i32 @rb_erase(i32* %22, i32* %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %27, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = icmp eq %struct.vm_area_struct* %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 0
  store %struct.vm_area_struct* %32, %struct.vm_area_struct** %34, align 8
  br label %35

35:                                               ; preds = %31, %20
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VM_EXEC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @arch_remove_exec_range(%struct.mm_struct* %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %35
  ret void
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @arch_remove_exec_range(%struct.mm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
