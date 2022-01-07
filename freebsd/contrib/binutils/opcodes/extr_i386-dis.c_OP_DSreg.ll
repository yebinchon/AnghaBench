; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_DSreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_DSreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intel_syntax = common dso_local global i64 0, align 8
@codep = common dso_local global i32* null, align 8
@z_mode = common dso_local global i32 0, align 4
@v_mode = common dso_local global i32 0, align 4
@b_mode = common dso_local global i32 0, align 4
@prefixes = common dso_local global i32 0, align 4
@PREFIX_CS = common dso_local global i32 0, align 4
@PREFIX_DS = common dso_local global i32 0, align 4
@PREFIX_SS = common dso_local global i32 0, align 4
@PREFIX_ES = common dso_local global i32 0, align 4
@PREFIX_FS = common dso_local global i32 0, align 4
@PREFIX_GS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_DSreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_DSreg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @intel_syntax, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load i32*, i32** @codep, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 -1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %19 [
    i32 111, label %11
    i32 165, label %15
    i32 167, label %15
    i32 173, label %15
  ]

11:                                               ; preds = %7
  %12 = load i32, i32* @z_mode, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @intel_operand_size(i32 %12, i32 %13)
  br label %23

15:                                               ; preds = %7, %7, %7
  %16 = load i32, i32* @v_mode, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @intel_operand_size(i32 %16, i32 %17)
  br label %23

19:                                               ; preds = %7
  %20 = load i32, i32* @b_mode, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @intel_operand_size(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15, %11
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* @prefixes, align 4
  %26 = load i32, i32* @PREFIX_CS, align 4
  %27 = load i32, i32* @PREFIX_DS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PREFIX_SS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PREFIX_ES, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PREFIX_FS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PREFIX_GS, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %25, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load i32, i32* @PREFIX_DS, align 4
  %41 = load i32, i32* @prefixes, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* @prefixes, align 4
  br label %43

43:                                               ; preds = %39, %24
  %44 = call i32 (...) @append_seg()
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ptr_reg(i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @intel_operand_size(i32, i32) #1

declare dso_local i32 @append_seg(...) #1

declare dso_local i32 @ptr_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
