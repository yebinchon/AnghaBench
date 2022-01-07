; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ioremap.c_ioremap_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ioremap.c_ioremap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioremap_page_range(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp uge i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %20, %19
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32* @pgd_offset_k(i64 %22)
  store i32* %23, i32** %9, align 8
  br label %24

24:                                               ; preds = %40, %4
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @pgd_addr_end(i64 %25, i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ioremap_pud_range(i32* %28, i64 %29, i64 %30, i64 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %47

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %9, align 8
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %24, label %47

47:                                               ; preds = %40, %38
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @flush_cache_vmap(i64 %48, i64 %49)
  %51 = load i32, i32* %12, align 4
  ret i32 %51
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i32 @ioremap_pud_range(i32*, i64, i64, i64, i32) #1

declare dso_local i32 @flush_cache_vmap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
