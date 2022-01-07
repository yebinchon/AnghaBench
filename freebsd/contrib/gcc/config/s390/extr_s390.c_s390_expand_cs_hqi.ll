; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_cs_hqi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_cs_hqi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alignment_context = type { i32, i32, i32, i64 }

@SImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@IOR = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@LSHIFTRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s390_expand_cs_hqi(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.alignment_context, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* @SImode, align 4
  %21 = call i32 @gen_reg_rtx(i32 %20)
  store i32 %21, i32* %17, align 4
  %22 = call i32 (...) @gen_label_rtx()
  store i32 %22, i32* %18, align 4
  %23 = call i32 (...) @gen_label_rtx()
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @VOIDmode, align 4
  %26 = call i64 @register_operand(i32 %24, i32 %25)
  %27 = call i32 @gcc_assert(i64 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @MEM_P(i32 %28)
  %30 = call i32 @gcc_assert(i64 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @init_alignment_context(%struct.alignment_context* %11, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %5
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @MEM_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37, %5
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @s390_expand_mask_and_shift(i32 %42, i32 %43, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %41, %37
  %48 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @MEM_P(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @s390_expand_mask_and_shift(i32 %56, i32 %57, i32 %59)
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i32, i32* @SImode, align 4
  %63 = load i32, i32* @AND, align 4
  %64 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NULL_RTX, align 4
  %69 = load i32, i32* @OPTAB_DIRECT, align 4
  %70 = call i32 @expand_simple_binop(i32 %62, i32 %63, i32 %65, i32 %67, i32 %68, i32 1, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @emit_label(i32 %71)
  %73 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %61
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @MEM_P(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* @SImode, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @force_reg(i32 %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @GET_MODE_BITSIZE(i32 %85)
  %87 = load i32, i32* @SImode, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @store_bit_field(i32 %84, i32 %86, i32 0, i32 %87, i32 %88)
  br label %100

90:                                               ; preds = %76, %61
  %91 = load i32, i32* @SImode, align 4
  %92 = load i32, i32* @SImode, align 4
  %93 = load i32, i32* @IOR, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @NULL_RTX, align 4
  %97 = load i32, i32* @OPTAB_DIRECT, align 4
  %98 = call i32 @expand_simple_binop(i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 1, i32 %97)
  %99 = call i32 @force_reg(i32 %91, i32 %98)
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %90, %80
  %101 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  %106 = call i64 @MEM_P(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i32, i32* @SImode, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @force_reg(i32 %109, i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @GET_MODE_BITSIZE(i32 %113)
  %115 = load i32, i32* @SImode, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @store_bit_field(i32 %112, i32 %114, i32 0, i32 %115, i32 %116)
  br label %128

118:                                              ; preds = %104, %100
  %119 = load i32, i32* @SImode, align 4
  %120 = load i32, i32* @SImode, align 4
  %121 = load i32, i32* @IOR, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @NULL_RTX, align 4
  %125 = load i32, i32* @OPTAB_DIRECT, align 4
  %126 = call i32 @expand_simple_binop(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 1, i32 %125)
  %127 = call i32 @force_reg(i32 %119, i32 %126)
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %118, %108
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* @EQ, align 4
  %131 = load i32, i32* %17, align 4
  %132 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @s390_emit_compare_and_swap(i32 %130, i32 %131, i32 %133, i32 %134, i32 %135)
  %137 = call i32 @s390_emit_jump(i32 %129, i32 %136)
  %138 = load i32, i32* @SImode, align 4
  %139 = load i32, i32* @AND, align 4
  %140 = load i32, i32* %17, align 4
  %141 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NULL_RTX, align 4
  %144 = load i32, i32* @OPTAB_DIRECT, align 4
  %145 = call i32 @expand_simple_binop(i32 %138, i32 %139, i32 %140, i32 %142, i32 %143, i32 1, i32 %144)
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* @NE, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @s390_emit_compare(i32 %146, i32 %147, i32 %148)
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @emit_move_insn(i32 %150, i32 %151)
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @s390_emit_jump(i32 %153, i32 %154)
  %156 = load i32, i32* %19, align 4
  %157 = call i32 @emit_label(i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @SImode, align 4
  %160 = load i32, i32* @LSHIFTRT, align 4
  %161 = load i32, i32* %17, align 4
  %162 = getelementptr inbounds %struct.alignment_context, %struct.alignment_context* %11, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @NULL_RTX, align 4
  %165 = load i32, i32* @OPTAB_DIRECT, align 4
  %166 = call i32 @expand_simple_binop(i32 %159, i32 %160, i32 %161, i32 %163, i32 %164, i32 1, i32 %165)
  %167 = call i32 @convert_move(i32 %158, i32 %166, i32 1)
  ret void
}

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @register_operand(i32, i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @init_alignment_context(%struct.alignment_context*, i32, i32) #1

declare dso_local i32 @s390_expand_mask_and_shift(i32, i32, i32) #1

declare dso_local i32 @expand_simple_binop(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @store_bit_field(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @s390_emit_jump(i32, i32) #1

declare dso_local i32 @s390_emit_compare_and_swap(i32, i32, i32, i32, i32) #1

declare dso_local i32 @s390_emit_compare(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @convert_move(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
