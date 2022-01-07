; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-bdm.c_bdm_ppc_store_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-bdm.c_bdm_ppc_store_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@BDM_NUM_REGS = common dso_local global i32 0, align 4
@bdm_regmap = common dso_local global i32* null, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@FPLAST_REGNUM = common dso_local global i32 0, align 4
@deprecated_registers = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bdm_ppc_store_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdm_ppc_store_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* @NUM_REGS, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @BDM_NUM_REGS, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** @bdm_regmap, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** @bdm_regmap, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %16, %11
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %77

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %74, %33
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load i32*, i32** @bdm_regmap, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @current_gdbarch, align 4
  %47 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %39
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @current_gdbarch, align 4
  %54 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %52, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @FP0_REGNUM, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @FPLAST_REGNUM, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %8, align 4
  %68 = load i64, i64* @deprecated_registers, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @ocd_write_bdm_registers(i32 %67, i64 %71, i32 4)
  br label %73

73:                                               ; preds = %66, %62, %51, %39
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %35

77:                                               ; preds = %32, %35
  ret void
}

declare dso_local %struct.TYPE_2__* @gdbarch_tdep(i32) #1

declare dso_local i32 @ocd_write_bdm_registers(i32, i64, i32) #1

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
