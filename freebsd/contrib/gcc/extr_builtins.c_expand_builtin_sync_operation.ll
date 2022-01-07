; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_sync_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_sync_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPAND_NORMAL = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @expand_builtin_sync_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_sync_operation(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @TREE_VALUE(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @get_builtin_sync_mem(i32 %18, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @TREE_CHAIN(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @TREE_VALUE(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @EXPAND_NORMAL, align 4
  %27 = call i32 @expand_expr(i32 %24, i32* null, i32 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @GET_MODE(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @VOIDmode, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %6
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @TREE_VALUE(i32 %34)
  %36 = call i32 @TREE_TYPE(i32 %35)
  %37 = call i32 @TYPE_MODE(i32 %36)
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %33, %6
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @convert_modes(i32 %39, i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @expand_sync_operation(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %57

50:                                               ; preds = %38
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @expand_sync_fetch_operation(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @get_builtin_sync_mem(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @expand_expr(i32, i32*, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @convert_modes(i32, i32, i32, i32) #1

declare dso_local i32 @expand_sync_operation(i32, i32, i32) #1

declare dso_local i32 @expand_sync_fetch_operation(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
