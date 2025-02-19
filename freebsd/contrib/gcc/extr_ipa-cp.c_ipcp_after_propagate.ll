; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_after_propagate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_after_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_node* }

@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@TOP = common dso_local global i64 0, align 8
@BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ipcp_after_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcp_after_propagate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %5, %struct.cgraph_node** %3, align 8
  br label %6

6:                                                ; preds = %33, %0
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %8 = icmp ne %struct.cgraph_node* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %11 = call i32 @ipa_method_formal_count(%struct.cgraph_node* %10)
  store i32 %11, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %29, %9
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @ipcp_method_cval(%struct.cgraph_node* %17, i32 %18)
  %20 = call i64 @ipcp_cval_get_cvalue_type(i32 %19)
  %21 = load i64, i64* @TOP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @BOTTOM, align 4
  %27 = call i32 @ipcp_method_cval_set_cvalue_type(%struct.cgraph_node* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %12

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %35 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %34, i32 0, i32 0
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %35, align 8
  store %struct.cgraph_node* %36, %struct.cgraph_node** %3, align 8
  br label %6

37:                                               ; preds = %6
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @ipa_method_formal_count(%struct.cgraph_node*) #1

declare dso_local i64 @ipcp_cval_get_cvalue_type(i32) #1

declare dso_local i32 @ipcp_method_cval(%struct.cgraph_node*, i32) #1

declare dso_local i32 @ipcp_method_cval_set_cvalue_type(%struct.cgraph_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
