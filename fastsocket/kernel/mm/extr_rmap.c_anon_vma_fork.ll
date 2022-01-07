; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_anon_vma_fork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_anon_vma_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.anon_vma* }
%struct.anon_vma = type { i32 }
%struct.anon_vma_chain = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anon_vma_fork(%struct.vm_area_struct* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.anon_vma_chain*, align 8
  %7 = alloca %struct.anon_vma*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %11 = icmp ne %struct.anon_vma* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = call i64 @anon_vma_clone(%struct.vm_area_struct* %14, %struct.vm_area_struct* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %13
  %22 = call %struct.anon_vma* (...) @anon_vma_alloc()
  store %struct.anon_vma* %22, %struct.anon_vma** %7, align 8
  %23 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %24 = icmp ne %struct.anon_vma* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %53

26:                                               ; preds = %21
  %27 = call %struct.anon_vma_chain* (...) @anon_vma_chain_alloc()
  store %struct.anon_vma_chain* %27, %struct.anon_vma_chain** %6, align 8
  %28 = load %struct.anon_vma_chain*, %struct.anon_vma_chain** %6, align 8
  %29 = icmp ne %struct.anon_vma_chain* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %50

31:                                               ; preds = %26
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  %34 = load %struct.anon_vma*, %struct.anon_vma** %33, align 8
  %35 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %38 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %40 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @get_anon_vma(i32 %41)
  %43 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  store %struct.anon_vma* %43, %struct.anon_vma** %45, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %47 = load %struct.anon_vma_chain*, %struct.anon_vma_chain** %6, align 8
  %48 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %49 = call i32 @anon_vma_chain_link(%struct.vm_area_struct* %46, %struct.anon_vma_chain* %47, %struct.anon_vma* %48)
  store i32 0, i32* %3, align 4
  br label %58

50:                                               ; preds = %30
  %51 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %52 = call i32 @anon_vma_free(%struct.anon_vma* %51)
  br label %53

53:                                               ; preds = %50, %25
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %55 = call i32 @unlink_anon_vmas(%struct.vm_area_struct* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %31, %18, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @anon_vma_clone(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local %struct.anon_vma* @anon_vma_alloc(...) #1

declare dso_local %struct.anon_vma_chain* @anon_vma_chain_alloc(...) #1

declare dso_local i32 @get_anon_vma(i32) #1

declare dso_local i32 @anon_vma_chain_link(%struct.vm_area_struct*, %struct.anon_vma_chain*, %struct.anon_vma*) #1

declare dso_local i32 @anon_vma_free(%struct.anon_vma*) #1

declare dso_local i32 @unlink_anon_vmas(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
