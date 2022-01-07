; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_regno_clobbered_at_setjmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_regno_clobbered_at_setjmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@n_basic_blocks = common dso_local global i64 0, align 8
@NUM_FIXED_BLOCKS = common dso_local global i64 0, align 8
@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_6__* null, align 8
@regs_live_at_setjmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regno_clobbered_at_setjmp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @n_basic_blocks, align 8
  %5 = load i64, i64* @NUM_FIXED_BLOCKS, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @REG_N_SETS(i32 %9)
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ENTRY_BLOCK_PTR, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @REGNO_REG_SET_P(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12, %8
  %23 = load i32, i32* @regs_live_at_setjmp, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @REGNO_REG_SET_P(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %12
  %28 = phi i1 [ false, %12 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %7
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @REG_N_SETS(i32) #1

declare dso_local i64 @REGNO_REG_SET_P(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
