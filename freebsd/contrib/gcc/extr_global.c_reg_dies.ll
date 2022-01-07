; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_reg_dies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_reg_dies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_chain = type { i32 }

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@live_relevant_regs = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i32* null, align 8
@reg_renumber = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.insn_chain*)* @reg_dies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_dies(i32 %0, i32 %1, %struct.insn_chain* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.insn_chain*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.insn_chain* %2, %struct.insn_chain** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %3
  %12 = load i32**, i32*** @hard_regno_nregs, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %40, %11
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %7, align 4
  %24 = icmp sgt i32 %22, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i32, i32* @live_relevant_regs, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @CLEAR_REGNO_REG_SET(i32 %26, i32 %27)
  %29 = load i32*, i32** @fixed_regs, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = load %struct.insn_chain*, %struct.insn_chain** %6, align 8
  %37 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %36, i32 0, i32 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @SET_REGNO_REG_SET(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %25
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %21

43:                                               ; preds = %21
  br label %60

44:                                               ; preds = %3
  %45 = load i32, i32* @live_relevant_regs, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @CLEAR_REGNO_REG_SET(i32 %45, i32 %46)
  %48 = load i64*, i64** @reg_renumber, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.insn_chain*, %struct.insn_chain** %6, align 8
  %56 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %55, i32 0, i32 0
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @SET_REGNO_REG_SET(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %44
  br label %60

60:                                               ; preds = %59, %43
  ret void
}

declare dso_local i32 @CLEAR_REGNO_REG_SET(i32, i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
