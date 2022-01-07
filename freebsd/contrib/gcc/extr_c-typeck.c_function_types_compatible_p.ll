; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_function_types_compatible_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_function_types_compatible_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"function return types not compatible due to %<volatile%>\00", align 1
@TYPE_QUAL_VOLATILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @function_types_compatible_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @function_types_compatible_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %8, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @TREE_TYPE(i64 %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @TREE_TYPE(i64 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @TYPE_VOLATILE(i64 %16)
  %18 = load i64, i64* %11, align 8
  %19 = call i64 @TYPE_VOLATILE(i64 %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @pedwarn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @TYPE_VOLATILE(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @TYPE_MAIN_VARIANT(i64 %28)
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @TYPE_QUALS(i64 %30)
  %32 = load i32, i32* @TYPE_QUAL_VOLATILE, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i64 @build_qualified_type(i32 %29, i32 %34)
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %27, %23
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @TYPE_VOLATILE(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @TYPE_MAIN_VARIANT(i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @TYPE_QUALS(i64 %43)
  %45 = load i32, i32* @TYPE_QUAL_VOLATILE, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = call i64 @build_qualified_type(i32 %42, i32 %47)
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %40, %36
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @comptypes_internal(i64 %50, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %114

56:                                               ; preds = %49
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @TYPE_ARG_TYPES(i64 %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @TYPE_ARG_TYPES(i64 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @self_promoting_args_p(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %114

68:                                               ; preds = %63
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @TYPE_ACTUAL_ARG_TYPES(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i64 @TYPE_ACTUAL_ARG_TYPES(i64 %74)
  %76 = call i32 @type_lists_compatible_p(i64 %73, i64 %75)
  %77 = icmp ne i32 1, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 2, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %72, %68
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %114

81:                                               ; preds = %56
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @self_promoting_args_p(i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %114

89:                                               ; preds = %84
  %90 = load i64, i64* %5, align 8
  %91 = call i64 @TYPE_ACTUAL_ARG_TYPES(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i64 @TYPE_ACTUAL_ARG_TYPES(i64 %95)
  %97 = call i32 @type_lists_compatible_p(i64 %94, i64 %96)
  %98 = icmp ne i32 1, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 2, i32* %8, align 4
  br label %100

100:                                              ; preds = %99, %93, %89
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %114

102:                                              ; preds = %81
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @type_lists_compatible_p(i64 %103, i64 %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  br label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %8, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %100, %88, %79, %67, %55
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_VOLATILE(i64) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i64 @build_qualified_type(i32, i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @TYPE_QUALS(i64) #1

declare dso_local i32 @comptypes_internal(i64, i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i32 @self_promoting_args_p(i64) #1

declare dso_local i64 @TYPE_ACTUAL_ARG_TYPES(i64) #1

declare dso_local i32 @type_lists_compatible_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
