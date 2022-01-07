; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-ebb.c_advance_target_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-ebb.c_advance_target_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@last_bb = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, i64)* @advance_target_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @advance_target_bb(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = call %struct.TYPE_9__* @BLOCK_FOR_INSN(i64 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = icmp ne %struct.TYPE_9__* %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @control_flow_insn_p(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @IS_SPECULATION_BRANCHY_CHECK_P(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = call i64 @BB_END(%struct.TYPE_9__* %22)
  %24 = call i32 @IS_SPECULATION_BRANCHY_CHECK_P(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = call i64 @BB_END(%struct.TYPE_9__* %27)
  %29 = call i64 @control_flow_insn_p(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = call i32 @BB_HEAD(%struct.TYPE_9__* %34)
  %36 = call i64 @NOTE_INSN_BASIC_BLOCK_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %31, %26
  %39 = phi i1 [ false, %26 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @gcc_assert(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %3, align 8
  br label %62

43:                                               ; preds = %21, %17, %13, %8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %62

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %54, %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @last_bb, align 8
  %48 = icmp ne %struct.TYPE_9__* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @gcc_assert(i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %4, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = call i64 @bb_note(%struct.TYPE_9__* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = call i64 @BB_END(%struct.TYPE_9__* %57)
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %45, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %3, align 8
  br label %62

62:                                               ; preds = %60, %43, %38
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %63
}

declare dso_local %struct.TYPE_9__* @BLOCK_FOR_INSN(i64) #1

declare dso_local i64 @control_flow_insn_p(i64) #1

declare dso_local i32 @IS_SPECULATION_BRANCHY_CHECK_P(i64) #1

declare dso_local i64 @BB_END(%struct.TYPE_9__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @NOTE_INSN_BASIC_BLOCK_P(i32) #1

declare dso_local i32 @BB_HEAD(%struct.TYPE_9__*) #1

declare dso_local i64 @bb_note(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
