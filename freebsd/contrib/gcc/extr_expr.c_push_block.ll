; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_push_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_push_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@ptr_mode = common dso_local global i32 0, align 4
@add_optab = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@virtual_outgoing_args_rtx = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @push_block(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @Pmode, align 4
  %9 = load i32, i32* @ptr_mode, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @convert_modes(i32 %8, i32 %9, i32 %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @CONSTANT_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @plus_constant(i32 %16, i32 %17)
  %19 = call i32 @anti_adjust_stack(i32 %18)
  br label %49

20:                                               ; preds = %3
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @REG_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @anti_adjust_stack(i32 %28)
  br label %48

30:                                               ; preds = %24, %20
  %31 = load i32, i32* @Pmode, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @copy_to_mode_reg(i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32, i32* @Pmode, align 4
  %38 = load i32, i32* @add_optab, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @GEN_INT(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %44 = call i32 @expand_binop(i32 %37, i32 %38, i32 %39, i32 %41, i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %36, %30
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @anti_adjust_stack(i32 %46)
  br label %48

48:                                               ; preds = %45, %27
  br label %49

49:                                               ; preds = %48, %15
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @GET_CODE(i32 %50)
  %52 = load i64, i64* @CONST_INT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i32, i32* @virtual_outgoing_args_rtx, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @INTVAL(i32 %56)
  %58 = sub nsw i32 0, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ 0, %61 ], [ %63, %62 ]
  %66 = sub nsw i32 %58, %65
  %67 = call i32 @plus_constant(i32 %55, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %91

68:                                               ; preds = %49
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @Pmode, align 4
  %76 = load i32, i32* @virtual_outgoing_args_rtx, align 4
  %77 = load i32, i32* @Pmode, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @plus_constant(i32 %78, i32 %79)
  %81 = call i32 @negate_rtx(i32 %77, i32 %80)
  %82 = call i32 @gen_rtx_PLUS(i32 %75, i32 %76, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %90

83:                                               ; preds = %71, %68
  %84 = load i32, i32* @Pmode, align 4
  %85 = load i32, i32* @virtual_outgoing_args_rtx, align 4
  %86 = load i32, i32* @Pmode, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @negate_rtx(i32 %86, i32 %87)
  %89 = call i32 @gen_rtx_PLUS(i32 %84, i32 %85, i32 %88)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %83, %74
  br label %91

91:                                               ; preds = %90, %64
  %92 = load i32, i32* @MODE_INT, align 4
  %93 = call i32 @GET_CLASS_NARROWEST_MODE(i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @memory_address(i32 %93, i32 %94)
  ret i32 %95
}

declare dso_local i32 @convert_modes(i32, i32, i32, i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @anti_adjust_stack(i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @copy_to_mode_reg(i32, i32) #1

declare dso_local i32 @expand_binop(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @negate_rtx(i32, i32) #1

declare dso_local i32 @memory_address(i32, i32) #1

declare dso_local i32 @GET_CLASS_NARROWEST_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
