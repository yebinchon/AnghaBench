; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_tc_get_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_tc_get_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i32 0, align 4
@RWARN = common dso_local global i32 0, align 4
@RTYPE_NUM = common dso_local global i32 0, align 4
@RTYPE_GP = common dso_local global i32 0, align 4
@SP = common dso_local global i32 0, align 4
@mips_frame_reg = common dso_local global i32 0, align 4
@mips_frame_reg_valid = common dso_local global i32 0, align 4
@mips_cprestore_valid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_get_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @SKIP_WHITESPACE()
  %5 = load i32, i32* @RWARN, align 4
  %6 = load i32, i32* @RTYPE_NUM, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @RTYPE_GP, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @reg_lookup(i32* @input_line_pointer, i32 %9, i32* %3)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @SP, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* @mips_frame_reg, align 4
  store i32 1, i32* @mips_frame_reg_valid, align 4
  store i64 0, i64* @mips_cprestore_valid, align 8
  br label %25

25:                                               ; preds = %23, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @reg_lookup(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
