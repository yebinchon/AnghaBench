; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_propagate_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_propagate_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32 }
%union.parameter_info = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"propagating const to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*, i32, %union.parameter_info*, i32)* @ipcp_propagate_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipcp_propagate_const(%struct.cgraph_node* %0, i32 %1, %union.parameter_info* %2, i32 %3) #0 {
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.parameter_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cgraph_node* %0, %struct.cgraph_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.parameter_info* %2, %union.parameter_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* @dump_file, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i64, i64* @dump_file, align 8
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %17 = call i8* @cgraph_node_name(%struct.cgraph_node* %16)
  %18 = call i32 @fprintf(i64 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %14, %4
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ipa_method_get_tree(%struct.cgraph_node* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %union.parameter_info*, %union.parameter_info** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @TREE_TYPE(i32 %28)
  %30 = call i32 @build_const_val(%union.parameter_info* %26, i32 %27, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @constant_val_insert(i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) #1

declare dso_local i32 @ipa_method_get_tree(%struct.cgraph_node*, i32) #1

declare dso_local i32 @build_const_val(%union.parameter_info*, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @constant_val_insert(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
