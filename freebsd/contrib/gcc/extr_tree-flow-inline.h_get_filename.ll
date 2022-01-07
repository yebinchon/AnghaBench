; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-flow-inline.h_get_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-flow-inline.h_get_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@COMPOUND_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_filename(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @NULL_TREE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %28

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @TREE_CODE(i64 %10)
  %12 = load i64, i64* @COMPOUND_EXPR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @TREE_OPERAND(i64 %15, i32 0)
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @EXPR_HAS_LOCATION(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = call i8* @EXPR_FILENAME(i64 %22)
  store i8* %23, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %2, align 8
  br label %28

27:                                               ; preds = %21, %17
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %25, %8
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @EXPR_HAS_LOCATION(i64) #1

declare dso_local i8* @EXPR_FILENAME(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
