; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_exit_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_exit_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.vm_area_struct*, i64 }
%struct.vm_area_struct = type { %struct.vm_area_struct* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_mmap(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %5 = icmp ne %struct.mm_struct* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = call i32 @kenter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %16, %7
  %12 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %14, %struct.vm_area_struct** %3, align 8
  %15 = icmp ne %struct.vm_area_struct* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %21, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %23 = call i32 @delete_vma_from_mm(%struct.vm_area_struct* %22)
  %24 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %26 = call i32 @delete_vma(%struct.mm_struct* %24, %struct.vm_area_struct* %25)
  br label %11

27:                                               ; preds = %11
  %28 = call i32 @kleave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %6
  ret void
}

declare dso_local i32 @kenter(i8*) #1

declare dso_local i32 @delete_vma_from_mm(%struct.vm_area_struct*) #1

declare dso_local i32 @delete_vma(%struct.mm_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @kleave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
