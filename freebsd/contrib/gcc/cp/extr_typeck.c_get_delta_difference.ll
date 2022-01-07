; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_get_delta_difference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_get_delta_difference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@integer_zero_node = common dso_local global i64 0, align 8
@ba_unique = common dso_local global i32 0, align 4
@ba_check = common dso_local global i32 0, align 4
@bk_inaccessible = common dso_local global i64 0, align 8
@bk_ambig = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"   in pointer to member function conversion\00", align 1
@bk_via_virtual = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"pointer to member cast via virtual base %qT\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"pointer to member conversion via virtual base %qT\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"   in pointer to member conversion\00", align 1
@size_zero_node = common dso_local global i32 0, align 4
@ptrdiff_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i32)* @get_delta_difference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_delta_difference(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* @integer_zero_node, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ba_unique, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @ba_check, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i64 @lookup_base(i64 %15, i64 %16, i32 %24, i64* %10)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @bk_inaccessible, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @bk_ambig, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %23
  %34 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %108

35:                                               ; preds = %29
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @bk_via_virtual, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @BINFO_OFFSET(i64 %43)
  store i64 %44, i64* %11, align 8
  br label %59

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @binfo_from_vbase(i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @BINFO_TYPE(i64 %51)
  %53 = call i32 @warning(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %58

54:                                               ; preds = %45
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @BINFO_TYPE(i64 %55)
  %57 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %42
  br label %107

60:                                               ; preds = %35
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @same_type_ignoring_top_level_qualifiers_p(i64 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %106

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @error_not_base_type(i64 %70, i64 %71)
  %73 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %105

74:                                               ; preds = %66
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @ba_unique, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @ba_check, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = call i64 @lookup_base(i64 %75, i64 %76, i32 %84, i64* %10)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @bk_via_virtual, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* @size_zero_node, align 4
  %94 = load i64, i64* %9, align 8
  %95 = call i64 @BINFO_OFFSET(i64 %94)
  %96 = call i64 @size_diffop(i32 %93, i64 %95)
  store i64 %96, i64* %11, align 8
  br label %103

97:                                               ; preds = %88
  %98 = load i64, i64* %9, align 8
  %99 = call i64 @binfo_from_vbase(i64 %98)
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @BINFO_TYPE(i64 %100)
  %102 = call i32 @warning(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %92
  br label %104

104:                                              ; preds = %103, %83
  br label %105

105:                                              ; preds = %104, %69
  br label %106

106:                                              ; preds = %105, %65
  br label %107

107:                                              ; preds = %106, %59
  br label %108

108:                                              ; preds = %107, %33
  %109 = load i32, i32* @ptrdiff_type_node, align 4
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @convert_to_integer(i32 %109, i64 %110)
  %112 = call i64 @fold_if_not_in_template(i32 %111)
  ret i64 %112
}

declare dso_local i64 @lookup_base(i64, i64, i32, i64*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @BINFO_OFFSET(i64) #1

declare dso_local i64 @binfo_from_vbase(i64) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i32 @BINFO_TYPE(i64) #1

declare dso_local i64 @same_type_ignoring_top_level_qualifiers_p(i64, i64) #1

declare dso_local i32 @error_not_base_type(i64, i64) #1

declare dso_local i64 @size_diffop(i32, i64) #1

declare dso_local i64 @fold_if_not_in_template(i32) #1

declare dso_local i32 @convert_to_integer(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
