; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_type_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_type_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_TYPE_SIZE = common dso_local global i32 0, align 4
@SHORT_TYPE_SIZE = common dso_local global i32 0, align 4
@INT_TYPE_SIZE = common dso_local global i32 0, align 4
@FLOAT_TYPE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sparc_type_code(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i32 6, i32* %5, align 4
  br label %6

6:                                                ; preds = %124, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 30
  br i1 %8, label %9, label %129

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @TREE_CODE(i32 %10)
  switch i32 %11, label %121 [
    i32 141, label %12
    i32 145, label %14
    i32 140, label %20
    i32 137, label %20
    i32 135, label %26
    i32 131, label %26
    i32 136, label %26
    i32 132, label %32
    i32 130, label %35
    i32 134, label %35
    i32 142, label %38
    i32 128, label %41
    i32 139, label %44
    i32 133, label %100
    i32 143, label %116
    i32 129, label %119
    i32 144, label %119
    i32 138, label %119
  ]

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %2, align 8
  br label %131

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 3, %15
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %4, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %4, align 8
  br label %123

20:                                               ; preds = %9, %9
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 2, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %4, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %4, align 8
  br label %123

26:                                               ; preds = %9, %9, %9
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %4, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %4, align 8
  br label %123

32:                                               ; preds = %9
  %33 = load i64, i64* %4, align 8
  %34 = or i64 %33, 8
  store i64 %34, i64* %2, align 8
  br label %131

35:                                               ; preds = %9, %9
  %36 = load i64, i64* %4, align 8
  %37 = or i64 %36, 9
  store i64 %37, i64* %2, align 8
  br label %131

38:                                               ; preds = %9
  %39 = load i64, i64* %4, align 8
  %40 = or i64 %39, 10
  store i64 %40, i64* %2, align 8
  br label %131

41:                                               ; preds = %9
  %42 = load i64, i64* %4, align 8
  %43 = or i64 %42, 16
  store i64 %43, i64* %2, align 8
  br label %131

44:                                               ; preds = %9
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @TREE_TYPE(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %123

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @TYPE_PRECISION(i32 %50)
  %52 = load i32, i32* @CHAR_TYPE_SIZE, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @TYPE_UNSIGNED(i32 %56)
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 12, i32 2
  %61 = sext i32 %60 to i64
  %62 = or i64 %55, %61
  store i64 %62, i64* %2, align 8
  br label %131

63:                                               ; preds = %49
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @TYPE_PRECISION(i32 %64)
  %66 = load i32, i32* @SHORT_TYPE_SIZE, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i64, i64* %4, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @TYPE_UNSIGNED(i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 13, i32 3
  %75 = sext i32 %74 to i64
  %76 = or i64 %69, %75
  store i64 %76, i64* %2, align 8
  br label %131

77:                                               ; preds = %63
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @TYPE_PRECISION(i32 %78)
  %80 = load i32, i32* @INT_TYPE_SIZE, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i64, i64* %4, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @TYPE_UNSIGNED(i32 %84)
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 14, i32 4
  %89 = sext i32 %88 to i64
  %90 = or i64 %83, %89
  store i64 %90, i64* %2, align 8
  br label %131

91:                                               ; preds = %77
  %92 = load i64, i64* %4, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @TYPE_UNSIGNED(i32 %93)
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 15, i32 5
  %98 = sext i32 %97 to i64
  %99 = or i64 %92, %98
  store i64 %99, i64* %2, align 8
  br label %131

100:                                              ; preds = %9
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @TREE_TYPE(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %123

105:                                              ; preds = %100
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @TYPE_PRECISION(i32 %106)
  %108 = load i32, i32* @FLOAT_TYPE_SIZE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i64, i64* %4, align 8
  %112 = or i64 %111, 6
  store i64 %112, i64* %2, align 8
  br label %131

113:                                              ; preds = %105
  %114 = load i64, i64* %4, align 8
  %115 = or i64 %114, 7
  store i64 %115, i64* %2, align 8
  br label %131

116:                                              ; preds = %9
  %117 = load i64, i64* %4, align 8
  %118 = or i64 %117, 7
  store i64 %118, i64* %2, align 8
  br label %131

119:                                              ; preds = %9, %9, %9
  %120 = load i64, i64* %4, align 8
  store i64 %120, i64* %2, align 8
  br label %131

121:                                              ; preds = %9
  %122 = call i32 (...) @gcc_unreachable()
  br label %123

123:                                              ; preds = %121, %104, %48, %26, %20, %14
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  %126 = add i32 %125, 2
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @TREE_TYPE(i32 %127)
  store i32 %128, i32* %3, align 4
  br label %6

129:                                              ; preds = %6
  %130 = load i64, i64* %4, align 8
  store i64 %130, i64* %2, align 8
  br label %131

131:                                              ; preds = %129, %119, %116, %113, %110, %91, %82, %68, %54, %41, %38, %35, %32, %12
  %132 = load i64, i64* %2, align 8
  ret i64 %132
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
