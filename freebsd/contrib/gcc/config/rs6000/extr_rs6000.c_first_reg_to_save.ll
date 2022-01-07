; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_first_reg_to_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_first_reg_to_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regs_ever_live = common dso_local global i64* null, align 8
@call_used_regs = common dso_local global i32* null, align 8
@RS6000_PIC_OFFSET_TABLE_REGNUM = common dso_local global i32 0, align 4
@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_V4 = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@ABI_DARWIN = common dso_local global i64 0, align 8
@TARGET_TOC = common dso_local global i64 0, align 8
@TARGET_MINIMAL_TOC = common dso_local global i64 0, align 8
@current_function_uses_pic_offset_table = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @first_reg_to_save() #0 {
  %1 = alloca i32, align 4
  store i32 13, i32* %1, align 4
  br label %2

2:                                                ; preds = %45, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 31
  br i1 %4, label %5, label %48

5:                                                ; preds = %2
  %6 = load i64*, i64** @regs_ever_live, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %6, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %5
  %13 = load i32*, i32** @call_used_regs, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %12
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load i64, i64* @DEFAULT_ABI, align 8
  %25 = load i64, i64* @ABI_V4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* @flag_pic, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %27, %23
  %31 = load i64, i64* @DEFAULT_ABI, align 8
  %32 = load i64, i64* @ABI_DARWIN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* @flag_pic, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34, %30
  %38 = load i64, i64* @TARGET_TOC, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* @TARGET_MINIMAL_TOC, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %34, %27, %12
  br label %48

44:                                               ; preds = %40, %37, %19, %5
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %2

48:                                               ; preds = %43, %2
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
