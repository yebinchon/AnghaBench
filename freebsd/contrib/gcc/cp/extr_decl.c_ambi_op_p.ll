; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_ambi_op_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_ambi_op_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INDIRECT_REF = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@UNARY_PLUS_EXPR = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4
@PREINCREMENT_EXPR = common dso_local global i32 0, align 4
@PREDECREMENT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ambi_op_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ambi_op_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @INDIRECT_REF, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @ADDR_EXPR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @UNARY_PLUS_EXPR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @NEGATE_EXPR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @PREINCREMENT_EXPR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @PREDECREMENT_EXPR, align 4
  %25 = icmp eq i32 %23, %24
  br label %26

26:                                               ; preds = %22, %18, %14, %10, %6, %1
  %27 = phi i1 [ true, %18 ], [ true, %14 ], [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
