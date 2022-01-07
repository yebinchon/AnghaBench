; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_dump_cgraph_varpool_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_dump_cgraph_varpool_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_varpool_node = type { i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" availability:%s\00", align 1
@cgraph_function_flags_ready = common dso_local global i64 0, align 8
@availability_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"not-ready\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" initialized\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" needed\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" analyzed\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" finalized\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" output\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c" externally_visible\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_cgraph_varpool_node(i32* %0, %struct.cgraph_varpool_node* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cgraph_varpool_node*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cgraph_varpool_node* %1, %struct.cgraph_varpool_node** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %7 = call i8* @cgraph_varpool_node_name(%struct.cgraph_varpool_node* %6)
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i64, i64* @cgraph_function_flags_ready, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8**, i8*** @availability_names, align 8
  %14 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %15 = call i64 @cgraph_variable_initializer_availability(%struct.cgraph_varpool_node* %14)
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i8* [ %17, %12 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %18 ]
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %23 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @DECL_INITIAL(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %19
  %31 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %32 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %40 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %48 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %56 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %64 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @cgraph_varpool_node_name(%struct.cgraph_varpool_node*) #1

declare dso_local i64 @cgraph_variable_initializer_availability(%struct.cgraph_varpool_node*) #1

declare dso_local i64 @DECL_INITIAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
