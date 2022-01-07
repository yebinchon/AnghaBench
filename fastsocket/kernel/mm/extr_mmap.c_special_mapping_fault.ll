; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_special_mapping_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_special_mapping_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.page**, i64 }
%struct.page = type { i32 }
%struct.vm_fault = type { %struct.page*, i64 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @special_mapping_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_mapping_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  store i64 %15, i64* %6, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load %struct.page**, %struct.page*** %17, align 8
  store %struct.page** %18, %struct.page*** %7, align 8
  br label %19

19:                                               ; preds = %31, %2
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.page**, %struct.page*** %7, align 8
  %24 = load %struct.page*, %struct.page** %23, align 8
  %25 = icmp ne %struct.page* %24, null
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %28
  %32 = load %struct.page**, %struct.page*** %7, align 8
  %33 = getelementptr inbounds %struct.page*, %struct.page** %32, i32 1
  store %struct.page** %33, %struct.page*** %7, align 8
  br label %19

34:                                               ; preds = %26
  %35 = load %struct.page**, %struct.page*** %7, align 8
  %36 = load %struct.page*, %struct.page** %35, align 8
  %37 = icmp ne %struct.page* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.page**, %struct.page*** %7, align 8
  %40 = load %struct.page*, %struct.page** %39, align 8
  store %struct.page* %40, %struct.page** %8, align 8
  %41 = load %struct.page*, %struct.page** %8, align 8
  %42 = call i32 @get_page(%struct.page* %41)
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %45 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %44, i32 0, i32 0
  store %struct.page* %43, %struct.page** %45, align 8
  store i32 0, i32* %3, align 4
  br label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %38
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
