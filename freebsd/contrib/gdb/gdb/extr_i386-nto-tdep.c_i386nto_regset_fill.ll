; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-nto-tdep.c_i386nto_regset_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-nto-tdep.c_i386nto_regset_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NTO_REG_GENERAL = common dso_local global i32 0, align 4
@NUM_GPREGS = common dso_local global i32 0, align 4
@NTO_REG_FLOAT = common dso_local global i32 0, align 4
@nto_cpuinfo_valid = common dso_local global i64 0, align 8
@nto_cpuinfo_flags = common dso_local global i32 0, align 4
@X86_CPU_FXSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i386nto_regset_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386nto_regset_fill(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NTO_REG_GENERAL, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NUM_GPREGS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @nto_reg_offset(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = call i32 @regcache_collect(i32 %22, i8* %26)
  br label %28

28:                                               ; preds = %21, %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %12

32:                                               ; preds = %12
  br label %54

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NTO_REG_FLOAT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i64, i64* @nto_cpuinfo_valid, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* @nto_cpuinfo_flags, align 4
  %42 = load i32, i32* @X86_CPU_FXSR, align 4
  %43 = or i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @i387_fill_fxsave(i8* %46, i32 -1)
  br label %51

48:                                               ; preds = %40, %37
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @i387_fill_fsave(i8* %49, i32 -1)
  br label %51

51:                                               ; preds = %48, %45
  br label %53

52:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %55

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %32
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @nto_reg_offset(i32) #1

declare dso_local i32 @regcache_collect(i32, i8*) #1

declare dso_local i32 @i387_fill_fxsave(i8*, i32) #1

declare dso_local i32 @i387_fill_fsave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
