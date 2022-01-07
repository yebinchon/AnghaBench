; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_madvise.c_madvise_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_madvise.c_madvise_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64, i32)* @madvise_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @madvise_vma(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.vm_area_struct**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %31 [
    i32 129, label %13
    i32 128, label %19
    i32 130, label %25
  ]

13:                                               ; preds = %5
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i64 @madvise_remove(%struct.vm_area_struct* %14, %struct.vm_area_struct** %15, i64 %16, i64 %17)
  store i64 %18, i64* %6, align 8
  br label %38

19:                                               ; preds = %5
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %21 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @madvise_willneed(%struct.vm_area_struct* %20, %struct.vm_area_struct** %21, i64 %22, i64 %23)
  store i64 %24, i64* %6, align 8
  br label %38

25:                                               ; preds = %5
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %27 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @madvise_dontneed(%struct.vm_area_struct* %26, %struct.vm_area_struct** %27, i64 %28, i64 %29)
  store i64 %30, i64* %6, align 8
  br label %38

31:                                               ; preds = %5
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %33 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @madvise_behavior(%struct.vm_area_struct* %32, %struct.vm_area_struct** %33, i64 %34, i64 %35, i32 %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %31, %25, %19, %13
  %39 = load i64, i64* %6, align 8
  ret i64 %39
}

declare dso_local i64 @madvise_remove(%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64) #1

declare dso_local i64 @madvise_willneed(%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64) #1

declare dso_local i64 @madvise_dontneed(%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64) #1

declare dso_local i64 @madvise_behavior(%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
