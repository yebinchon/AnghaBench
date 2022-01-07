; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_remove_vm_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_remove_vm_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32, i32, %struct.vm_struct* }
%struct.vmap_area = type { i32, i32, i32, %struct.vm_struct* }

@VM_VM_AREA = common dso_local global i32 0, align 4
@VM_UNLIST = common dso_local global i32 0, align 4
@vmlist_lock = common dso_local global i32 0, align 4
@vmlist = common dso_local global %struct.vm_struct* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_struct* @remove_vm_area(i8* %0) #0 {
  %2 = alloca %struct.vm_struct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vmap_area*, align 8
  %5 = alloca %struct.vm_struct*, align 8
  %6 = alloca %struct.vm_struct*, align 8
  %7 = alloca %struct.vm_struct**, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = call %struct.vmap_area* @find_vmap_area(i64 %9)
  store %struct.vmap_area* %10, %struct.vmap_area** %4, align 8
  %11 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %12 = icmp ne %struct.vmap_area* %11, null
  br i1 %12, label %13, label %65

13:                                               ; preds = %1
  %14 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %15 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @VM_VM_AREA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %13
  %21 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %22 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %21, i32 0, i32 3
  %23 = load %struct.vm_struct*, %struct.vm_struct** %22, align 8
  store %struct.vm_struct* %23, %struct.vm_struct** %5, align 8
  %24 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VM_UNLIST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %20
  %31 = call i32 @write_lock(i32* @vmlist_lock)
  store %struct.vm_struct** @vmlist, %struct.vm_struct*** %7, align 8
  br label %32

32:                                               ; preds = %38, %30
  %33 = load %struct.vm_struct**, %struct.vm_struct*** %7, align 8
  %34 = load %struct.vm_struct*, %struct.vm_struct** %33, align 8
  store %struct.vm_struct* %34, %struct.vm_struct** %6, align 8
  %35 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %36 = icmp ne %struct.vm_struct* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %40 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %39, i32 0, i32 2
  store %struct.vm_struct** %40, %struct.vm_struct*** %7, align 8
  br label %32

41:                                               ; preds = %32
  %42 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %43 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %42, i32 0, i32 2
  %44 = load %struct.vm_struct*, %struct.vm_struct** %43, align 8
  %45 = load %struct.vm_struct**, %struct.vm_struct*** %7, align 8
  store %struct.vm_struct* %44, %struct.vm_struct** %45, align 8
  %46 = call i32 @write_unlock(i32* @vmlist_lock)
  br label %47

47:                                               ; preds = %41, %20
  %48 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %49 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %52 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vmap_debug_free_range(i32 %50, i32 %53)
  %55 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %56 = call i32 @free_unmap_vmap_area(%struct.vmap_area* %55)
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  store %struct.vm_struct* %64, %struct.vm_struct** %2, align 8
  br label %66

65:                                               ; preds = %13, %1
  store %struct.vm_struct* null, %struct.vm_struct** %2, align 8
  br label %66

66:                                               ; preds = %65, %47
  %67 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  ret %struct.vm_struct* %67
}

declare dso_local %struct.vmap_area* @find_vmap_area(i64) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @vmap_debug_free_range(i32, i32) #1

declare dso_local i32 @free_unmap_vmap_area(%struct.vmap_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
