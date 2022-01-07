; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_copysign_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_copysign_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_split_copysign_const(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %10 = load i64*, i64** %2, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64*, i64** %2, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64*, i64** %2, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64*, i64** %2, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 3
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @GET_MODE(i64 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @GET_MODE(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @simplify_gen_subreg(i32 %26, i64 %27, i32 %28, i32 0)
  store i64 %29, i64* %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @gen_rtx_AND(i32 %30, i64 %31, i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i32, i32* @VOIDmode, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @gen_rtx_SET(i32 %34, i64 %35, i64 %36)
  %38 = call i32 @emit_insn(i32 %37)
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @CONST0_RTX(i32 %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @gen_rtx_IOR(i32 %44, i64 %45, i64 %46)
  store i64 %47, i64* %9, align 8
  %48 = load i32, i32* @VOIDmode, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @gen_rtx_SET(i32 %48, i64 %49, i64 %50)
  %52 = call i32 @emit_insn(i32 %51)
  br label %53

53:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @simplify_gen_subreg(i32, i64, i32, i32) #1

declare dso_local i64 @gen_rtx_AND(i32, i64, i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i64 @gen_rtx_IOR(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
