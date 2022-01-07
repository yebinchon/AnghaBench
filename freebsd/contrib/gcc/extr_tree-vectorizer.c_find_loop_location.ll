; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_find_loop_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_find_loop_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@UNKNOWN_LOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_loop_location(%struct.loop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %3, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.loop*, %struct.loop** %3, align 8
  %9 = icmp ne %struct.loop* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @UNKNOWN_LOC, align 4
  store i32 %11, i32* %2, align 4
  br label %75

12:                                               ; preds = %1
  %13 = load %struct.loop*, %struct.loop** %3, align 8
  %14 = call i64 @get_loop_exit_condition(%struct.loop* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @EXPR_P(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @EXPR_HAS_LOCATION(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @EXPR_FILENAME(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @EXPR_LINENO(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @EXPR_LOC(i64 %34)
  store i32 %35, i32* %2, align 4
  br label %75

36:                                               ; preds = %29, %25, %21, %17, %12
  %37 = load %struct.loop*, %struct.loop** %3, align 8
  %38 = getelementptr inbounds %struct.loop, %struct.loop* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @UNKNOWN_LOC, align 4
  store i32 %42, i32* %2, align 4
  br label %75

43:                                               ; preds = %36
  %44 = load %struct.loop*, %struct.loop** %3, align 8
  %45 = getelementptr inbounds %struct.loop, %struct.loop* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @bsi_start(i64 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %71, %43
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @bsi_end_p(i32 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @bsi_stmt(i32 %55)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @EXPR_P(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @EXPR_HAS_LOCATION(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @EXPR_LOC(i64 %68)
  store i32 %69, i32* %2, align 4
  br label %75

70:                                               ; preds = %63, %59, %54
  br label %71

71:                                               ; preds = %70
  %72 = call i32 @bsi_next(i32* %6)
  br label %49

73:                                               ; preds = %49
  %74 = load i32, i32* @UNKNOWN_LOC, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %67, %41, %33, %10
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @get_loop_exit_condition(%struct.loop*) #1

declare dso_local i64 @EXPR_P(i64) #1

declare dso_local i64 @EXPR_HAS_LOCATION(i64) #1

declare dso_local i64 @EXPR_FILENAME(i64) #1

declare dso_local i64 @EXPR_LINENO(i64) #1

declare dso_local i32 @EXPR_LOC(i64) #1

declare dso_local i32 @bsi_start(i64) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i64 @bsi_stmt(i32) #1

declare dso_local i32 @bsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
