; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_completed = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@TARGET_USE_MOV0 = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i64 0, align 8
@CCmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_clear(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @reload_completed, align 8
  %6 = call i32 @gcc_assert(i64 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @GET_MODE(i32 %7)
  %9 = call i32 @GET_MODE_SIZE(i32 %8)
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @SImode, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @REGNO(i32 %13)
  %15 = call i32 @gen_rtx_REG(i32 %12, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @VOIDmode, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @const0_rtx, align 4
  %20 = call i32 @gen_rtx_SET(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i64, i64* @reload_completed, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load i32, i32* @TARGET_USE_MOV0, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* @optimize_size, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @VOIDmode, align 4
  %31 = load i32, i32* @CCmode, align 4
  %32 = call i32 @gen_rtx_REG(i32 %31, i32 17)
  %33 = call i32 @gen_rtx_CLOBBER(i32 %30, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @VOIDmode, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @gen_rtvec(i32 2, i32 %35, i32 %36)
  %38 = call i32 @gen_rtx_PARALLEL(i32 %34, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %26, %16
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @emit_insn(i32 %40)
  ret void
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_CLOBBER(i32, i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
