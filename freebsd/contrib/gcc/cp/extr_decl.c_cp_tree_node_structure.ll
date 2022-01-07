; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_cp_tree_node_structure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_cp_tree_node_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.lang_tree_node = type { i32 }

@TS_CP_DEFAULT_ARG = common dso_local global i32 0, align 4
@TS_CP_IDENTIFIER = common dso_local global i32 0, align 4
@TS_CP_OVERLOAD = common dso_local global i32 0, align 4
@TS_CP_TPI = common dso_local global i32 0, align 4
@TS_CP_TINST_LEVEL = common dso_local global i32 0, align 4
@TS_CP_PTRMEM = common dso_local global i32 0, align 4
@TS_CP_BASELINK = common dso_local global i32 0, align 4
@TS_CP_GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_tree_node_structure(%union.lang_tree_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.lang_tree_node*, align 8
  store %union.lang_tree_node* %0, %union.lang_tree_node** %3, align 8
  %4 = load %union.lang_tree_node*, %union.lang_tree_node** %3, align 8
  %5 = bitcast %union.lang_tree_node* %4 to i32*
  %6 = call i32 @TREE_CODE(i32* %5)
  switch i32 %6, label %21 [
    i32 133, label %7
    i32 132, label %9
    i32 131, label %11
    i32 129, label %13
    i32 128, label %15
    i32 130, label %17
    i32 134, label %19
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @TS_CP_DEFAULT_ARG, align 4
  store i32 %8, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @TS_CP_IDENTIFIER, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @TS_CP_OVERLOAD, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @TS_CP_TPI, align 4
  store i32 %14, i32* %2, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @TS_CP_TINST_LEVEL, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @TS_CP_PTRMEM, align 4
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @TS_CP_BASELINK, align 4
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @TS_CP_GENERIC, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @TREE_CODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
