; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_get_user_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_get_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@FOLL_WRITE = common dso_local global i32 0, align 4
@FOLL_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_user_pages(%struct.task_struct* %0, %struct.mm_struct* %1, i64 %2, i32 %3, i32 %4, i32 %5, %struct.page** %6, %struct.vm_area_struct** %7) #0 {
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page**, align 8
  %16 = alloca %struct.vm_area_struct**, align 8
  %17 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %9, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.page** %6, %struct.page*** %15, align 8
  store %struct.vm_area_struct** %7, %struct.vm_area_struct*** %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = load i32, i32* @FOLL_WRITE, align 4
  %22 = load i32, i32* %17, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %17, align 4
  br label %24

24:                                               ; preds = %20, %8
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @FOLL_FORCE, align 4
  %29 = load i32, i32* %17, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.page**, %struct.page*** %15, align 8
  %38 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %16, align 8
  %39 = call i32 @__get_user_pages(%struct.task_struct* %32, %struct.mm_struct* %33, i64 %34, i32 %35, i32 %36, %struct.page** %37, %struct.vm_area_struct** %38)
  ret i32 %39
}

declare dso_local i32 @__get_user_pages(%struct.task_struct*, %struct.mm_struct*, i64, i32, i32, %struct.page**, %struct.vm_area_struct**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
