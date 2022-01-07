; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa.c_walk_use_def_chains.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa.c_walk_use_def_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pointer_set_t = type { i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@PHI_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @walk_use_def_chains(i32 %0, i32 (i32, i32, i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32 (i32, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pointer_set_t*, align 8
  store i32 %0, i32* %5, align 4
  store i32 (i32, i32, i8*)* %1, i32 (i32, i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @SSA_NAME, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @gcc_assert(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @SSA_NAME_DEF_STMT(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @PHI_NODE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 %24(i32 %25, i32 %26, i8* %27)
  br label %39

29:                                               ; preds = %4
  %30 = call %struct.pointer_set_t* (...) @pointer_set_create()
  store %struct.pointer_set_t* %30, %struct.pointer_set_t** %10, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.pointer_set_t*, %struct.pointer_set_t** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @walk_use_def_chains_1(i32 %31, i32 (i32, i32, i8*)* %32, i8* %33, %struct.pointer_set_t* %34, i32 %35)
  %37 = load %struct.pointer_set_t*, %struct.pointer_set_t** %10, align 8
  %38 = call i32 @pointer_set_destroy(%struct.pointer_set_t* %37)
  br label %39

39:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local %struct.pointer_set_t* @pointer_set_create(...) #1

declare dso_local i32 @walk_use_def_chains_1(i32, i32 (i32, i32, i8*)*, i8*, %struct.pointer_set_t*, i32) #1

declare dso_local i32 @pointer_set_destroy(%struct.pointer_set_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
