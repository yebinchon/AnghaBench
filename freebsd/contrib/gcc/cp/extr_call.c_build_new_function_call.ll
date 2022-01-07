; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_new_function_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_new_function_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32, i32 }

@error_mark_node = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"no matching function for call to %<%D(%A)%>\00", align 1
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"call of overloaded %<%D(%A)%> is ambiguous\00", align 1
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@conversion_obstack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_new_function_call(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_candidate*, align 8
  %9 = alloca %struct.z_candidate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @resolve_args(i8* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** @error_mark_node, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i8*, i8** @error_mark_node, align 8
  store i8* %20, i8** %4, align 8
  br label %101

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @remove_hidden_names(i8* %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @OVL_CURRENT(i8* %31)
  %33 = call i32 @DECL_NAME(i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %34)
  %36 = load i8*, i8** @error_mark_node, align 8
  store i8* %36, i8** %4, align 8
  br label %101

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %21
  %39 = call i8* @conversion_obstack_alloc(i32 0)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call %struct.z_candidate* @perform_overload_resolution(i8* %40, i8* %41, %struct.z_candidate** %8, i32* %10)
  store %struct.z_candidate* %42, %struct.z_candidate** %9, align 8
  %43 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %44 = icmp ne %struct.z_candidate* %43, null
  br i1 %44, label %93, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %45
  %49 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %50 = icmp ne %struct.z_candidate* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %53 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %58 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @build_function_call(i32 %59, i8* %60)
  store i8* %61, i8** %4, align 8
  br label %101

62:                                               ; preds = %51, %48, %45
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @TREE_CODE(i8* %63)
  %65 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @TREE_OPERAND(i8* %68, i32 0)
  store i8* %69, i8** %5, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @OVL_CURRENT(i8* %74)
  %76 = call i32 @DECL_NAME(i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %76, i8* %77)
  br label %85

79:                                               ; preds = %70
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @OVL_CURRENT(i8* %80)
  %82 = call i32 @DECL_NAME(i32 %81)
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %82, i8* %83)
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %87 = icmp ne %struct.z_candidate* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.z_candidate*, %struct.z_candidate** %8, align 8
  %90 = call i32 @print_z_candidates(%struct.z_candidate* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i8*, i8** @error_mark_node, align 8
  store i8* %92, i8** %12, align 8
  br label %97

93:                                               ; preds = %38
  %94 = load %struct.z_candidate*, %struct.z_candidate** %9, align 8
  %95 = load i32, i32* @LOOKUP_NORMAL, align 4
  %96 = call i8* @build_over_call(%struct.z_candidate* %94, i32 %95)
  store i8* %96, i8** %12, align 8
  br label %97

97:                                               ; preds = %93, %91
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @obstack_free(i32* @conversion_obstack, i8* %98)
  %100 = load i8*, i8** %12, align 8
  store i8* %100, i8** %4, align 8
  br label %101

101:                                              ; preds = %97, %56, %30, %19
  %102 = load i8*, i8** %4, align 8
  ret i8* %102
}

declare dso_local i8* @resolve_args(i8*) #1

declare dso_local i8* @remove_hidden_names(i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i32 @OVL_CURRENT(i8*) #1

declare dso_local i8* @conversion_obstack_alloc(i32) #1

declare dso_local %struct.z_candidate* @perform_overload_resolution(i8*, i8*, %struct.z_candidate**, i32*) #1

declare dso_local i8* @build_function_call(i32, i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i32 @print_z_candidates(%struct.z_candidate*) #1

declare dso_local i8* @build_over_call(%struct.z_candidate*, i32) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
