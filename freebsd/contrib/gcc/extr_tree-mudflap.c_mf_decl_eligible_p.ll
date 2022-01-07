; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mf_decl_eligible_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mf_decl_eligible_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mf_decl_eligible_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf_decl_eligible_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @TREE_CODE(i32 %3)
  %5 = load i64, i64* @VAR_DECL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @PARM_DECL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @TREE_ADDRESSABLE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @TREE_TYPE(i32 %17)
  %19 = call i64 @COMPLETE_OR_VOID_TYPE_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @DECL_HAS_VALUE_EXPR_P(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %21, %16, %12, %7
  %27 = phi i1 [ false, %16 ], [ false, %12 ], [ false, %7 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_ADDRESSABLE(i32) #1

declare dso_local i64 @COMPLETE_OR_VOID_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @DECL_HAS_VALUE_EXPR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
