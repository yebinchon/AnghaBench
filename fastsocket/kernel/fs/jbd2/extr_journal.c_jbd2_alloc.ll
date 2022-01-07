; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__GFP_REPEAT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jbd2_alloc(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = sub i64 %8, 1
  %10 = and i64 %7, %9
  %11 = call i32 @BUG_ON(i64 %10)
  %12 = load i32, i32* @__GFP_REPEAT, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @__get_free_pages(i32 %19, i32 0)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %5, align 8
  br label %46

22:                                               ; preds = %2
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @get_order(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @__get_free_pages(i32 %32, i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %5, align 8
  br label %39

36:                                               ; preds = %26
  %37 = load i64, i64* %3, align 8
  %38 = call i8* @vmalloc(i64 %37)
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %36, %31
  br label %45

40:                                               ; preds = %22
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @get_slab(i64 %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i8* @kmem_cache_alloc(i32 %42, i32 %43)
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %40, %39
  br label %46

46:                                               ; preds = %45, %18
  %47 = load i8*, i8** %5, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load i64, i64* %3, align 8
  %50 = sub i64 %49, 1
  %51 = and i64 %48, %50
  %52 = call i32 @BUG_ON(i64 %51)
  %53 = load i8*, i8** %5, align 8
  ret i8* %53
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i8* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @get_slab(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
