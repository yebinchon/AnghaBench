; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgbuild.c_count_basic_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgbuild.c_count_basic_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_FIXED_BLOCKS = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @count_basic_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_basic_blocks(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @NUM_FIXED_BLOCKS, align 4
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i64, i64* %2, align 8
  store i64 %7, i64* %5, align 8
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @LABEL_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @BARRIER_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %19, %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @inside_basic_block_p(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %28, %25
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @control_flow_insn_p(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %36, %33
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @NEXT_INSN(i64 %45)
  store i64 %46, i64* %5, align 8
  br label %8

47:                                               ; preds = %8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @NUM_FIXED_BLOCKS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* @VOIDmode, align 4
  %59 = load i32, i32* @const0_rtx, align 4
  %60 = call i32 @gen_rtx_USE(i32 %58, i32 %59)
  %61 = call i32 @emit_insn(i32 %60)
  %62 = load i32, i32* @NUM_FIXED_BLOCKS, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %53
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @BARRIER_P(i64) #1

declare dso_local i64 @inside_basic_block_p(i64) #1

declare dso_local i64 @control_flow_insn_p(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_USE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
