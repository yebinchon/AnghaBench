; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_record_dead_and_set_regs_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_record_dead_and_set_regs_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i64 0, align 8
@mem_last_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i8*)* @record_dead_and_set_regs_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_dead_and_set_regs_1(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @GET_CODE(i64 %10)
  %12 = load i64, i64* @SUBREG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @SUBREG_REG(i64 %15)
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @REG_P(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @NULL_RTX, align 8
  %27 = load i64, i64* @NULL_RTX, align 8
  %28 = call i32 @record_value_for_reg(i64 %25, i64 %26, i64 %27)
  br label %29

29:                                               ; preds = %24, %20
  br label %108

30:                                               ; preds = %17
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @REG_P(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @GET_CODE(i64 %35)
  %37 = load i64, i64* @SET, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @SET_DEST(i64 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @SET_SRC(i64 %47)
  %49 = call i32 @record_value_for_reg(i64 %45, i64 %46, i64 %48)
  br label %93

50:                                               ; preds = %39, %34
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @GET_CODE(i64 %51)
  %53 = load i64, i64* @SET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @SET_DEST(i64 %56)
  %58 = call i64 @GET_CODE(i64 %57)
  %59 = load i64, i64* @SUBREG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @SET_DEST(i64 %62)
  %64 = call i64 @SUBREG_REG(i64 %63)
  %65 = load i64, i64* %4, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %61
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @GET_MODE(i64 %68)
  %70 = call i64 @GET_MODE_BITSIZE(i32 %69)
  %71 = load i64, i64* @BITS_PER_WORD, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @SET_DEST(i64 %74)
  %76 = call i64 @subreg_lowpart_p(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @GET_MODE(i64 %81)
  %83 = load i64, i64* %5, align 8
  %84 = call i64 @SET_SRC(i64 %83)
  %85 = call i64 @gen_lowpart(i32 %82, i64 %84)
  %86 = call i32 @record_value_for_reg(i64 %79, i64 %80, i64 %85)
  br label %92

87:                                               ; preds = %73, %67, %61, %55, %50
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @NULL_RTX, align 8
  %91 = call i32 @record_value_for_reg(i64 %88, i64 %89, i64 %90)
  br label %92

92:                                               ; preds = %87, %78
  br label %93

93:                                               ; preds = %92, %44
  br label %108

94:                                               ; preds = %30
  %95 = load i64, i64* %4, align 8
  %96 = call i64 @MEM_P(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @GET_MODE(i64 %100)
  %102 = call i32 @push_operand(i64 %99, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @INSN_CUID(i64 %105)
  store i32 %106, i32* @mem_last_set, align 4
  br label %107

107:                                              ; preds = %104, %98, %94
  br label %108

108:                                              ; preds = %29, %107, %93
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @record_value_for_reg(i64, i64, i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @subreg_lowpart_p(i64) #1

declare dso_local i64 @gen_lowpart(i32, i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @push_operand(i64, i32) #1

declare dso_local i32 @INSN_CUID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
