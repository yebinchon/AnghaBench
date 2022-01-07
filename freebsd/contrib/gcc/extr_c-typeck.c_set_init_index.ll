; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_set_init_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_set_init_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@designator_erroneous = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"array index in initializer not of integer type\00", align 1
@INTEGER_CST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"nonconstant array index in initializer\00", align 1
@constructor_type = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"array index in non-array initializer\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"array index in initializer exceeds array bounds\00", align 1
@constructor_max_index = common dso_local global i64 0, align 8
@bitsizetype = common dso_local global i32 0, align 4
@constructor_index = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"empty index range in initializer\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"array index range in initializer exceeds array bounds\00", align 1
@designator_depth = common dso_local global i32 0, align 4
@constructor_range_stack = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_init_index(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = call i64 @set_designator(i32 1)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %114

8:                                                ; preds = %2
  store i32 1, i32* @designator_erroneous, align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @TREE_TYPE(i64 %9)
  %11 = call i32 @INTEGRAL_TYPE_P(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @TREE_TYPE(i64 %17)
  %19 = call i32 @INTEGRAL_TYPE_P(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16, %8
  %22 = call i32 @error_init(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %114

23:                                               ; preds = %16, %13
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @INTEGER_CST, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @error_init(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %114

30:                                               ; preds = %23
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @INTEGER_CST, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @error_init(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %113

40:                                               ; preds = %33, %30
  %41 = load i64, i64* @constructor_type, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @ARRAY_TYPE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @error_init(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %112

47:                                               ; preds = %40
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @tree_int_cst_sgn(i64 %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @error_init(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %111

53:                                               ; preds = %47
  %54 = load i64, i64* @constructor_max_index, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i64, i64* @constructor_max_index, align 8
  %58 = load i64, i64* %3, align 8
  %59 = call i64 @tree_int_cst_lt(i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @error_init(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %110

63:                                               ; preds = %56, %53
  %64 = load i32, i32* @bitsizetype, align 4
  %65 = load i64, i64* %3, align 8
  %66 = call i64 @convert(i32 %64, i64 %65)
  store i64 %66, i64* @constructor_index, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %63
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i64 @tree_int_cst_equal(i64 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i64 0, i64* %4, align 8
  br label %97

75:                                               ; preds = %69
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %3, align 8
  %78 = call i64 @tree_int_cst_lt(i64 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @error_init(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %96

82:                                               ; preds = %75
  %83 = load i32, i32* @bitsizetype, align 4
  %84 = load i64, i64* %4, align 8
  %85 = call i64 @convert(i32 %83, i64 %84)
  store i64 %85, i64* %4, align 8
  %86 = load i64, i64* @constructor_max_index, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i64, i64* @constructor_max_index, align 8
  %90 = load i64, i64* %4, align 8
  %91 = call i64 @tree_int_cst_lt(i64 %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 @error_init(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %95

95:                                               ; preds = %93, %88, %82
  br label %96

96:                                               ; preds = %95, %80
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %63
  %99 = load i32, i32* @designator_depth, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @designator_depth, align 4
  store i32 0, i32* @designator_erroneous, align 4
  %101 = load i64, i64* @constructor_range_stack, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, i64* %4, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103, %98
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @push_range_stack(i64 %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %61
  br label %111

111:                                              ; preds = %110, %51
  br label %112

112:                                              ; preds = %111, %45
  br label %113

113:                                              ; preds = %112, %38
  br label %114

114:                                              ; preds = %7, %21, %113, %28
  ret void
}

declare dso_local i64 @set_designator(i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @error_init(i8*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @tree_int_cst_sgn(i64) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

declare dso_local i64 @convert(i32, i64) #1

declare dso_local i64 @tree_int_cst_equal(i64, i64) #1

declare dso_local i32 @push_range_stack(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
