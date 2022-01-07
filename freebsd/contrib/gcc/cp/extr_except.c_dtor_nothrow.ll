; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_dtor_nothrow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_dtor_nothrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@sfk_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @dtor_nothrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtor_nothrow(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @NULL_TREE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @CLASS_TYPE_P(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %25

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @CLASSTYPE_LAZY_DESTRUCTOR(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @sfk_destructor, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @lazily_declare_fn(i32 %18, i64 %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @CLASSTYPE_DESTRUCTORS(i64 %22)
  %24 = call i32 @TREE_NOTHROW(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %12, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @CLASSTYPE_LAZY_DESTRUCTOR(i64) #1

declare dso_local i32 @lazily_declare_fn(i32, i64) #1

declare dso_local i32 @TREE_NOTHROW(i32) #1

declare dso_local i32 @CLASSTYPE_DESTRUCTORS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
