; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_compute_can_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_compute_can_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@can_copy = common dso_local global i32* null, align 8
@NUM_MACHINE_MODES = common dso_local global i32 0, align 4
@MODE_CC = common dso_local global i64 0, align 8
@LAST_VIRTUAL_REGISTER = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compute_can_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_can_copy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32*, i32** @can_copy, align 8
  %5 = load i32, i32* @NUM_MACHINE_MODES, align 4
  %6 = call i32 @memset(i32* %4, i32 0, i32 %5)
  %7 = call i32 (...) @start_sequence()
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %44, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @NUM_MACHINE_MODES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = call i64 @GET_MODE_CLASS(i32 %13)
  %15 = load i64, i64* @MODE_CC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = load i32, i32* %1, align 4
  %19 = load i64, i64* @LAST_VIRTUAL_REGISTER, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @gen_rtx_REG(i32 %18, i64 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* @VOIDmode, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @gen_rtx_SET(i32 %22, i32 %23, i32 %24)
  %26 = call i32 @emit_insn(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @PATTERN(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @recog(i32 %28, i32 %29, i32* null)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load i32*, i32** @can_copy, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %17
  br label %43

38:                                               ; preds = %12
  %39 = load i32*, i32** @can_copy, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %37
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %8

47:                                               ; preds = %8
  %48 = call i32 (...) @end_sequence()
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i64 @recog(i32, i32, i32*) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @end_sequence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
