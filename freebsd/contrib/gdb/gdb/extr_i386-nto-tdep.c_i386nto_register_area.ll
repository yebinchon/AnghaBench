; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-nto-tdep.c_i386nto_register_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-nto-tdep.c_i386nto_register_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NTO_REG_GENERAL = common dso_local global i32 0, align 4
@NUM_GPREGS = common dso_local global i32 0, align 4
@NTO_REG_FLOAT = common dso_local global i32 0, align 4
@nto_cpuinfo_valid = common dso_local global i64 0, align 8
@nto_cpuinfo_flags = common dso_local global i32 0, align 4
@X86_CPU_FXSR = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @i386nto_register_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386nto_register_area(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NTO_REG_GENERAL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @NUM_GPREGS, align 4
  %21 = mul nsw i32 %20, 4
  store i32 %21, i32* %4, align 4
  br label %61

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @nto_reg_offset(i32 %23)
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %61

30:                                               ; preds = %22
  store i32 4, i32* %4, align 4
  br label %61

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NTO_REG_FLOAT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load i64, i64* @nto_cpuinfo_valid, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* @nto_cpuinfo_flags, align 4
  %40 = load i32, i32* @X86_CPU_FXSR, align 4
  %41 = or i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 32, i32* %9, align 4
  store i32 16, i32* %10, align 4
  store i32 512, i32* %11, align 4
  br label %45

44:                                               ; preds = %38, %35
  store i32 28, i32* %9, align 4
  store i32 10, i32* %10, align 4
  store i32 128, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %61

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @FP0_REGNUM, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = mul i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %55, %56
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  store i32 10, i32* %4, align 4
  br label %61

59:                                               ; preds = %31
  br label %60

60:                                               ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %50, %48, %30, %29, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @nto_reg_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
