; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_lock_test_and_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_lock_test_and_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPAND_NORMAL = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @expand_builtin_lock_test_and_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_lock_test_and_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @TREE_VALUE(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @get_builtin_sync_mem(i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @TREE_CHAIN(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TREE_VALUE(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EXPAND_NORMAL, align 4
  %20 = call i32 @expand_expr(i32 %17, i32* null, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @GET_MODE(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @VOIDmode, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @TREE_VALUE(i32 %27)
  %29 = call i32 @TREE_TYPE(i32 %28)
  %30 = call i32 @TYPE_MODE(i32 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @convert_modes(i32 %32, i32 %33, i32 %34, i32 1)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @expand_sync_lock_test_and_set(i32 %36, i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local i32 @get_builtin_sync_mem(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @expand_expr(i32, i32*, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @convert_modes(i32, i32, i32, i32) #1

declare dso_local i32 @expand_sync_lock_test_and_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
