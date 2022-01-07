; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_mark_reload_reg_in_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_mark_reload_reg_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hard_regno_nregs = common dso_local global i32** null, align 8
@reload_reg_used = common dso_local global i32 0, align 4
@reload_reg_used_in_input_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_inpaddr_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_output_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_outaddr_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_op_addr = common dso_local global i32 0, align 4
@reload_reg_used_in_op_addr_reload = common dso_local global i32 0, align 4
@reload_reg_used_in_other_addr = common dso_local global i32 0, align 4
@reload_reg_used_in_input = common dso_local global i32* null, align 8
@reload_reg_used_in_output = common dso_local global i32* null, align 8
@reload_reg_used_in_insn = common dso_local global i32 0, align 4
@reload_reg_used_at_all = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @mark_reload_reg_in_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_reload_reg_in_use(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32**, i32*** @hard_regno_nregs, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %101, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %23, %24
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %104

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %97 [
    i32 128, label %29
    i32 136, label %33
    i32 138, label %41
    i32 129, label %49
    i32 131, label %57
    i32 133, label %65
    i32 134, label %69
    i32 132, label %73
    i32 137, label %77
    i32 130, label %85
    i32 135, label %93
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @reload_reg_used, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @SET_HARD_REG_BIT(i32 %30, i32 %31)
  br label %97

33:                                               ; preds = %27
  %34 = load i32*, i32** @reload_reg_used_in_input_addr, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @SET_HARD_REG_BIT(i32 %38, i32 %39)
  br label %97

41:                                               ; preds = %27
  %42 = load i32*, i32** @reload_reg_used_in_inpaddr_addr, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @SET_HARD_REG_BIT(i32 %46, i32 %47)
  br label %97

49:                                               ; preds = %27
  %50 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @SET_HARD_REG_BIT(i32 %54, i32 %55)
  br label %97

57:                                               ; preds = %27
  %58 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @SET_HARD_REG_BIT(i32 %62, i32 %63)
  br label %97

65:                                               ; preds = %27
  %66 = load i32, i32* @reload_reg_used_in_op_addr, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @SET_HARD_REG_BIT(i32 %66, i32 %67)
  br label %97

69:                                               ; preds = %27
  %70 = load i32, i32* @reload_reg_used_in_op_addr_reload, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @SET_HARD_REG_BIT(i32 %70, i32 %71)
  br label %97

73:                                               ; preds = %27
  %74 = load i32, i32* @reload_reg_used_in_other_addr, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @SET_HARD_REG_BIT(i32 %74, i32 %75)
  br label %97

77:                                               ; preds = %27
  %78 = load i32*, i32** @reload_reg_used_in_input, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @SET_HARD_REG_BIT(i32 %82, i32 %83)
  br label %97

85:                                               ; preds = %27
  %86 = load i32*, i32** @reload_reg_used_in_output, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @SET_HARD_REG_BIT(i32 %90, i32 %91)
  br label %97

93:                                               ; preds = %27
  %94 = load i32, i32* @reload_reg_used_in_insn, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @SET_HARD_REG_BIT(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %27, %93, %85, %77, %73, %69, %65, %57, %49, %41, %33, %29
  %98 = load i32, i32* @reload_reg_used_at_all, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @SET_HARD_REG_BIT(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %21

104:                                              ; preds = %21
  ret void
}

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
