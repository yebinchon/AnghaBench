; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_interpret_float_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_interpret_float_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPP_N_IMAGINARY = common dso_local global i32 0, align 4
@CPP_N_SMALL = common dso_local global i32 0, align 4
@CPP_N_MEDIUM = common dso_local global i32 0, align 4
@CPP_N_LARGE = common dso_local global i32 0, align 4
@CPP_N_DEFAULT = common dso_local global i32 0, align 4
@CPP_N_DFLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @interpret_float_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_float_suffix(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i64, i64* %5, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %5, align 8
  %14 = icmp ne i64 %12, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %40 [
    i32 102, label %20
    i32 70, label %20
    i32 108, label %27
    i32 76, label %27
    i32 105, label %34
    i32 73, label %34
    i32 106, label %34
    i32 74, label %34
    i32 100, label %37
    i32 68, label %37
  ]

20:                                               ; preds = %15, %15
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %116

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %6, align 8
  br label %41

27:                                               ; preds = %15, %15
  %28 = load i64, i64* %9, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %116

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %41

34:                                               ; preds = %15, %15, %15, %15
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %8, align 8
  br label %41

37:                                               ; preds = %15, %15
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %9, align 8
  br label %41

40:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %116

41:                                               ; preds = %37, %34, %31, %24
  br label %11

42:                                               ; preds = %11
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i64 0, i64* %9, align 8
  store i64 1, i64* %10, align 8
  br label %52

52:                                               ; preds = %51, %48, %45, %42
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %55, %56
  %58 = icmp ugt i64 %57, 1
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i64, i64* %8, align 8
  %61 = icmp ugt i64 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %52
  store i32 0, i32* %3, align 4
  br label %116

63:                                               ; preds = %59
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %67, %68
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %69, %70
  %72 = icmp ne i64 %71, 2
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %66
  store i32 0, i32* %3, align 4
  br label %116

77:                                               ; preds = %73, %63
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @CPP_N_IMAGINARY, align 4
  br label %83

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @CPP_N_SMALL, align 4
  br label %105

89:                                               ; preds = %83
  %90 = load i64, i64* %10, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @CPP_N_MEDIUM, align 4
  br label %103

94:                                               ; preds = %89
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @CPP_N_LARGE, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @CPP_N_DEFAULT, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  br label %103

103:                                              ; preds = %101, %92
  %104 = phi i32 [ %93, %92 ], [ %102, %101 ]
  br label %105

105:                                              ; preds = %103, %87
  %106 = phi i32 [ %88, %87 ], [ %104, %103 ]
  %107 = or i32 %84, %106
  %108 = load i64, i64* %9, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @CPP_N_DFLOAT, align 4
  br label %113

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = or i32 %107, %114
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %113, %76, %62, %40, %30, %23
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
