; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_fixed_inc_line_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_fixed_inc_line_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32*, i8* }

@INT_MAX = common dso_local global i32 0, align 4
@DW_LNS_fixed_advance_pc = common dso_local global i32 0, align 4
@O_subtract = common dso_local global i8* null, align 8
@DW_LNS_extended_op = common dso_local global i32 0, align 4
@DW_LNE_end_sequence = common dso_local global i32 0, align 4
@DW_LNS_advance_line = common dso_local global i32 0, align 4
@DW_LNS_copy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @out_fixed_inc_line_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_fixed_inc_line_addr(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @INT_MAX, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* @DW_LNS_fixed_advance_pc, align 4
  %13 = call i32 @out_opcode(i32 %12)
  %14 = load i8*, i8** @O_subtract, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i8* %14, i8** %15, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32* %16, i32** %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32* %18, i32** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = call i32 @emit_expr(%struct.TYPE_3__* %7, i32 2)
  %22 = load i32, i32* @DW_LNS_extended_op, align 4
  %23 = call i32 @out_opcode(i32 %22)
  %24 = call i32 @out_byte(i32 1)
  %25 = load i32, i32* @DW_LNE_end_sequence, align 4
  %26 = call i32 @out_opcode(i32 %25)
  br label %44

27:                                               ; preds = %3
  %28 = load i32, i32* @DW_LNS_advance_line, align 4
  %29 = call i32 @out_opcode(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @out_sleb128(i32 %30)
  %32 = load i32, i32* @DW_LNS_fixed_advance_pc, align 4
  %33 = call i32 @out_opcode(i32 %32)
  %34 = load i8*, i8** @O_subtract, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32* %36, i32** %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32* %38, i32** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = call i32 @emit_expr(%struct.TYPE_3__* %7, i32 2)
  %42 = load i32, i32* @DW_LNS_copy, align 4
  %43 = call i32 @out_opcode(i32 %42)
  br label %44

44:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @out_opcode(i32) #1

declare dso_local i32 @emit_expr(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @out_byte(i32) #1

declare dso_local i32 @out_sleb128(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
