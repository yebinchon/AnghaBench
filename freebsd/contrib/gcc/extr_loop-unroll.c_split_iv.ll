; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_split_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_split_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv_to_split = type { i64, i64 }

@MULT = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iv_to_split*, i64, i32)* @split_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_iv(%struct.iv_to_split* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.iv_to_split*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.iv_to_split* %0, %struct.iv_to_split** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.iv_to_split*, %struct.iv_to_split** %4, align 8
  %17 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @GET_MODE(i64 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load %struct.iv_to_split*, %struct.iv_to_split** %4, align 8
  %24 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  br label %46

26:                                               ; preds = %3
  %27 = load i32, i32* @MULT, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.iv_to_split*, %struct.iv_to_split** %4, align 8
  %30 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @gen_int_mode(i32 %32, i32 %33)
  %35 = call i64 @simplify_gen_binary(i32 %27, i32 %28, i64 %31, i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i32, i32* @PLUS, align 4
  %37 = load %struct.iv_to_split*, %struct.iv_to_split** %4, align 8
  %38 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @GET_MODE(i64 %39)
  %41 = load %struct.iv_to_split*, %struct.iv_to_split** %4, align 8
  %42 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @simplify_gen_binary(i32 %36, i32 %40, i64 %43, i64 %44)
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %26, %22
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @single_set(i64 %47)
  %49 = load %struct.iv_to_split*, %struct.iv_to_split** %4, align 8
  %50 = call i64* @get_ivts_expr(i64 %48, %struct.iv_to_split* %49)
  store i64* %50, i64** %8, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @validate_change(i64 %51, i64* %52, i64 %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %115

57:                                               ; preds = %46
  %58 = call i32 (...) @start_sequence()
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @gen_reg_rtx(i32 %59)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @force_operand(i64 %61, i64 %62)
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @emit_move_insn(i64 %68, i64 %69)
  br label %71

71:                                               ; preds = %67, %57
  %72 = call i64 (...) @get_insns()
  store i64 %72, i64* %9, align 8
  %73 = call i32 (...) @end_sequence()
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @emit_insn_before(i64 %74, i64 %75)
  %77 = load i64, i64* %5, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @validate_change(i64 %77, i64* %78, i64 %79, i32 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %115

83:                                               ; preds = %71
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @single_set(i64 %84)
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @gcc_assert(i64 %86)
  %88 = call i32 (...) @start_sequence()
  %89 = load i64, i64* %11, align 8
  %90 = load i64*, i64** %8, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @SET_SRC(i64 %91)
  %93 = call i64 @copy_rtx(i32 %92)
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %15, align 8
  %95 = call i32 @SET_DEST(i64 %94)
  %96 = call i64 @copy_rtx(i32 %95)
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %14, align 8
  %99 = call i64 @force_operand(i64 %97, i64 %98)
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %14, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %83
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i32 @emit_move_insn(i64 %104, i64 %105)
  br label %107

107:                                              ; preds = %103, %83
  %108 = call i64 (...) @get_insns()
  store i64 %108, i64* %9, align 8
  %109 = call i32 (...) @end_sequence()
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @emit_insn_before(i64 %110, i64 %111)
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @delete_insn(i64 %113)
  br label %115

115:                                              ; preds = %107, %82, %56
  ret void
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @simplify_gen_binary(i32, i32, i64, i64) #1

declare dso_local i64 @gen_int_mode(i32, i32) #1

declare dso_local i64* @get_ivts_expr(i64, %struct.iv_to_split*) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @validate_change(i64, i64*, i64, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @force_operand(i64, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_insn_before(i64, i64) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @copy_rtx(i32) #1

declare dso_local i32 @SET_SRC(i64) #1

declare dso_local i32 @SET_DEST(i64) #1

declare dso_local i32 @delete_insn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
