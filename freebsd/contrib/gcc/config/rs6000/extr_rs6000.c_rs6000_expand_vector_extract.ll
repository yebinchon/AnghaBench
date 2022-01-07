; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_expand_vector_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_expand_vector_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@UNSPEC_STVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_expand_vector_extract(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @GET_MODE(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @GET_MODE_INNER(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @GET_MODE_SIZE(i32 %16)
  %18 = call i32 @assign_stack_temp(i32 %15, i32 %17, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @GET_MODE_SIZE(i32 %22)
  %24 = mul nsw i32 %21, %23
  %25 = call i32 @adjust_address_nv(i32 %19, i32 %20, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @VOIDmode, align 4
  %27 = load i32, i32* @const0_rtx, align 4
  %28 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %27)
  %29 = load i32, i32* @UNSPEC_STVE, align 4
  %30 = call i32 @gen_rtx_UNSPEC(i32 %26, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @VOIDmode, align 4
  %32 = load i32, i32* @VOIDmode, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @gen_rtx_SET(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i32, i32, ...) @gen_rtvec(i32 2, i32 %35, i32 %36)
  %38 = call i32 @gen_rtx_PARALLEL(i32 %31, i32 %37)
  %39 = call i32 @emit_insn(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @adjust_address_nv(i32 %41, i32 %42, i32 0)
  %44 = call i32 @emit_move_insn(i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @assign_stack_temp(i32, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @adjust_address_nv(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, ...) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
