; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_rest_of_decl_compilation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_rest_of_decl_compilation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32)* }

@.str = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8
@TV_VARCONST = common dso_local global i32 0, align 4
@TYPE_DECL = common dso_local global i64 0, align 8
@sorrycount = common dso_local global i64 0, align 8
@errorcount = common dso_local global i64 0, align 8
@TV_SYMOUT = common dso_local global i32 0, align 4
@debug_hooks = common dso_local global %struct.TYPE_2__* null, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@asm_out_file = common dso_local global i32 0, align 4
@last_assemble_variable_decl = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rest_of_decl_compilation(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @DECL_ATTRIBUTES(i64 %8)
  %10 = call i64 @lookup_attribute(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @TREE_VALUE(i64 %14)
  %16 = call i64 @TREE_VALUE(i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @TREE_STRING_POINTER(i64 %17)
  %19 = call i64 @get_identifier(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @assemble_alias(i64 %20, i64 %21)
  br label %23

23:                                               ; preds = %13, %3
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @DECL_ASSEMBLER_NAME_SET_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @DECL_REGISTER(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @make_decl_rtl(i64 %32)
  br label %34

34:                                               ; preds = %31, %27, %23
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @TREE_STATIC(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @DECL_EXTERNAL(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @FUNCTION_DECL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %42, %38, %34
  %48 = load i32, i32* @TV_VARCONST, align 4
  %49 = call i32 @timevar_push(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @DECL_DEFER_OUTPUT(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @DECL_INITIAL(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56, %52, %47
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @DECL_EXTERNAL(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @FUNCTION_DECL, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @cgraph_varpool_finalize_decl(i64 %70)
  br label %77

72:                                               ; preds = %64
  %73 = load i64, i64* %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @assemble_variable(i64 %73, i32 %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %72, %69
  br label %78

78:                                               ; preds = %77, %60, %56
  %79 = load i32, i32* @TV_VARCONST, align 4
  %80 = call i32 @timevar_pop(i32 %79)
  br label %107

81:                                               ; preds = %42
  %82 = load i64, i64* %4, align 8
  %83 = call i64 @TREE_CODE(i64 %82)
  %84 = load i64, i64* @TYPE_DECL, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = load i64, i64* @sorrycount, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* @errorcount, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %106, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @TV_SYMOUT, align 4
  %94 = call i32 @timevar_push(i32 %93)
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (i64, i32)*, i32 (i64, i32)** %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 %97(i64 %98, i32 %102)
  %104 = load i32, i32* @TV_SYMOUT, align 4
  %105 = call i32 @timevar_pop(i32 %104)
  br label %106

106:                                              ; preds = %92, %89, %86, %81
  br label %107

107:                                              ; preds = %106, %78
  %108 = load i64, i64* %4, align 8
  %109 = call i64 @TREE_CODE(i64 %108)
  %110 = load i64, i64* @VAR_DECL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i64, i64* %4, align 8
  %114 = call i64 @DECL_EXTERNAL(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @cgraph_varpool_node(i64 %117)
  br label %119

119:                                              ; preds = %116, %112, %107
  ret void
}

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @get_identifier(i32) #1

declare dso_local i32 @TREE_STRING_POINTER(i64) #1

declare dso_local i32 @assemble_alias(i64, i64) #1

declare dso_local i64 @DECL_ASSEMBLER_NAME_SET_P(i64) #1

declare dso_local i64 @DECL_REGISTER(i64) #1

declare dso_local i32 @make_decl_rtl(i64) #1

declare dso_local i64 @TREE_STATIC(i64) #1

declare dso_local i64 @DECL_EXTERNAL(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @DECL_DEFER_OUTPUT(i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i32 @cgraph_varpool_finalize_decl(i64) #1

declare dso_local i32 @assemble_variable(i64, i32, i32, i32) #1

declare dso_local i32 @timevar_pop(i32) #1

declare dso_local i32 @cgraph_varpool_node(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
