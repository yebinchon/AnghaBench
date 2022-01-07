; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_mark_used_dest_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_mark_used_dest_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.propagate_block_info = type { i32 }

@EXPR_LIST = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@ARG_POINTER_REGNUM = common dso_local global i32 0, align 4
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@PROP_AUTOINC = common dso_local global i32 0, align 4
@PROP_REG_INFO = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.propagate_block_info*, i64, i64, i64)* @mark_used_dest_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_used_dest_regs(%struct.propagate_block_info* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.propagate_block_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.propagate_block_info* %0, %struct.propagate_block_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @GET_CODE(i64 %14)
  %16 = load i64, i64* @EXPR_LIST, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @XEXP(i64 %19, i32 1)
  %21 = call i64 @GET_CODE(i64 %20)
  %22 = load i64, i64* @CONST_INT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @XEXP(i64 %25, i32 0)
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %24, %18, %4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @NULL_RTX, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %120

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @MEM_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.propagate_block_info*, %struct.propagate_block_info** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @XEXP(i64 %38, i32 0)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @mark_used_regs(%struct.propagate_block_info* %37, i64 %39, i64 %40, i64 %41)
  store i32 1, i32* %5, align 4
  br label %120

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %85, %43
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @GET_CODE(i64 %45)
  %47 = load i64, i64* @STRICT_LOW_PART, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @GET_CODE(i64 %50)
  %52 = load i64, i64* @ZERO_EXTRACT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @GET_CODE(i64 %55)
  %57 = load i64, i64* @SUBREG, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %54, %49, %44
  %60 = phi i1 [ true, %49 ], [ true, %44 ], [ %58, %54 ]
  br i1 %60, label %61, label %88

61:                                               ; preds = %59
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @GET_CODE(i64 %62)
  %64 = load i64, i64* @SUBREG, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %61
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @SUBREG_REG(i64 %67)
  %69 = call i32 @REG_BYTES(i64 %68)
  %70 = load i32, i32* @UNITS_PER_WORD, align 4
  %71 = add nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @UNITS_PER_WORD, align 4
  %74 = sdiv i32 %72, %73
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @REG_BYTES(i64 %75)
  %77 = load i32, i32* @UNITS_PER_WORD, align 4
  %78 = add nsw i32 %76, %77
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* @UNITS_PER_WORD, align 4
  %81 = sdiv i32 %79, %80
  %82 = icmp sgt i32 %74, %81
  br i1 %82, label %84, label %83

83:                                               ; preds = %66
  br label %85

84:                                               ; preds = %66, %61
  store i32 1, i32* %11, align 4
  br label %85

85:                                               ; preds = %84, %83
  %86 = load i64, i64* %7, align 8
  %87 = call i64 @XEXP(i64 %86, i32 0)
  store i64 %87, i64* %7, align 8
  br label %44

88:                                               ; preds = %59
  %89 = load i64, i64* %7, align 8
  %90 = call i64 @REG_P(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %119

92:                                               ; preds = %88
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @REGNO(i64 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load i32, i32* @reload_completed, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i64, i64* @frame_pointer_needed, align 8
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i1 [ true, %98 ], [ %103, %101 ]
  br label %106

106:                                              ; preds = %104, %92
  %107 = phi i1 [ false, %92 ], [ %105, %104 ]
  %108 = xor i1 %107, true
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.propagate_block_info*, %struct.propagate_block_info** %6, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @mark_used_regs(%struct.propagate_block_info* %113, i64 %114, i64 %115, i64 %116)
  br label %118

118:                                              ; preds = %112, %109
  store i32 1, i32* %5, align 4
  br label %120

119:                                              ; preds = %106, %88
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %118, %36, %31
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @mark_used_regs(%struct.propagate_block_info*, i64, i64, i64) #1

declare dso_local i32 @REG_BYTES(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
