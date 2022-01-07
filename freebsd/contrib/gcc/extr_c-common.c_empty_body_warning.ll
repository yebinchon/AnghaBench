; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_empty_body_warning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_empty_body_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@extra_warnings = common dso_local global i64 0, align 8
@STATEMENT_LIST = common dso_local global i64 0, align 8
@OPT_Wextra = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%Hempty body in an if-statement\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%Hempty body in an else-statement\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @empty_body_warning(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @extra_warnings, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %63

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @TREE_CODE(i64 %8)
  %10 = load i64, i64* @STATEMENT_LIST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8
  %14 = call %struct.TYPE_2__* @STATEMENT_LIST_TAIL(i64 %13)
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = call %struct.TYPE_2__* @STATEMENT_LIST_TAIL(i64 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %16, %12, %7
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @STATEMENT_LIST, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = call %struct.TYPE_2__* @STATEMENT_LIST_TAIL(i64 %30)
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = call %struct.TYPE_2__* @STATEMENT_LIST_TAIL(i64 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %33, %29, %24, %21
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @IS_EMPTY_STMT(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @OPT_Wextra, align 4
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @EXPR_LOCUS(i64 %47)
  %49 = call i32 @warning(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %42, %38
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @IS_EMPTY_STMT(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @OPT_Wextra, align 4
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @EXPR_LOCUS(i64 %59)
  %61 = call i32 @warning(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %53, %50
  br label %63

63:                                               ; preds = %62, %2
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.TYPE_2__* @STATEMENT_LIST_TAIL(i64) #1

declare dso_local i64 @IS_EMPTY_STMT(i64) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i32 @EXPR_LOCUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
