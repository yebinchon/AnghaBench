; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_warn_if_shadowing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_warn_if_shadowing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_binding = type { i64, i32, %struct.c_binding* }

@warn_shadow = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@OPT_Wshadow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"declaration of %q+D shadows previous non-variable\00", align 1
@PARM_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"declaration of %q+D shadows a parameter\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"declaration of %q+D shadows a global declaration\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"declaration of %q+D shadows a built-in function\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"declaration of %q+D shadows a previous local\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%Jshadowed declaration is here\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @warn_if_shadowing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_if_shadowing(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.c_binding*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @warn_shadow, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @DECL_IS_BUILTIN(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @DECL_FROM_INLINE(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7, %1
  br label %96

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @DECL_NAME(i64 %17)
  %19 = call %struct.c_binding* @I_SYMBOL_BINDING(i32 %18)
  store %struct.c_binding* %19, %struct.c_binding** %3, align 8
  br label %20

20:                                               ; preds = %92, %16
  %21 = load %struct.c_binding*, %struct.c_binding** %3, align 8
  %22 = icmp ne %struct.c_binding* %21, null
  br i1 %22, label %23, label %96

23:                                               ; preds = %20
  %24 = load %struct.c_binding*, %struct.c_binding** %3, align 8
  %25 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %91

28:                                               ; preds = %23
  %29 = load %struct.c_binding*, %struct.c_binding** %3, align 8
  %30 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %2, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %91

34:                                               ; preds = %28
  %35 = load %struct.c_binding*, %struct.c_binding** %3, align 8
  %36 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %91, label %39

39:                                               ; preds = %34
  %40 = load %struct.c_binding*, %struct.c_binding** %3, align 8
  %41 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @error_mark_node, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @OPT_Wshadow, align 4
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @warning(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %96

50:                                               ; preds = %39
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @PARM_DECL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @OPT_Wshadow, align 4
  %57 = load i64, i64* %2, align 8
  %58 = call i32 @warning(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  br label %86

59:                                               ; preds = %50
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @DECL_FILE_SCOPE_P(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @OPT_Wshadow, align 4
  %65 = load i64, i64* %2, align 8
  %66 = call i32 @warning(i32 %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  br label %85

67:                                               ; preds = %59
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @TREE_CODE(i64 %68)
  %70 = load i64, i64* @FUNCTION_DECL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i64, i64* %4, align 8
  %74 = call i64 @DECL_BUILT_IN(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @OPT_Wshadow, align 4
  %78 = load i64, i64* %2, align 8
  %79 = call i32 @warning(i32 %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  br label %96

80:                                               ; preds = %72, %67
  %81 = load i32, i32* @OPT_Wshadow, align 4
  %82 = load i64, i64* %2, align 8
  %83 = call i32 @warning(i32 %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* @OPT_Wshadow, align 4
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @warning(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %89)
  br label %96

91:                                               ; preds = %34, %28, %23
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.c_binding*, %struct.c_binding** %3, align 8
  %94 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %93, i32 0, i32 2
  %95 = load %struct.c_binding*, %struct.c_binding** %94, align 8
  store %struct.c_binding* %95, %struct.c_binding** %3, align 8
  br label %20

96:                                               ; preds = %15, %87, %76, %46, %20
  ret void
}

declare dso_local i64 @DECL_IS_BUILTIN(i64) #1

declare dso_local i64 @DECL_FROM_INLINE(i64) #1

declare dso_local %struct.c_binding* @I_SYMBOL_BINDING(i32) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_FILE_SCOPE_P(i64) #1

declare dso_local i64 @DECL_BUILT_IN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
