; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_use_pointer_in_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_use_pointer_in_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARM_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @use_pointer_in_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_pointer_in_frame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @TREE_CODE(i32 %4)
  %6 = load i64, i64* @PARM_DECL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_TYPE(i32 %9)
  %11 = call i32 @AGGREGATE_TYPE_P(i32 %10)
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32* @DECL_SIZE(i32 %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32* @DECL_SIZE(i32 %17)
  %19 = call i32 @TREE_CONSTANT(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i1 [ true, %12 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @AGGREGATE_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32* @DECL_SIZE(i32) #1

declare dso_local i32 @TREE_CONSTANT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
