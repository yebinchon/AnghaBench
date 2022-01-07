; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_make_alloc_exact.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_make_alloc_exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i64)* @make_alloc_exact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_alloc_exact(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = add i64 %12, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @PAGE_ALIGN(i64 %19)
  %21 = add i64 %18, %20
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %4, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @virt_to_page(i8* %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @split_page(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %31, %11
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @free_page(i64 %32)
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %27

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i64, i64* %4, align 8
  %41 = inttoptr i64 %40 to i8*
  ret i8* %41
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @split_page(i32, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
