; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_self_inlining_addr_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_self_inlining_addr_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i64, i64)* }

@ADDR_EXPR = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @self_inlining_addr_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_inlining_addr_expr(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @TREE_CODE(i64 %7)
  %9 = load i64, i64* @ADDR_EXPR, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @TREE_OPERAND(i64 %13, i32 0)
  %15 = call i64 @get_base_address(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 %19(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i1 [ false, %12 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @get_base_address(i32) #1

declare dso_local i32 @TREE_OPERAND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
