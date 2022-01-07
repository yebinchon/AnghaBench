; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_save_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_save_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@pic_offset_table_rtx = common dso_local global i64 0, align 8
@REAL_PIC_OFFSET_TABLE_REGNUM = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i64* null, align 8
@current_function_profile = common dso_local global i64 0, align 8
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@current_function_uses_const_pool = common dso_local global i64 0, align 8
@INVALID_REGNUM = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@call_used_regs = common dso_local global i32* null, align 8
@fixed_regs = common dso_local global i32* null, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ix86_save_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_save_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @pic_offset_table_rtx, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @REAL_PIC_OFFSET_TABLE_REGNUM, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load i64*, i64** @regs_ever_live, align 8
  %16 = load i32, i32* @REAL_PIC_OFFSET_TABLE_REGNUM, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  %22 = load i64, i64* @current_function_profile, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @current_function_calls_eh_return, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* @current_function_uses_const_pool, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27, %24, %21, %14
  %31 = call i32 (...) @ix86_select_alt_pic_regnum()
  %32 = load i32, i32* @INVALID_REGNUM, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %111

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %111

36:                                               ; preds = %27, %10, %2
  %37 = load i64, i64* @current_function_calls_eh_return, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @EH_RETURN_DATA_REGNO(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @INVALID_REGNUM, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %59

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %111

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %43

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %39, %36
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @REGNO(i64 %73)
  %75 = icmp eq i32 %68, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %111

77:                                               ; preds = %67, %60
  %78 = load i64*, i64** @regs_ever_live, align 8
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %77
  %85 = load i32*, i32** @call_used_regs, align 8
  %86 = load i32, i32* %4, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %84
  %92 = load i32*, i32** @fixed_regs, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @frame_pointer_needed, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i1 [ true, %98 ], [ %105, %102 ]
  br label %108

108:                                              ; preds = %106, %91, %84, %77
  %109 = phi i1 [ false, %91 ], [ false, %84 ], [ false, %77 ], [ %107, %106 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %108, %76, %54, %35, %34
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @ix86_select_alt_pic_regnum(...) #1

declare dso_local i32 @EH_RETURN_DATA_REGNO(i32) #1

declare dso_local i32 @REGNO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
