; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_split_atomic_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_split_atomic_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCmode = common dso_local global i32 0, align 4
@CR0_REGNO = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@NOT = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@UNSPEC_AND = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_split_atomic_op(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @GET_MODE(i64 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* @CCmode, align 4
  %20 = load i32, i32* @CR0_REGNO, align 4
  %21 = call i64 @gen_rtx_REG(i32 %19, i32 %20)
  store i64 %21, i64* %16, align 8
  %22 = call i32 (...) @gen_memory_barrier()
  %23 = call i32 @emit_insn(i32 %22)
  %24 = call i64 (...) @gen_label_rtx()
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = call i32 @emit_label(i64 %25)
  %27 = load i32, i32* @VOIDmode, align 4
  %28 = load i64, i64* %14, align 8
  %29 = call i64 @gen_rtx_LABEL_REF(i32 %27, i64 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @NULL_RTX, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %33, %6
  %36 = load i32, i32* %13, align 4
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @emit_load_locked(i32 %36, i64 %37, i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NOT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @gen_rtx_NOT(i32 %45, i64 %46)
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @gen_rtx_AND(i32 %44, i32 %47, i64 %48)
  store i64 %49, i64* %15, align 8
  br label %68

50:                                               ; preds = %35
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @AND, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @gen_rtvec(i32 2, i64 %56, i64 %57)
  %59 = load i32, i32* @UNSPEC_AND, align 4
  %60 = call i64 @gen_rtx_UNSPEC(i32 %55, i32 %58, i32 %59)
  store i64 %60, i64* %15, align 8
  br label %67

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @gen_rtx_fmt_ee(i32 %62, i32 %63, i64 %64, i64 %65)
  store i64 %66, i64* %15, align 8
  br label %67

67:                                               ; preds = %61, %54
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @NULL_RTX, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* @VOIDmode, align 4
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %15, align 8
  %76 = call i64 @copy_rtx(i64 %75)
  %77 = call i32 @gen_rtx_SET(i32 %73, i64 %74, i64 %76)
  %78 = call i32 @emit_insn(i32 %77)
  br label %79

79:                                               ; preds = %72, %68
  %80 = load i32, i32* @VOIDmode, align 4
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i32 @gen_rtx_SET(i32 %80, i64 %81, i64 %82)
  %84 = call i32 @emit_insn(i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @emit_store_conditional(i32 %85, i64 %86, i64 %87, i64 %88)
  %90 = load i32, i32* @VOIDmode, align 4
  %91 = load i64, i64* %16, align 8
  %92 = load i32, i32* @const0_rtx, align 4
  %93 = call i64 @gen_rtx_NE(i32 %90, i64 %91, i32 %92)
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @emit_unlikely_jump(i64 %94, i64 %95)
  %97 = call i32 (...) @gen_isync()
  %98 = call i32 @emit_insn(i32 %97)
  ret void
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_memory_barrier(...) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i64 @gen_rtx_LABEL_REF(i32, i64) #1

declare dso_local i32 @emit_load_locked(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_AND(i32, i32, i64) #1

declare dso_local i32 @gen_rtx_NOT(i32, i64) #1

declare dso_local i64 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @copy_rtx(i64) #1

declare dso_local i32 @emit_store_conditional(i32, i64, i64, i64) #1

declare dso_local i64 @gen_rtx_NE(i32, i64, i32) #1

declare dso_local i32 @emit_unlikely_jump(i64, i64) #1

declare dso_local i32 @gen_isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
