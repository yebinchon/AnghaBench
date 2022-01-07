; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_bswap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_bswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@bswap_optab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @expand_builtin_bswap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_bswap(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @INTEGER_TYPE, align 4
  %13 = load i32, i32* @VOID_TYPE, align 4
  %14 = call i32 @validate_arglist(i32 %11, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @TREE_VALUE(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @TREE_TYPE(i32 %20)
  %22 = call i32 @TYPE_MODE(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @VOIDmode, align 4
  %26 = call i32 @expand_expr(i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @bswap_optab, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @expand_unop(i32 %27, i32 %28, i32 %29, i32 %30, i32 1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @convert_to_mode(i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %17, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @validate_arglist(i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @expand_unop(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @convert_to_mode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
