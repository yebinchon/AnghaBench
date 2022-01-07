; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_compound_expr_from_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_compound_expr_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"%s expression list treated as compound expression\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_x_compound_expr_from_list(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @TREE_VALUE(i64 %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @TREE_CHAIN(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @pedwarn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @TREE_CHAIN(i64 %18)
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %28, %17
  %21 = load i64, i64* %3, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @TREE_VALUE(i64 %25)
  %27 = call i64 @build_x_compound_expr(i64 %24, i64 %26)
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @TREE_CHAIN(i64 %29)
  store i64 %30, i64* %3, align 8
  br label %20

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pedwarn(i8*, i8*) #1

declare dso_local i64 @build_x_compound_expr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
