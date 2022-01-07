; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_conditional_register_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_conditional_register_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_pic = common dso_local global i64 0, align 8
@fixed_regs = common dso_local global i32* null, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@call_used_regs = common dso_local global i32* null, align 8
@TARGET_CPU_ZARCH = common dso_local global i64 0, align 8
@BASE_REGNUM = common dso_local global i64 0, align 8
@RETURN_REGNUM = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@call_really_used_regs = common dso_local global i32* null, align 8
@TARGET_SOFT_FLOAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s390_conditional_register_usage() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @flag_pic, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32*, i32** @fixed_regs, align 8
  %6 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  store i32 1, i32* %7, align 4
  %8 = load i32*, i32** @call_used_regs, align 8
  %9 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %4, %0
  %12 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32*, i32** @fixed_regs, align 8
  %16 = load i64, i64* @BASE_REGNUM, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** @call_used_regs, align 8
  %19 = load i64, i64* @BASE_REGNUM, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** @fixed_regs, align 8
  %22 = load i64, i64* @RETURN_REGNUM, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** @call_used_regs, align 8
  %25 = load i64, i64* @RETURN_REGNUM, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i64, i64* @TARGET_64BIT, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  store i32 24, i32* %1, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %1, align 4
  %33 = icmp slt i32 %32, 32
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32*, i32** @call_really_used_regs, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** @call_used_regs, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %31

46:                                               ; preds = %31
  br label %64

47:                                               ; preds = %27
  store i32 18, i32* %1, align 4
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %1, align 4
  %50 = icmp slt i32 %49, 20
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32*, i32** @call_really_used_regs, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** @call_used_regs, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %48

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  store i32 16, i32* %1, align 4
  br label %68

68:                                               ; preds = %80, %67
  %69 = load i32, i32* %1, align 4
  %70 = icmp slt i32 %69, 32
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32*, i32** @fixed_regs, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 1, i32* %75, align 4
  %76 = load i32*, i32** @call_used_regs, align 8
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %1, align 4
  br label %68

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %64
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
