; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_method_tree_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_method_tree_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_node* }
%struct.TYPE_2__ = type { i8* (i32, i32)* }

@.str = private unnamed_addr constant [23 x i8] c"\0APARAM TREE MAP PRINT\0A\00", align 1
@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"method  %s Trees :: \0A\00", align 1
@PARM_DECL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"  param [%d] : %s\0A\00", align 1
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipa_method_tree_print(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgraph_node*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %9, %struct.cgraph_node** %6, align 8
  br label %10

10:                                               ; preds = %44, %1
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %12 = icmp ne %struct.cgraph_node* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = load i32*, i32** %2, align 8
  %15 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %16 = call i8* @cgraph_node_name(%struct.cgraph_node* %15)
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %19 = call i32 @ipa_method_formal_count(%struct.cgraph_node* %18)
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %40, %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ipa_method_get_tree(%struct.cgraph_node* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @PARM_DECL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i8* (i32, i32)*, i8* (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i8* %35(i32 %36, i32 2)
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %34, i8* %37)
  br label %39

39:                                               ; preds = %32, %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %20

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %46 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %45, i32 0, i32 0
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** %46, align 8
  store %struct.cgraph_node* %47, %struct.cgraph_node** %6, align 8
  br label %10

48:                                               ; preds = %10
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) #1

declare dso_local i32 @ipa_method_formal_count(%struct.cgraph_node*) #1

declare dso_local i32 @ipa_method_get_tree(%struct.cgraph_node*, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
