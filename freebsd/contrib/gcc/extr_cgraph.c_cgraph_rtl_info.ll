; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_rtl_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_rtl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_node = type { %struct.cgraph_rtl_info, i32 }

@FUNCTION_DECL = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgraph_rtl_info* @cgraph_rtl_info(i64 %0) #0 {
  %2 = alloca %struct.cgraph_rtl_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cgraph_node*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @TREE_CODE(i64 %5)
  %7 = load i64, i64* @FUNCTION_DECL, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @gcc_assert(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = call %struct.cgraph_node* @cgraph_node(i64 %11)
  store %struct.cgraph_node* %12, %struct.cgraph_node** %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @current_function_decl, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %18 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TREE_ASM_WRITTEN(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store %struct.cgraph_rtl_info* null, %struct.cgraph_rtl_info** %2, align 8
  br label %26

23:                                               ; preds = %16, %1
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %25 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i32 0, i32 0
  store %struct.cgraph_rtl_info* %25, %struct.cgraph_rtl_info** %2, align 8
  br label %26

26:                                               ; preds = %23, %22
  %27 = load %struct.cgraph_rtl_info*, %struct.cgraph_rtl_info** %2, align 8
  ret %struct.cgraph_rtl_info* %27
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.cgraph_node* @cgraph_node(i64) #1

declare dso_local i32 @TREE_ASM_WRITTEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
