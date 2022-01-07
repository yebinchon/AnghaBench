; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_get_vma_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_get_vma_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32 }
%struct.task_struct = type { %struct.mempolicy* }
%struct.vm_area_struct = type { %struct.mempolicy*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mempolicy* (%struct.vm_area_struct*, i64)* }

@default_policy = common dso_local global %struct.mempolicy zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mempolicy* @get_vma_policy(%struct.task_struct* %0, %struct.vm_area_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mempolicy*, align 8
  %8 = alloca %struct.mempolicy*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load %struct.mempolicy*, %struct.mempolicy** %10, align 8
  store %struct.mempolicy* %11, %struct.mempolicy** %7, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = icmp ne %struct.vm_area_struct* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %3
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.mempolicy* (%struct.vm_area_struct*, i64)*, %struct.mempolicy* (%struct.vm_area_struct*, i64)** %23, align 8
  %25 = icmp ne %struct.mempolicy* (%struct.vm_area_struct*, i64)* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.mempolicy* (%struct.vm_area_struct*, i64)*, %struct.mempolicy* (%struct.vm_area_struct*, i64)** %30, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call %struct.mempolicy* %31(%struct.vm_area_struct* %32, i64 %33)
  store %struct.mempolicy* %34, %struct.mempolicy** %8, align 8
  %35 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %36 = icmp ne %struct.mempolicy* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  store %struct.mempolicy* %38, %struct.mempolicy** %7, align 8
  br label %39

39:                                               ; preds = %37, %26
  br label %50

40:                                               ; preds = %19, %14
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 0
  %43 = load %struct.mempolicy*, %struct.mempolicy** %42, align 8
  %44 = icmp ne %struct.mempolicy* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 0
  %48 = load %struct.mempolicy*, %struct.mempolicy** %47, align 8
  store %struct.mempolicy* %48, %struct.mempolicy** %7, align 8
  br label %49

49:                                               ; preds = %45, %40
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %3
  %52 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %53 = icmp ne %struct.mempolicy* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store %struct.mempolicy* @default_policy, %struct.mempolicy** %7, align 8
  br label %55

55:                                               ; preds = %54, %51
  %56 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  ret %struct.mempolicy* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
