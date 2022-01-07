; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_interpret_int_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_interpret_int_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPP_N_IMAGINARY = common dso_local global i32 0, align 4
@CPP_N_UNSIGNED = common dso_local global i32 0, align 4
@CPP_N_SMALL = common dso_local global i32 0, align 4
@CPP_N_MEDIUM = common dso_local global i32 0, align 4
@CPP_N_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @interpret_int_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_int_suffix(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i64, i64* %5, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %5, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %42 [
    i32 117, label %18
    i32 85, label %18
    i32 105, label %21
    i32 73, label %21
    i32 106, label %21
    i32 74, label %21
    i32 108, label %24
    i32 76, label %24
  ]

18:                                               ; preds = %13, %13
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %6, align 8
  br label %43

21:                                               ; preds = %13, %13, %13, %13
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %8, align 8
  br label %43

24:                                               ; preds = %13, %13
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 2
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %86

41:                                               ; preds = %29, %24
  br label %43

42:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %86

43:                                               ; preds = %41, %21, %18
  br label %9

44:                                               ; preds = %9
  %45 = load i64, i64* %7, align 8
  %46 = icmp ugt i64 %45, 2
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = icmp ugt i64 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %8, align 8
  %52 = icmp ugt i64 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %47, %44
  store i32 0, i32* %3, align 4
  br label %86

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @CPP_N_IMAGINARY, align 4
  br label %60

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @CPP_N_UNSIGNED, align 4
  br label %67

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = or i32 %61, %68
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @CPP_N_SMALL, align 4
  br label %83

74:                                               ; preds = %67
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @CPP_N_MEDIUM, align 4
  br label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @CPP_N_LARGE, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  br label %83

83:                                               ; preds = %81, %72
  %84 = phi i32 [ %73, %72 ], [ %82, %81 ]
  %85 = or i32 %69, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %53, %42, %40
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
