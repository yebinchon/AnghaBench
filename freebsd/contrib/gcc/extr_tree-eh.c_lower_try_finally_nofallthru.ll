; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_lower_try_finally_nofallthru.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_lower_try_finally_nofallthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.leh_state = type { i32 }
%struct.leh_tf_state = type { i32, i8**, %struct.goto_queue_node*, i32*, i64 }
%struct.goto_queue_node = type { i64 }

@LABEL_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.leh_state*, %struct.leh_tf_state*)* @lower_try_finally_nofallthru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lower_try_finally_nofallthru(%struct.leh_state* %0, %struct.leh_tf_state* %1) #0 {
  %3 = alloca %struct.leh_state*, align 8
  %4 = alloca %struct.leh_tf_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.goto_queue_node*, align 8
  %10 = alloca %struct.goto_queue_node*, align 8
  store %struct.leh_state* %0, %struct.leh_state** %3, align 8
  store %struct.leh_tf_state* %1, %struct.leh_tf_state** %4, align 8
  %11 = load %struct.leh_tf_state*, %struct.leh_tf_state** %4, align 8
  %12 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.leh_tf_state*, %struct.leh_tf_state** %4, align 8
  %17 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  br label %21

19:                                               ; preds = %2
  %20 = call i32* (...) @create_artificial_label()
  store i32* %20, i32** %7, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = load %struct.leh_tf_state*, %struct.leh_tf_state** %4, align 8
  %23 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @TREE_OPERAND(i8* %25, i32 1)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %6, align 8
  %28 = load %struct.leh_tf_state*, %struct.leh_tf_state** %4, align 8
  %29 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @TREE_OPERAND(i8* %31, i32 0)
  %33 = load %struct.leh_tf_state*, %struct.leh_tf_state** %4, align 8
  %34 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @LABEL_EXPR, align 4
  %37 = load i32, i32* @void_type_node, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @build1(i32 %36, i32 %37, i32* %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.leh_tf_state*, %struct.leh_tf_state** %4, align 8
  %42 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = call i32 @append_to_statement_list(i32* %40, i8** %43)
  store i32* null, i32** %8, align 8
  %45 = load %struct.leh_tf_state*, %struct.leh_tf_state** %4, align 8
  %46 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %45, i32 0, i32 2
  %47 = load %struct.goto_queue_node*, %struct.goto_queue_node** %46, align 8
  store %struct.goto_queue_node* %47, %struct.goto_queue_node** %9, align 8
  %48 = load %struct.goto_queue_node*, %struct.goto_queue_node** %9, align 8
  %49 = load %struct.leh_tf_state*, %struct.leh_tf_state** %4, align 8
  %50 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %48, i64 %52
  store %struct.goto_queue_node* %53, %struct.goto_queue_node** %10, align 8
  br label %54

54:                                               ; preds = %72, %21
  %55 = load %struct.goto_queue_node*, %struct.goto_queue_node** %9, align 8
  %56 = load %struct.goto_queue_node*, %struct.goto_queue_node** %10, align 8
  %57 = icmp ult %struct.goto_queue_node* %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load %struct.goto_queue_node*, %struct.goto_queue_node** %9, align 8
  %60 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.goto_queue_node*, %struct.goto_queue_node** %9, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @do_return_redirection(%struct.goto_queue_node* %64, i32* %65, i32* null, i32** %8)
  br label %71

67:                                               ; preds = %58
  %68 = load %struct.goto_queue_node*, %struct.goto_queue_node** %9, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @do_goto_redirection(%struct.goto_queue_node* %68, i32* %69, i32* null)
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.goto_queue_node*, %struct.goto_queue_node** %9, align 8
  %74 = getelementptr inbounds %struct.goto_queue_node, %struct.goto_queue_node* %73, i32 1
  store %struct.goto_queue_node* %74, %struct.goto_queue_node** %9, align 8
  br label %54

75:                                               ; preds = %54
  %76 = load %struct.leh_tf_state*, %struct.leh_tf_state** %4, align 8
  %77 = call i32 @replace_goto_queue(%struct.leh_tf_state* %76)
  %78 = load %struct.leh_state*, %struct.leh_state** %3, align 8
  %79 = call i32 @lower_eh_constructs_1(%struct.leh_state* %78, i32** %6)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.leh_tf_state*, %struct.leh_tf_state** %4, align 8
  %82 = getelementptr inbounds %struct.leh_tf_state, %struct.leh_tf_state* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = call i32 @append_to_statement_list(i32* %80, i8** %83)
  ret void
}

declare dso_local i32* @create_artificial_label(...) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i32* @build1(i32, i32, i32*) #1

declare dso_local i32 @append_to_statement_list(i32*, i8**) #1

declare dso_local i32 @do_return_redirection(%struct.goto_queue_node*, i32*, i32*, i32**) #1

declare dso_local i32 @do_goto_redirection(%struct.goto_queue_node*, i32*, i32*) #1

declare dso_local i32 @replace_goto_queue(%struct.leh_tf_state*) #1

declare dso_local i32 @lower_eh_constructs_1(%struct.leh_state*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
