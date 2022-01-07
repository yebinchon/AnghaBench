; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_do_return_redirection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_do_return_redirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goto_queue_node = type { i32, i8*, i8* }

@current_function_decl = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"rettmp\00", align 1
@RETURN_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@GOTO_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goto_queue_node*, i8*, i8*, i8**)* @do_return_redirection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_return_redirection(%struct.goto_queue_node* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.goto_queue_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.goto_queue_node* %0, %struct.goto_queue_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %14 = load %struct.goto_queue_node*, %struct.goto_queue_node** %5, align 8
  %15 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @TREE_OPERAND(i8* %16, i32 0)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %101

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @TREE_CODE(i8* %21)
  switch i32 %22, label %98 [
    i32 128, label %23
    i32 129, label %43
  ]

23:                                               ; preds = %20
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = load i8**, i8*** %8, align 8
  store i8* %28, i8** %29, align 8
  br label %37

30:                                               ; preds = %23
  %31 = load i8**, i8*** %8, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp eq i8* %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @gcc_assert(i32 %35)
  br label %37

37:                                               ; preds = %30, %27
  %38 = load %struct.goto_queue_node*, %struct.goto_queue_node** %5, align 8
  %39 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.goto_queue_node*, %struct.goto_queue_node** %5, align 8
  %42 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %100

43:                                               ; preds = %20
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @TREE_OPERAND(i8* %44, i32 0)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i8* @TREE_OPERAND(i8* %46, i32 1)
  store i8* %47, i8** %13, align 8
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %67, label %51

51:                                               ; preds = %43
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @TREE_TYPE(i8* %52)
  %54 = load i8*, i8** @current_function_decl, align 8
  %55 = call i32 @TREE_TYPE(i8* %54)
  %56 = call i32 @aggregate_value_p(i32 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i8*, i8** %11, align 8
  store i8* %59, i8** %12, align 8
  br label %64

60:                                               ; preds = %51
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @TREE_TYPE(i8* %61)
  %63 = call i8* @create_tmp_var(i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %63, i8** %12, align 8
  br label %64

64:                                               ; preds = %60, %58
  %65 = load i8*, i8** %12, align 8
  %66 = load i8**, i8*** %8, align 8
  store i8* %65, i8** %66, align 8
  br label %70

67:                                               ; preds = %43
  %68 = load i8**, i8*** %8, align 8
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %12, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @TREE_TYPE(i8* %71)
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = call i8* @build2(i32 129, i32 %72, i8* %73, i8* %74)
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.goto_queue_node*, %struct.goto_queue_node** %5, align 8
  %78 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %77, i32 0, i32 0
  %79 = call i32 @append_to_statement_list(i8* %76, i32* %78)
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i8*, i8** %11, align 8
  store i8* %84, i8** %10, align 8
  br label %91

85:                                               ; preds = %70
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @TREE_TYPE(i8* %86)
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i8* @build2(i32 129, i32 %87, i8* %88, i8* %89)
  store i8* %90, i8** %10, align 8
  br label %91

91:                                               ; preds = %85, %83
  %92 = load i32, i32* @RETURN_EXPR, align 4
  %93 = load i32, i32* @void_type_node, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = call i8* @build1(i32 %92, i32 %93, i8* %94)
  %96 = load %struct.goto_queue_node*, %struct.goto_queue_node** %5, align 8
  %97 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %20, %91
  %99 = call i32 (...) @gcc_unreachable()
  br label %100

100:                                              ; preds = %98, %37
  br label %107

101:                                              ; preds = %4
  %102 = load %struct.goto_queue_node*, %struct.goto_queue_node** %5, align 8
  %103 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.goto_queue_node*, %struct.goto_queue_node** %5, align 8
  %106 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %101, %100
  %108 = load i8*, i8** %7, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.goto_queue_node*, %struct.goto_queue_node** %5, align 8
  %113 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %112, i32 0, i32 0
  %114 = call i32 @append_to_statement_list(i8* %111, i32* %113)
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i32, i32* @GOTO_EXPR, align 4
  %117 = load i32, i32* @void_type_node, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = call i8* @build1(i32 %116, i32 %117, i8* %118)
  store i8* %119, i8** %10, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load %struct.goto_queue_node*, %struct.goto_queue_node** %5, align 8
  %122 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %121, i32 0, i32 0
  %123 = call i32 @append_to_statement_list(i8* %120, i32* %122)
  ret void
}

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i32 @TREE_CODE(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @aggregate_value_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i8*) #1

declare dso_local i8* @create_tmp_var(i32, i8*) #1

declare dso_local i8* @build2(i32, i32, i8*, i8*) #1

declare dso_local i32 @append_to_statement_list(i8*, i32*) #1

declare dso_local i8* @build1(i32, i32, i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
