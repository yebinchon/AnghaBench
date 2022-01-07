; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_select_alt_pic_regnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_select_alt_pic_regnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_is_leaf = common dso_local global i64 0, align 8
@current_function_profile = common dso_local global i32 0, align 4
@ix86_current_function_calls_tls_descriptor = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i32* null, align 8
@INVALID_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ix86_select_alt_pic_regnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_select_alt_pic_regnum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @current_function_is_leaf, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %0
  %6 = load i32, i32* @current_function_profile, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @ix86_current_function_calls_tls_descriptor, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %8
  store i32 2, i32* %2, align 4
  br label %12

12:                                               ; preds = %25, %11
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32*, i32** @regs_ever_live, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %31

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %2, align 4
  br label %12

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28, %8, %5, %0
  %30 = load i32, i32* @INVALID_REGNUM, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
