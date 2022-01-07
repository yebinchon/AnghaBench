; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_check_operand_nalternatives.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_check_operand_nalternatives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RECOG_ALTERNATIVES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"too many alternatives in %<asm%>\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"operand constraints for %<asm%> differ in number of alternatives\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @check_operand_nalternatives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_operand_nalternatives(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %12, %2
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  br label %22

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  %24 = call i64 @TREE_PURPOSE(i64 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @TREE_VALUE(i64 %25)
  %27 = call i8* @TREE_STRING_POINTER(i32 %26)
  %28 = call i32 @n_occurrences(i8 signext 44, i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @MAX_RECOG_ALTERNATIVES, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %64

36:                                               ; preds = %22
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %61, %36
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @TREE_PURPOSE(i64 %42)
  %44 = call i32 @TREE_VALUE(i64 %43)
  %45 = call i8* @TREE_STRING_POINTER(i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @n_occurrences(i8 signext 44, i8* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 @error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %64

52:                                               ; preds = %41
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @TREE_CHAIN(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @TREE_CHAIN(i64 %57)
  store i64 %58, i64* %6, align 8
  br label %61

59:                                               ; preds = %52
  %60 = load i64, i64* %8, align 8
  store i64 %60, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %61

61:                                               ; preds = %59, %56
  br label %38

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62, %12
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %50, %34
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i32 @n_occurrences(i8 signext, i8*) #1

declare dso_local i8* @TREE_STRING_POINTER(i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
