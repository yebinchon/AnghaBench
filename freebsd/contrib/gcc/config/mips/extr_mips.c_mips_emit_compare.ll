; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_emit_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_emit_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmp_operands = common dso_local global i64* null, align 8
@MODE_INT = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@EQ = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@ISA_HAS_8CC = common dso_local global i64 0, align 8
@CCmode = common dso_local global i32 0, align 4
@FPSW_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64*, i32)* @mips_emit_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_emit_compare(i32* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64*, i64** @cmp_operands, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @GET_MODE(i64 %13)
  %15 = call i64 @GET_MODE_CLASS(i32 %14)
  %16 = load i64, i64* @MODE_INT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %105

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = load i64*, i64** @cmp_operands, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @const0_rtx, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i64*, i64** @cmp_operands, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %6, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64*, i64** @cmp_operands, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  br label %104

36:                                               ; preds = %21, %18
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EQ, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i64*, i64** @cmp_operands, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** @cmp_operands, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @mips_zero_if_equal(i64 %52, i64 %55)
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* @const0_rtx, align 8
  %59 = load i64*, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  br label %73

60:                                               ; preds = %46
  %61 = load i64*, i64** @cmp_operands, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %6, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @GET_MODE(i64 %66)
  %68 = load i64*, i64** @cmp_operands, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @force_reg(i32 %67, i64 %70)
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %60, %49
  br label %103

74:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  %75 = load i64*, i64** @cmp_operands, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @GET_MODE(i64 %77)
  %79 = call i64 @gen_reg_rtx(i32 %78)
  %80 = load i64*, i64** %6, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* @const0_rtx, align 8
  %82 = load i64*, i64** %7, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i64*, i64** %6, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** @cmp_operands, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** @cmp_operands, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @mips_emit_int_relational(i32 %84, i32* %9, i64 %86, i64 %89, i64 %92)
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %74
  %97 = load i32, i32* @EQ, align 4
  br label %100

98:                                               ; preds = %74
  %99 = load i32, i32* @NE, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %73
  br label %104

104:                                              ; preds = %103, %27
  br label %141

105:                                              ; preds = %4
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  %108 = call i64 @mips_reverse_fp_cond_p(i32* %10)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @EQ, align 4
  br label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @NE, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = load i32*, i32** %5, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i64, i64* @ISA_HAS_8CC, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @CCmode, align 4
  %121 = call i64 @gen_reg_rtx(i32 %120)
  br label %126

122:                                              ; preds = %114
  %123 = load i32, i32* @CCmode, align 4
  %124 = load i32, i32* @FPSW_REGNUM, align 4
  %125 = call i64 @gen_rtx_REG(i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i64 [ %121, %119 ], [ %125, %122 ]
  %128 = load i64*, i64** %6, align 8
  store i64 %127, i64* %128, align 8
  %129 = load i64, i64* @const0_rtx, align 8
  %130 = load i64*, i64** %7, align 8
  store i64 %129, i64* %130, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i64*, i64** %6, align 8
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** @cmp_operands, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** @cmp_operands, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @mips_emit_binary(i32 %131, i64 %133, i64 %136, i64 %139)
  br label %141

141:                                              ; preds = %126, %104
  ret void
}

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @mips_zero_if_equal(i64, i64) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @mips_emit_int_relational(i32, i32*, i64, i64, i64) #1

declare dso_local i64 @mips_reverse_fp_cond_p(i32*) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @mips_emit_binary(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
