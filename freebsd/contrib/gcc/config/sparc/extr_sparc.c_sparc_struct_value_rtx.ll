; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_struct_value_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_struct_value_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ARCH64 = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@frame_pointer_rtx = common dso_local global i32 0, align 4
@STRUCT_VALUE_OFFSET = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@sparc_std_struct_return = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@struct_value_alias_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @sparc_struct_value_rtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_struct_value_rtx(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* @TARGET_ARCH64, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @Pmode, align 4
  %21 = load i32, i32* @frame_pointer_rtx, align 4
  %22 = load i32, i32* @STRUCT_VALUE_OFFSET, align 4
  %23 = call i32 @plus_constant(i32 %21, i32 %22)
  %24 = call i32 @gen_rtx_MEM(i32 %20, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %31

25:                                               ; preds = %16
  %26 = load i32, i32* @Pmode, align 4
  %27 = load i32, i32* @stack_pointer_rtx, align 4
  %28 = load i32, i32* @STRUCT_VALUE_OFFSET, align 4
  %29 = call i32 @plus_constant(i32 %27, i32 %28)
  %30 = call i32 @gen_rtx_MEM(i32 %26, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %95

34:                                               ; preds = %31
  %35 = load i64, i64* @sparc_std_struct_return, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %95

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @TREE_TYPE(i64 %38)
  %40 = call i64 @TYPE_SIZE_UNIT(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %95

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @TREE_TYPE(i64 %43)
  %45 = call i64 @TYPE_SIZE_UNIT(i32 %44)
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @INTEGER_CST, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %95

49:                                               ; preds = %42
  %50 = load i32, i32* @Pmode, align 4
  %51 = call i32 @gen_rtx_REG(i32 %50, i32 31)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @SImode, align 4
  %53 = call i32 @gen_reg_rtx(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = call i32 (...) @gen_label_rtx()
  store i32 %54, i32* %9, align 4
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @TREE_TYPE(i64 %55)
  %57 = call i64 @TYPE_SIZE_UNIT(i32 %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @TREE_INT_CST_LOW(i64 %58)
  %60 = and i32 %59, 4095
  %61 = call i32 @GEN_INT(i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @Pmode, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @TREE_INT_CST_LOW(i64 %63)
  %65 = call i32 @assign_stack_local(i32 %62, i32 %64, i32 0)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @SImode, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @plus_constant(i32 %68, i32 8)
  %70 = call i32 @gen_rtx_MEM(i32 %67, i32 %69)
  %71 = call i32 @emit_move_insn(i32 %66, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @GEN_INT(i32 4)
  %75 = call i32 @gen_add3_insn(i32 %72, i32 %73, i32 %74)
  %76 = call i32 @emit_insn(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @EQ, align 4
  %80 = load i32, i32* @const0_rtx, align 4
  %81 = load i32, i32* @SImode, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @emit_cmp_and_jump_insns(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 0, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @GEN_INT(i32 4)
  %87 = call i32 @gen_sub3_insn(i32 %84, i32 %85, i32 %86)
  %88 = call i32 @emit_insn(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @XEXP(i32 %90, i32 0)
  %92 = call i32 @emit_move_insn(i32 %89, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @emit_label(i32 %93)
  br label %95

95:                                               ; preds = %49, %42, %37, %34, %31
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @struct_value_alias_set, align 4
  %98 = call i32 @set_mem_alias_set(i32 %96, i32 %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %15
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i64 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i32 @assign_stack_local(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_add3_insn(i32, i32, i32) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_sub3_insn(i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @set_mem_alias_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
