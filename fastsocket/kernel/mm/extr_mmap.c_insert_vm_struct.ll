; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_insert_vm_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_insert_vm_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i32, i64, i32, i32, i32 }
%struct.rb_node = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_ACCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insert_vm_struct(%struct.mm_struct* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.rb_node**, align 8
  %9 = alloca %struct.rb_node*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %14, %2
  %27 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.vm_area_struct* @find_vma_prepare(%struct.mm_struct* %27, i32 %30, %struct.vm_area_struct** %7, %struct.rb_node*** %8, %struct.rb_node** %9)
  store %struct.vm_area_struct* %31, %struct.vm_area_struct** %6, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %33 = icmp ne %struct.vm_area_struct* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %69

46:                                               ; preds = %34, %26
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VM_ACCOUNT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = call i32 @vma_pages(%struct.vm_area_struct* %55)
  %57 = call i64 @security_vm_enough_memory_mm(%struct.mm_struct* %54, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %53, %46
  %63 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %66 = load %struct.rb_node**, %struct.rb_node*** %8, align 8
  %67 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %68 = call i32 @vma_link(%struct.mm_struct* %63, %struct.vm_area_struct* %64, %struct.vm_area_struct* %65, %struct.rb_node** %66, %struct.rb_node* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %59, %43
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.vm_area_struct* @find_vma_prepare(%struct.mm_struct*, i32, %struct.vm_area_struct**, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local i64 @security_vm_enough_memory_mm(%struct.mm_struct*, i32) #1

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @vma_link(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
