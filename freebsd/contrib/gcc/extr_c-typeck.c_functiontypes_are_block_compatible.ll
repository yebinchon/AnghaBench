; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_functiontypes_are_block_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_functiontypes_are_block_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @functiontypes_are_block_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @functiontypes_are_block_compatible(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @TREE_TYPE(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @TREE_TYPE(i32 %10)
  %12 = call i32 @types_are_block_compatible(i32 %9, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TYPE_ARG_TYPES(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @TYPE_ARG_TYPES(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @type_lists_compatible_p(i32 %23, i32 %24)
  %26 = icmp eq i32 %25, 1
  br label %27

27:                                               ; preds = %22, %15
  %28 = phi i1 [ true, %15 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @types_are_block_compatible(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @type_lists_compatible_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
