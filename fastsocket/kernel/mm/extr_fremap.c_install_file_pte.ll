; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_fremap.c_install_file_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_fremap.c_install_file_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i32)* @install_file_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_file_pte(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32* @get_locked_pte(%struct.mm_struct* %16, i64 %17, i32** %13)
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %43

22:                                               ; preds = %5
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pte_none(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @zap_pte(%struct.mm_struct* %28, %struct.vm_area_struct* %29, i64 %30, i32* %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @pgoff_to_pte(i64 %37)
  %39 = call i32 @set_pte_at(%struct.mm_struct* %34, i64 %35, i32* %36, i32 %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @pte_unmap_unlock(i32* %40, i32* %41)
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %33, %21
  %44 = load i32, i32* %11, align 4
  ret i32 %44
}

declare dso_local i32* @get_locked_pte(%struct.mm_struct*, i64, i32**) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @zap_pte(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pgoff_to_pte(i64) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
