; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_is_delayed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_is_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@NUMOPCODES = common dso_local global i32 0, align 4
@mips_opcodes = common dso_local global %struct.TYPE_2__* null, align 8
@INSN_MACRO = common dso_local global i32 0, align 4
@INSN_UNCOND_BRANCH_DELAY = common dso_local global i32 0, align 4
@INSN_COND_BRANCH_DELAY = common dso_local global i32 0, align 4
@INSN_COND_BRANCH_LIKELY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @is_delayed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_delayed(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %35, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NUMOPCODES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_opcodes, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @INSN_MACRO, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %8
  %18 = load i64, i64* %2, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_opcodes, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %18, %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_opcodes, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %25, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %38

34:                                               ; preds = %17, %8
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %4

38:                                               ; preds = %33, %4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @NUMOPCODES, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_opcodes, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @INSN_UNCOND_BRANCH_DELAY, align 4
  %50 = load i32, i32* @INSN_COND_BRANCH_DELAY, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @INSN_COND_BRANCH_LIKELY, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %48, %53
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %42, %38
  %57 = phi i1 [ false, %38 ], [ %55, %42 ]
  %58 = zext i1 %57 to i32
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
