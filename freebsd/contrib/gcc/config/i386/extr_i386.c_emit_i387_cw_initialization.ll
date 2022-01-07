; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_emit_i387_cw_initialization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_emit_i387_cw_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HImode = common dso_local global i32 0, align 4
@SLOT_CW_STORED = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@TARGET_PARTIAL_REG_STALL = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i64 0, align 8
@SLOT_CW_TRUNC = common dso_local global i32 0, align 4
@SLOT_CW_FLOOR = common dso_local global i32 0, align 4
@SLOT_CW_CEIL = common dso_local global i32 0, align 4
@SLOT_CW_MASK_PM = common dso_local global i32 0, align 4
@MAX_386_STACK_LOCALS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_i387_cw_initialization(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @HImode, align 4
  %8 = load i32, i32* @SLOT_CW_STORED, align 4
  %9 = call i32 @assign_386_stack_local(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @HImode, align 4
  %11 = call i32 @gen_reg_rtx(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @gen_x86_fnstcw_1(i32 %12)
  %14 = call i32 @emit_insn(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @emit_move_insn(i32 %15, i32 %16)
  %18 = load i64, i64* @TARGET_64BIT, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* @TARGET_PARTIAL_REG_STALL, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @optimize_size, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %23, %20, %1
  %27 = load i32, i32* %2, align 4
  switch i32 %27, label %66 [
    i32 128, label %28
    i32 130, label %35
    i32 131, label %47
    i32 129, label %59
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @GEN_INT(i32 3072)
  %32 = call i32 @gen_iorhi3(i32 %29, i32 %30, i32 %31)
  %33 = call i32 @emit_insn(i32 %32)
  %34 = load i32, i32* @SLOT_CW_TRUNC, align 4
  store i32 %34, i32* %5, align 4
  br label %68

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @GEN_INT(i32 -3073)
  %39 = call i32 @gen_andhi3(i32 %36, i32 %37, i32 %38)
  %40 = call i32 @emit_insn(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @GEN_INT(i32 1024)
  %44 = call i32 @gen_iorhi3(i32 %41, i32 %42, i32 %43)
  %45 = call i32 @emit_insn(i32 %44)
  %46 = load i32, i32* @SLOT_CW_FLOOR, align 4
  store i32 %46, i32* %5, align 4
  br label %68

47:                                               ; preds = %26
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @GEN_INT(i32 -3073)
  %51 = call i32 @gen_andhi3(i32 %48, i32 %49, i32 %50)
  %52 = call i32 @emit_insn(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @GEN_INT(i32 2048)
  %56 = call i32 @gen_iorhi3(i32 %53, i32 %54, i32 %55)
  %57 = call i32 @emit_insn(i32 %56)
  %58 = load i32, i32* @SLOT_CW_CEIL, align 4
  store i32 %58, i32* %5, align 4
  br label %68

59:                                               ; preds = %26
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @GEN_INT(i32 32)
  %63 = call i32 @gen_iorhi3(i32 %60, i32 %61, i32 %62)
  %64 = call i32 @emit_insn(i32 %63)
  %65 = load i32, i32* @SLOT_CW_MASK_PM, align 4
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %26
  %67 = call i32 (...) @gcc_unreachable()
  br label %68

68:                                               ; preds = %66, %59, %47, %35, %28
  br label %99

69:                                               ; preds = %23
  %70 = load i32, i32* %2, align 4
  switch i32 %70, label %96 [
    i32 128, label %71
    i32 130, label %77
    i32 131, label %83
    i32 129, label %89
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @GEN_INT(i32 12)
  %74 = call i32 @gen_movsi_insv_1(i32 %72, i32 %73)
  %75 = call i32 @emit_insn(i32 %74)
  %76 = load i32, i32* @SLOT_CW_TRUNC, align 4
  store i32 %76, i32* %5, align 4
  br label %98

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @GEN_INT(i32 4)
  %80 = call i32 @gen_movsi_insv_1(i32 %78, i32 %79)
  %81 = call i32 @emit_insn(i32 %80)
  %82 = load i32, i32* @SLOT_CW_FLOOR, align 4
  store i32 %82, i32* %5, align 4
  br label %98

83:                                               ; preds = %69
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @GEN_INT(i32 8)
  %86 = call i32 @gen_movsi_insv_1(i32 %84, i32 %85)
  %87 = call i32 @emit_insn(i32 %86)
  %88 = load i32, i32* @SLOT_CW_CEIL, align 4
  store i32 %88, i32* %5, align 4
  br label %98

89:                                               ; preds = %69
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @GEN_INT(i32 32)
  %93 = call i32 @gen_iorhi3(i32 %90, i32 %91, i32 %92)
  %94 = call i32 @emit_insn(i32 %93)
  %95 = load i32, i32* @SLOT_CW_MASK_PM, align 4
  store i32 %95, i32* %5, align 4
  br label %98

96:                                               ; preds = %69
  %97 = call i32 (...) @gcc_unreachable()
  br label %98

98:                                               ; preds = %96, %89, %83, %77, %71
  br label %99

99:                                               ; preds = %98, %68
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @MAX_386_STACK_LOCALS, align 4
  %102 = icmp slt i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @gcc_assert(i32 %103)
  %105 = load i32, i32* @HImode, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @assign_386_stack_local(i32 %105, i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @emit_move_insn(i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @assign_386_stack_local(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_x86_fnstcw_1(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_iorhi3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_andhi3(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gen_movsi_insv_1(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
