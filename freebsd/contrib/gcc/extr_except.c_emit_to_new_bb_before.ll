; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_emit_to_new_bb_before.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_emit_to_new_bb_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@BB_SUPERBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32, i32)* @emit_to_new_bb_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @emit_to_new_bb_before(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_11__* @BLOCK_FOR_INSN(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ei_start(i32 %12)
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %30, %2
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.TYPE_9__* @ei_safe_edge(i32 %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %7, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EDGE_FALLTHRU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = call i32 @force_nonfallthru(%struct.TYPE_9__* %26)
  br label %30

28:                                               ; preds = %18
  %29 = call i32 @ei_next(i32* %8)
  br label %30

30:                                               ; preds = %28, %25
  br label %14

31:                                               ; preds = %14
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @emit_insn_before(i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @BARRIER_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @PREV_INSN(i32 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.TYPE_11__* @BLOCK_FOR_INSN(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_10__* @create_basic_block(i32 %42, i32 %43, i32 %47)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %6, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = call i32 @update_bb_for_insn(%struct.TYPE_10__* %49)
  %51 = load i32, i32* @BB_SUPERBLOCK, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %56
}

declare dso_local i32 @ei_start(i32) #1

declare dso_local %struct.TYPE_11__* @BLOCK_FOR_INSN(i32) #1

declare dso_local %struct.TYPE_9__* @ei_safe_edge(i32) #1

declare dso_local i32 @force_nonfallthru(%struct.TYPE_9__*) #1

declare dso_local i32 @ei_next(i32*) #1

declare dso_local i32 @emit_insn_before(i32, i32) #1

declare dso_local i64 @BARRIER_P(i32) #1

declare dso_local i32 @PREV_INSN(i32) #1

declare dso_local %struct.TYPE_10__* @create_basic_block(i32, i32, i32) #1

declare dso_local i32 @update_bb_for_insn(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
