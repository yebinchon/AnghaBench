; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_process_vm_access.c_process_vm_rw_single_vec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_process_vm_access.c_process_vm_rw_single_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }
%struct.page = type { i32 }
%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PVM_MAX_KMALLOC_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.iovec*, i64, i64*, i64*, %struct.page**, %struct.mm_struct*, %struct.task_struct*, i32, i64*)* @process_vm_rw_single_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_vm_rw_single_vec(i64 %0, i64 %1, %struct.iovec* %2, i64 %3, i64* %4, i64* %5, %struct.page** %6, %struct.mm_struct* %7, %struct.task_struct* %8, i32 %9, i64* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.iovec*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %struct.page**, align 8
  %20 = alloca %struct.mm_struct*, align 8
  %21 = alloca %struct.task_struct*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i64 %0, i64* %13, align 8
  store i64 %1, i64* %14, align 8
  store %struct.iovec* %2, %struct.iovec** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64* %4, i64** %17, align 8
  store i64* %5, i64** %18, align 8
  store %struct.page** %6, %struct.page*** %19, align 8
  store %struct.mm_struct* %7, %struct.mm_struct** %20, align 8
  store %struct.task_struct* %8, %struct.task_struct** %21, align 8
  store i32 %9, i32* %22, align 4
  store i64* %10, i64** %23, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @PAGE_MASK, align 8
  %34 = and i64 %32, %33
  store i64 %34, i64* %24, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %24, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %25, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  %38 = load i32, i32* @PVM_MAX_KMALLOC_PAGES, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 8
  store i64 %40, i64* %31, align 8
  %41 = load i64*, i64** %23, align 8
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %11
  store i32 0, i32* %12, align 4
  br label %112

45:                                               ; preds = %11
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %46, %47
  %49 = sub i64 %48, 1
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = udiv i64 %49, %50
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = udiv i64 %52, %53
  %55 = sub i64 %51, %54
  %56 = add i64 %55, 1
  store i64 %56, i64* %26, align 8
  br label %57

57:                                               ; preds = %108, %45
  %58 = load i64, i64* %29, align 8
  %59 = load i64, i64* %26, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64*, i64** %17, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %16, align 8
  %65 = icmp ult i64 %63, %64
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i1 [ false, %57 ], [ %65, %61 ]
  br i1 %67, label %68, label %109

68:                                               ; preds = %66
  %69 = load i64, i64* %26, align 8
  %70 = load i64, i64* %29, align 8
  %71 = sub i64 %69, %70
  %72 = load i64, i64* %31, align 8
  %73 = call i64 @min(i64 %71, i64 %72)
  store i64 %73, i64* %30, align 8
  %74 = load %struct.task_struct*, %struct.task_struct** %21, align 8
  %75 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  %76 = load %struct.page**, %struct.page*** %19, align 8
  %77 = load i64, i64* %24, align 8
  %78 = load i64, i64* %25, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load %struct.iovec*, %struct.iovec** %15, align 8
  %81 = load i64, i64* %16, align 8
  %82 = load i64*, i64** %17, align 8
  %83 = load i64*, i64** %18, align 8
  %84 = load i32, i32* %22, align 4
  %85 = load i64, i64* %30, align 8
  %86 = call i64 @process_vm_rw_pages(%struct.task_struct* %74, %struct.mm_struct* %75, %struct.page** %76, i64 %77, i64 %78, i64 %79, %struct.iovec* %80, i64 %81, i64* %82, i64* %83, i32 %84, i64 %85, i64* %27)
  store i64 %86, i64* %28, align 8
  store i64 0, i64* %25, align 8
  %87 = load i64, i64* %27, align 8
  %88 = load i64*, i64** %23, align 8
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %87
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* %28, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %68
  %94 = load i64, i64* %28, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %12, align 4
  br label %112

96:                                               ; preds = %68
  %97 = load i64, i64* %27, align 8
  %98 = load i64, i64* %14, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %30, align 8
  %101 = load i64, i64* %29, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %29, align 8
  %103 = load i64, i64* %30, align 8
  %104 = load i64, i64* @PAGE_SIZE, align 8
  %105 = mul i64 %103, %104
  %106 = load i64, i64* %24, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %24, align 8
  br label %108

108:                                              ; preds = %96
  br label %57

109:                                              ; preds = %66
  %110 = load i64, i64* %28, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %109, %93, %44
  %113 = load i32, i32* %12, align 4
  ret i32 %113
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @process_vm_rw_pages(%struct.task_struct*, %struct.mm_struct*, %struct.page**, i64, i64, i64, %struct.iovec*, i64, i64*, i64*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
