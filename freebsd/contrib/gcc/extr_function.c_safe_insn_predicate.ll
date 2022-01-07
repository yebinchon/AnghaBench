; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_safe_insn_predicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_safe_insn_predicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.insn_operand_data* }
%struct.insn_operand_data = type { i32 (i32, i32)*, i32 }

@insn_data = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @safe_insn_predicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_insn_predicate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.insn_operand_data*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %36

12:                                               ; preds = %3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @insn_data, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.insn_operand_data*, %struct.insn_operand_data** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %18, i64 %20
  store %struct.insn_operand_data* %21, %struct.insn_operand_data** %8, align 8
  %22 = load %struct.insn_operand_data*, %struct.insn_operand_data** %8, align 8
  %23 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %22, i32 0, i32 0
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = icmp eq i32 (i32, i32)* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %36

27:                                               ; preds = %12
  %28 = load %struct.insn_operand_data*, %struct.insn_operand_data** %8, align 8
  %29 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %28, i32 0, i32 0
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.insn_operand_data*, %struct.insn_operand_data** %8, align 8
  %33 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %30(i32 %31, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %27, %26, %11
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
