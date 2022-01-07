; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_reg_needs_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_reg_needs_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@history = common dso_local global %struct.TYPE_7__* null, align 8
@mips_opts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@INSN_LOAD_MEMORY_DELAY = common dso_local global i64 0, align 8
@gpr_interlocks = common dso_local global i32 0, align 4
@INSN_LOAD_COPROC_DELAY = common dso_local global i64 0, align 8
@cop_interlocks = common dso_local global i32 0, align 4
@INSN_WRITE_GPR_T = common dso_local global i64 0, align 8
@RT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @reg_needs_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_needs_delay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @history, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_opts, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @INSN_LOAD_MEMORY_DELAY, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @gpr_interlocks, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18, %13
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @INSN_LOAD_COPROC_DELAY, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load i32, i32* @cop_interlocks, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26, %18
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @INSN_WRITE_GPR_T, align 8
  %32 = and i64 %30, %31
  %33 = call i32 @know(i64 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @RT, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @history, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @EXTRACT_OPERAND(i32 %35, %struct.TYPE_5__* %39)
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %45

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %26, %21, %1
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @know(i64) #1

declare dso_local i32 @EXTRACT_OPERAND(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
