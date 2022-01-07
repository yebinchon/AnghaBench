; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-gimplify.c_c_genericize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-gimplify.c_c_genericize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i32, i32)* }
%struct.cgraph_node = type { i32, %struct.cgraph_node*, %struct.cgraph_node* }

@TDI_original = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\0A;; Function %s\00", align 1
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c";; enabled by -%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TDF_RAW = common dso_local global i32 0, align 4
@TDF_SLIM = common dso_local global i32 0, align 4
@TDI_generic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_genericize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgraph_node*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @TDI_original, align 4
  %7 = call i32* @dump_begin(i32 %6, i32* %4)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i8* (i32, i32)*, i8* (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i8* %12(i32 %13, i32 2)
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @DECL_ASSEMBLER_NAME(i32 %17)
  %19 = call i8* @IDENTIFIER_POINTER(i32 %18)
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @TDI_original, align 4
  %23 = call i8* @dump_flag_name(i32 %22)
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TDF_RAW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %10
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @DECL_SAVED_TREE(i32 %32)
  %34 = load i32, i32* @TDF_SLIM, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @dump_node(i32 %33, i32 %36, i32* %37)
  br label %44

39:                                               ; preds = %10
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @DECL_SAVED_TREE(i32 %41)
  %43 = call i32 @print_c_tree(i32* %40, i32 %42)
  br label %44

44:                                               ; preds = %39, %31
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @TDI_original, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @dump_end(i32 %47, i32* %48)
  br label %50

50:                                               ; preds = %44, %1
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @gimplify_function_tree(i32 %51)
  %53 = load i32, i32* @TDI_generic, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @dump_function(i32 %53, i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = call %struct.cgraph_node* @cgraph_node(i32 %56)
  store %struct.cgraph_node* %57, %struct.cgraph_node** %5, align 8
  %58 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %59 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %58, i32 0, i32 2
  %60 = load %struct.cgraph_node*, %struct.cgraph_node** %59, align 8
  store %struct.cgraph_node* %60, %struct.cgraph_node** %5, align 8
  br label %61

61:                                               ; preds = %68, %50
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %63 = icmp ne %struct.cgraph_node* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %66 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  call void @c_genericize(i32 %67)
  br label %68

68:                                               ; preds = %64
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %70 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %69, i32 0, i32 1
  %71 = load %struct.cgraph_node*, %struct.cgraph_node** %70, align 8
  store %struct.cgraph_node* %71, %struct.cgraph_node** %5, align 8
  br label %61

72:                                               ; preds = %61
  ret void
}

declare dso_local i32* @dump_begin(i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i8* @dump_flag_name(i32) #1

declare dso_local i32 @dump_node(i32, i32, i32*) #1

declare dso_local i32 @DECL_SAVED_TREE(i32) #1

declare dso_local i32 @print_c_tree(i32*, i32) #1

declare dso_local i32 @dump_end(i32, i32*) #1

declare dso_local i32 @gimplify_function_tree(i32) #1

declare dso_local i32 @dump_function(i32, i32) #1

declare dso_local %struct.cgraph_node* @cgraph_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
