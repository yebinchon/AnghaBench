; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_do_mremap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_do_mremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@MREMAP_FIXED = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@EFAULT = common dso_local global i64 0, align 8
@VM_MAYSHARE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_mremap(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %5
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %6, align 8
  br label %105

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @PAGE_MASK, align 8
  %24 = xor i64 %23, -1
  %25 = and i64 %22, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %6, align 8
  br label %105

30:                                               ; preds = %21
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @MREMAP_FIXED, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %6, align 8
  br label %105

42:                                               ; preds = %35, %30
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call %struct.vm_area_struct* @find_vma_exact(i32 %45, i64 %46, i64 %47)
  store %struct.vm_area_struct* %48, %struct.vm_area_struct** %12, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %50 = icmp ne %struct.vm_area_struct* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i64, i64* @EINVAL, align 8
  %53 = sub i64 0, %52
  store i64 %53, i64* %6, align 8
  br label %105

54:                                               ; preds = %42
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %60, %61
  %63 = icmp ne i64 %57, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i64, i64* @EFAULT, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %6, align 8
  br label %105

67:                                               ; preds = %54
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @VM_MAYSHARE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i64, i64* @EPERM, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %6, align 8
  br label %105

77:                                               ; preds = %67
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 3
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub i64 %83, %88
  %90 = icmp ugt i64 %78, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %77
  %92 = load i64, i64* @ENOMEM, align 8
  %93 = sub nsw i64 0, %92
  store i64 %93, i64* %6, align 8
  br label %105

94:                                               ; preds = %77
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %97, %98
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %94, %91, %74, %64, %51, %39, %27, %18
  %106 = load i64, i64* %6, align 8
  ret i64 %106
}

declare dso_local %struct.vm_area_struct* @find_vma_exact(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
