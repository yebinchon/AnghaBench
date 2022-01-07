; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_arc_opcode_init_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_arc_opcode_init_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPERANDS = common dso_local global i32 0, align 4
@OP_NONE = common dso_local global i32 0, align 4
@ls_operand = common dso_local global i32* null, align 8
@flag_p = common dso_local global i64 0, align 8
@flagshimm_handled_p = common dso_local global i64 0, align 8
@cond_p = common dso_local global i64 0, align 8
@addrwb_p = common dso_local global i64 0, align 8
@shimm_p = common dso_local global i64 0, align 8
@limm_p = common dso_local global i64 0, align 8
@jumpflags_p = common dso_local global i64 0, align 8
@nullify_p = common dso_local global i64 0, align 8
@nullify = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_opcode_init_insert() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @OPERANDS, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i32, i32* @OP_NONE, align 4
  %8 = load i32*, i32** @ls_operand, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32 %7, i32* %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %2

15:                                               ; preds = %2
  store i64 0, i64* @flag_p, align 8
  store i64 0, i64* @flagshimm_handled_p, align 8
  store i64 0, i64* @cond_p, align 8
  store i64 0, i64* @addrwb_p, align 8
  store i64 0, i64* @shimm_p, align 8
  store i64 0, i64* @limm_p, align 8
  store i64 0, i64* @jumpflags_p, align 8
  store i64 0, i64* @nullify_p, align 8
  store i64 0, i64* @nullify, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
