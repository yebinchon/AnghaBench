; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_block_has_only_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_block_has_only_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_6__* null, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@TRAP_IF = common dso_local global i64 0, align 8
@const_true_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*)* @block_has_only_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @block_has_only_trap(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @EXIT_BLOCK_PTR, align 8
  %7 = icmp eq %struct.TYPE_6__* %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @NULL_RTX, align 8
  store i64 %9, i64* %2, align 8
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @EDGE_COUNT(i32 %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i64, i64* @NULL_RTX, align 8
  store i64 %17, i64* %2, align 8
  br label %41

18:                                               ; preds = %10
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i64 @first_active_insn(%struct.TYPE_6__* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = call i64 @BB_END(%struct.TYPE_6__* %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @PATTERN(i64 %26)
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @TRAP_IF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @PATTERN(i64 %32)
  %34 = call i64 @TRAP_CONDITION(i32 %33)
  %35 = load i64, i64* @const_true_rtx, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %31, %25, %18
  %38 = load i64, i64* @NULL_RTX, align 8
  store i64 %38, i64* %2, align 8
  br label %41

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %39, %37, %16, %8
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i64 @EDGE_COUNT(i32) #1

declare dso_local i64 @first_active_insn(%struct.TYPE_6__*) #1

declare dso_local i64 @BB_END(%struct.TYPE_6__*) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @TRAP_CONDITION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
