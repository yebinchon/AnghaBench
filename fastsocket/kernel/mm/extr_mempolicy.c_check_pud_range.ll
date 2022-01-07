; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_check_pud_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_check_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i32*, i64, i64, i32*, i64, i8*)* @check_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pud_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i32* %4, i64 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i32* @pud_offset(i32* %18, i64 %19)
  store i32* %20, i32** %16, align 8
  br label %21

21:                                               ; preds = %43, %7
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i64 @pud_addr_end(i64 %22, i64 %23)
  store i64 %24, i64* %17, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = call i64 @pud_none_or_clear_bad(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %43

29:                                               ; preds = %21
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %17, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = call i64 @check_pmd_range(%struct.vm_area_struct* %30, i32* %31, i64 %32, i64 %33, i32* %34, i64 %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %51

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32*, i32** %16, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %16, align 8
  %46 = load i64, i64* %17, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %21, label %50

50:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i64 @check_pmd_range(%struct.vm_area_struct*, i32*, i64, i64, i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
