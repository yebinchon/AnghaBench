; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_dfs_initialize_vtbl_ptrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_dfs_initialize_vtbl_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dfs_skip_bases = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dfs_initialize_vtbl_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_initialize_vtbl_ptrs(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @BINFO_TYPE(i32 %7)
  %9 = call i32 @TYPE_CONTAINS_VPTR_P(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @dfs_skip_bases, align 4
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @BINFO_PRIMARY_P(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @BINFO_VIRTUAL_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17, %13
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = call i32 @TREE_VALUE(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @PLUS_EXPR, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @build_base_path(i32 %25, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @expand_virtual_init(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %21, %17
  %33 = load i32, i32* @NULL_TREE, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @TYPE_CONTAINS_VPTR_P(i32) #1

declare dso_local i32 @BINFO_TYPE(i32) #1

declare dso_local i32 @BINFO_PRIMARY_P(i32) #1

declare dso_local i64 @BINFO_VIRTUAL_P(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @build_base_path(i32, i32, i32, i32) #1

declare dso_local i32 @expand_virtual_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
