; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_dependent_scope_ref_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_dependent_scope_ref_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCOPE_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32 (i32)*)* @dependent_scope_ref_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dependent_scope_ref_p(i32 %0, i32 (i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32 (i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 (i32)* %1, i32 (i32)** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @SCOPE_REF, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @TREE_OPERAND(i32 %14, i32 0)
  %16 = call i32 @TYPE_P(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @TREE_OPERAND(i32 %20, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @TREE_OPERAND(i32 %22, i32 1)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @DECL_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @currently_open_class(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32 (i32)*, i32 (i32)** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 %32(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %43

37:                                               ; preds = %31, %27, %19
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @dependent_type_p(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %36, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_P(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i64 @currently_open_class(i32) #1

declare dso_local i64 @dependent_type_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
