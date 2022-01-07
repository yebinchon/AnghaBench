; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_madvise.c_madvise_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_madvise.c_madvise_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i32 }

@VM_LOCKED = common dso_local global i32 0, align 4
@VM_NONLINEAR = common dso_local global i32 0, align 4
@VM_HUGETLB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64)* @madvise_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @madvise_remove(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.file*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %15, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VM_LOCKED, align 4
  %20 = load i32, i32* @VM_NONLINEAR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VM_HUGETLB, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %118

29:                                               ; preds = %4
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 3
  %32 = load %struct.file*, %struct.file** %31, align 8
  store %struct.file* %32, %struct.file** %14, align 8
  %33 = load %struct.file*, %struct.file** %14, align 8
  %34 = icmp ne %struct.file* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.file*, %struct.file** %14, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load %struct.address_space*, %struct.address_space** %37, align 8
  %39 = icmp ne %struct.address_space* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.file*, %struct.file** %14, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  %43 = load %struct.address_space*, %struct.address_space** %42, align 8
  %44 = getelementptr inbounds %struct.address_space, %struct.address_space* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40, %35, %29
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub nsw i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %118

50:                                               ; preds = %40
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @VM_SHARED, align 4
  %55 = load i32, i32* @VM_WRITE, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = load i32, i32* @VM_SHARED, align 4
  %59 = load i32, i32* @VM_WRITE, align 4
  %60 = or i32 %58, %59
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i64, i64* @EACCES, align 8
  %64 = sub nsw i64 0, %63
  store i64 %64, i64* %5, align 8
  br label %118

65:                                               ; preds = %50
  %66 = load %struct.file*, %struct.file** %14, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  %68 = load %struct.address_space*, %struct.address_space** %67, align 8
  store %struct.address_space* %68, %struct.address_space** %10, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @PAGE_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = add nsw i32 %74, %80
  store i32 %81, i32* %11, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %82, %85
  %87 = sub i64 %86, 1
  %88 = trunc i64 %87 to i32
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* @PAGE_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = add nsw i32 %88, %94
  store i32 %95, i32* %12, align 4
  %96 = load %struct.file*, %struct.file** %14, align 8
  %97 = call i32 @get_file(%struct.file* %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i32 @up_read(i32* %101)
  %103 = load %struct.address_space*, %struct.address_space** %10, align 8
  %104 = getelementptr inbounds %struct.address_space, %struct.address_space* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @vmtruncate_range(i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load %struct.file*, %struct.file** %14, align 8
  %110 = call i32 @fput(%struct.file* %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = call i32 @down_read(i32* %114)
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %5, align 8
  br label %118

118:                                              ; preds = %65, %62, %47, %26
  %119 = load i64, i64* %5, align 8
  ret i64 %119
}

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @vmtruncate_range(i32, i32, i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @down_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
