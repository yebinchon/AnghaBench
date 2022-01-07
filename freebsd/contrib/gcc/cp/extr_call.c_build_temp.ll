; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_temp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warningcount = common dso_local global i32 0, align 4
@errorcount = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@complete_ctor_identifier = common dso_local global i32 0, align 4
@warning0 = common dso_local global i32* null, align 8
@error = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32**)* @build_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_temp(i32 %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %11 = load i32, i32* @warningcount, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @errorcount, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @NULL_TREE, align 4
  %14 = load i32, i32* @complete_ctor_identifier, align 4
  %15 = load i32, i32* @NULL_TREE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @build_tree_list(i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @build_special_member_call(i32 %13, i32 %14, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @warningcount, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32*, i32** @warning0, align 8
  %26 = load i32**, i32*** %8, align 8
  store i32* %25, i32** %26, align 8
  br label %37

27:                                               ; preds = %4
  %28 = load i32, i32* @errorcount, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32*, i32** @error, align 8
  %33 = load i32**, i32*** %8, align 8
  store i32* %32, i32** %33, align 8
  br label %36

34:                                               ; preds = %27
  %35 = load i32**, i32*** %8, align 8
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @build_special_member_call(i32, i32, i32, i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
