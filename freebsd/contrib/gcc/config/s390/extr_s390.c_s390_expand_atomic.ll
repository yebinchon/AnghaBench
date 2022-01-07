; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_atomic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alignment_context = type { i64, i32, i64, i64, i64 }

@SImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@LSHIFTRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s390_expand_atomic(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.alignment_context, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @SImode, align 4
  %19 = call i64 @gen_reg_rtx(i32 %18)
  store i64 %19, i64* %15, align 8
  %20 = load i32, i32* @SImode, align 4
  %21 = call i64 @gen_reg_rtx(i32 %20)
  store i64 %21, i64* %16, align 8
  %22 = call i64 (...) @gen_label_rtx()
  store i64 %22, i64* %17, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @VOIDmode, align 4
  %28 = call i64 @register_operand(i64 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %6
  %31 = phi i1 [ true, %6 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @MEM_P(i64 %34)
  %36 = call i32 @gcc_assert(i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @init_alignment_context(%struct.alignment_context* %13, i64 %37, i32 %38)
  %40 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %13, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @MEM_P(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46, %43, %30
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %13, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @s390_expand_mask_and_shift(i64 %51, i32 %52, i64 %54)
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 130
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 132
  br i1 %61, label %62, label %66

62:                                               ; preds = %59, %56
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @emit_move_insn(i64 %63, i64 %64)
  br label %81

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 131
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 134
  br i1 %71, label %72, label %80

72:                                               ; preds = %69, %66
  %73 = load i32, i32* @SImode, align 4
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %13, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @NULL_RTX, align 4
  %78 = load i32, i32* @OPTAB_DIRECT, align 4
  %79 = call i64 @expand_simple_binop(i32 %73, i32 128, i64 %74, i64 %76, i32 %77, i32 1, i32 %78)
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %72, %69
  br label %81

81:                                               ; preds = %80, %62
  %82 = load i32, i32* @SImode, align 4
  %83 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %13, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @force_reg(i32 %82, i32 %84)
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %17, align 8
  %87 = call i32 @emit_label(i64 %86)
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @emit_move_insn(i64 %88, i64 %89)
  %91 = load i32, i32* %8, align 4
  switch i32 %91, label %159 [
    i32 130, label %92
    i32 132, label %92
    i32 129, label %107
    i32 134, label %137
    i32 133, label %137
    i32 128, label %137
    i32 131, label %145
  ]

92:                                               ; preds = %81, %81
  %93 = load i32, i32* @SImode, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load i32, i32* @NULL_RTX, align 4
  %98 = load i32, i32* @OPTAB_DIRECT, align 4
  %99 = call i64 @expand_simple_binop(i32 %93, i32 %94, i64 %95, i64 %96, i32 %97, i32 1, i32 %98)
  store i64 %99, i64* %11, align 8
  %100 = load i32, i32* @SImode, align 4
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %13, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @NULL_RTX, align 4
  %105 = load i32, i32* @OPTAB_DIRECT, align 4
  %106 = call i64 @expand_simple_binop(i32 %100, i32 134, i64 %101, i64 %103, i32 %104, i32 1, i32 %105)
  store i64 %106, i64* %11, align 8
  br label %107

107:                                              ; preds = %81, %92
  %108 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %13, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @MEM_P(i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load i64, i64* %15, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @GET_MODE_BITSIZE(i32 %117)
  %119 = load i32, i32* @SImode, align 4
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @store_bit_field(i64 %116, i32 %118, i32 0, i32 %119, i64 %120)
  br label %136

122:                                              ; preds = %111, %107
  %123 = load i32, i32* @SImode, align 4
  %124 = load i64, i64* %15, align 8
  %125 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %13, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @NULL_RTX, align 4
  %128 = load i32, i32* @OPTAB_DIRECT, align 4
  %129 = call i64 @expand_simple_binop(i32 %123, i32 134, i64 %124, i64 %126, i32 %127, i32 1, i32 %128)
  store i64 %129, i64* %15, align 8
  %130 = load i32, i32* @SImode, align 4
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i32, i32* @NULL_RTX, align 4
  %134 = load i32, i32* @OPTAB_DIRECT, align 4
  %135 = call i64 @expand_simple_binop(i32 %130, i32 133, i64 %131, i64 %132, i32 %133, i32 1, i32 %134)
  store i64 %135, i64* %15, align 8
  br label %136

136:                                              ; preds = %122, %115
  br label %161

137:                                              ; preds = %81, %81, %81
  %138 = load i32, i32* @SImode, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load i32, i32* @NULL_RTX, align 4
  %143 = load i32, i32* @OPTAB_DIRECT, align 4
  %144 = call i64 @expand_simple_binop(i32 %138, i32 %139, i64 %140, i64 %141, i32 %142, i32 1, i32 %143)
  store i64 %144, i64* %15, align 8
  br label %161

145:                                              ; preds = %81
  %146 = load i32, i32* @SImode, align 4
  %147 = load i64, i64* %15, align 8
  %148 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %13, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @NULL_RTX, align 4
  %151 = load i32, i32* @OPTAB_DIRECT, align 4
  %152 = call i64 @expand_simple_binop(i32 %146, i32 128, i64 %147, i64 %149, i32 %150, i32 1, i32 %151)
  store i64 %152, i64* %15, align 8
  %153 = load i32, i32* @SImode, align 4
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %11, align 8
  %156 = load i32, i32* @NULL_RTX, align 4
  %157 = load i32, i32* @OPTAB_DIRECT, align 4
  %158 = call i64 @expand_simple_binop(i32 %153, i32 134, i64 %154, i64 %155, i32 %156, i32 1, i32 %157)
  store i64 %158, i64* %15, align 8
  br label %161

159:                                              ; preds = %81
  %160 = call i32 (...) @gcc_unreachable()
  br label %161

161:                                              ; preds = %159, %145, %137, %136
  %162 = load i64, i64* %17, align 8
  %163 = load i32, i32* @NE, align 4
  %164 = load i64, i64* %14, align 8
  %165 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %13, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* %14, align 8
  %168 = load i64, i64* %15, align 8
  %169 = call i32 @s390_emit_compare_and_swap(i32 %163, i64 %164, i32 %166, i64 %167, i64 %168)
  %170 = call i32 @s390_emit_jump(i64 %162, i32 %169)
  %171 = load i64, i64* %9, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %161
  %174 = load i64, i64* %9, align 8
  %175 = load i32, i32* @SImode, align 4
  %176 = load i32, i32* @LSHIFTRT, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i64, i64* %15, align 8
  br label %183

181:                                              ; preds = %173
  %182 = load i64, i64* %14, align 8
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i64 [ %180, %179 ], [ %182, %181 ]
  %185 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %13, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* @NULL_RTX, align 4
  %188 = load i32, i32* @OPTAB_DIRECT, align 4
  %189 = call i64 @expand_simple_binop(i32 %175, i32 %176, i64 %184, i64 %186, i32 %187, i32 1, i32 %188)
  %190 = call i32 @convert_move(i64 %174, i64 %189, i32 1)
  br label %191

191:                                              ; preds = %183, %161
  ret void
}

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @register_operand(i64, i32) #1

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i32 @init_alignment_context(%struct.alignment_context*, i64, i32) #1

declare dso_local i64 @s390_expand_mask_and_shift(i64, i32, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @expand_simple_binop(i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i64 @force_reg(i32, i32) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i32 @store_bit_field(i64, i32, i32, i32, i64) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @s390_emit_jump(i64, i32) #1

declare dso_local i32 @s390_emit_compare_and_swap(i32, i64, i32, i64, i64) #1

declare dso_local i32 @convert_move(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
