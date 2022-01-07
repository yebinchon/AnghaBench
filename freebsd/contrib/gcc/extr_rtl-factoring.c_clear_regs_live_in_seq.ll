; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_clear_regs_live_in_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_clear_regs_live_in_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.propagate_block_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32)* @clear_regs_live_in_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_regs_live_in_seq(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.propagate_block_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.TYPE_9__* @BLOCK_FOR_INSN(i64 %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %7, align 8
  %16 = call i32 @INIT_REG_SET(i32* %8)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @COPY_REG_SET(i32* %8, i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = call %struct.propagate_block_info* @init_propagate_block_info(%struct.TYPE_9__* %24, i32* %8, i32* null, i32* null, i32 0)
  store %struct.propagate_block_info* %25, %struct.propagate_block_info** %10, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = call i64 @BB_END(%struct.TYPE_9__* %26)
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %32, %3
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.propagate_block_info*, %struct.propagate_block_info** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @propagate_one_insn(%struct.propagate_block_info* %33, i64 %34)
  store i64 %35, i64* %11, align 8
  br label %28

36:                                               ; preds = %28
  %37 = call i32 @renumbered_reg_set_to_hard_reg_set(i32* %9, i32* %8)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @AND_COMPL_HARD_REG_SET(i32 %39, i32 %40)
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %61, %36
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.propagate_block_info*, %struct.propagate_block_info** %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @propagate_one_insn(%struct.propagate_block_info* %47, i64 %48)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @INSN_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = call i32 @renumbered_reg_set_to_hard_reg_set(i32* %9, i32* %8)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @AND_COMPL_HARD_REG_SET(i32 %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %53, %46
  %62 = load i64, i64* %13, align 8
  store i64 %62, i64* %11, align 8
  br label %42

63:                                               ; preds = %42
  %64 = load %struct.propagate_block_info*, %struct.propagate_block_info** %10, align 8
  %65 = call i32 @free_propagate_block_info(%struct.propagate_block_info* %64)
  %66 = call i32 @CLEAR_REG_SET(i32* %8)
  ret void
}

declare dso_local %struct.TYPE_9__* @BLOCK_FOR_INSN(i64) #1

declare dso_local i32 @INIT_REG_SET(i32*) #1

declare dso_local i32 @COPY_REG_SET(i32*, i32) #1

declare dso_local %struct.propagate_block_info* @init_propagate_block_info(%struct.TYPE_9__*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @BB_END(%struct.TYPE_9__*) #1

declare dso_local i64 @propagate_one_insn(%struct.propagate_block_info*, i64) #1

declare dso_local i32 @renumbered_reg_set_to_hard_reg_set(i32*, i32*) #1

declare dso_local i32 @AND_COMPL_HARD_REG_SET(i32, i32) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @free_propagate_block_info(%struct.propagate_block_info*) #1

declare dso_local i32 @CLEAR_REG_SET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
