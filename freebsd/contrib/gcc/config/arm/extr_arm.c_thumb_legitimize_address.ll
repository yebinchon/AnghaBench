; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_legitimize_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_legitimize_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@flag_pic = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thumb_legitimize_address(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @arm_tls_symbol_p(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @NULL_RTX, align 4
  %20 = call i64 @legitimize_tls_address(i64 %18, i32 %19)
  store i64 %20, i64* %4, align 8
  br label %166

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @GET_CODE(i64 %22)
  %24 = load i64, i64* @PLUS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %122

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @XEXP(i64 %27, i32 1)
  %29 = call i64 @GET_CODE(i64 %28)
  %30 = load i64, i64* @CONST_INT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %122

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @XEXP(i64 %33, i32 1)
  %35 = call i32 @INTVAL(i64 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @GET_MODE_SIZE(i32 %36)
  %38 = mul nsw i32 32, %37
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @XEXP(i64 %41, i32 1)
  %43 = call i32 @INTVAL(i64 %42)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %122

45:                                               ; preds = %40, %32
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @XEXP(i64 %46, i32 0)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @XEXP(i64 %48, i32 1)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @INTVAL(i64 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i64, i64* @optimize_size, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %102

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @GET_MODE_SIZE(i32 %59)
  %61 = mul nsw i32 31, %60
  %62 = add nsw i32 256, %61
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %102

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 256
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @GET_MODE_SIZE(i32 %69)
  %71 = sub nsw i32 256, %70
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %11, align 4
  br label %91

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @GET_MODE_SIZE(i32 %75)
  %77 = mul nsw i32 32, %76
  %78 = add nsw i32 %77, 8
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @GET_MODE_SIZE(i32 %81)
  %83 = mul nsw i32 31, %82
  store i32 %83, i32* %11, align 4
  br label %90

84:                                               ; preds = %73
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @GET_MODE_SIZE(i32 %86)
  %88 = mul nsw i32 -32, %87
  %89 = and i32 %85, %88
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %84, %80
  br label %91

91:                                               ; preds = %90, %67
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i64 @plus_constant(i64 %92, i32 %95)
  %97 = load i32, i32* @NULL_RTX, align 4
  %98 = call i64 @force_operand(i64 %96, i32 %97)
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @plus_constant(i64 %99, i32 %100)
  store i64 %101, i64* %5, align 8
  br label %121

102:                                              ; preds = %57, %54, %45
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %106, -256
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i64, i64* %5, align 8
  %110 = load i32, i32* @NULL_RTX, align 4
  %111 = call i64 @force_operand(i64 %109, i32 %110)
  store i64 %111, i64* %5, align 8
  br label %120

112:                                              ; preds = %105, %102
  %113 = load i32, i32* @SImode, align 4
  %114 = load i64, i64* %9, align 8
  %115 = call i64 @force_reg(i32 %113, i64 %114)
  store i64 %115, i64* %9, align 8
  %116 = load i32, i32* @SImode, align 4
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @gen_rtx_PLUS(i32 %116, i64 %117, i64 %118)
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %112, %108
  br label %121

121:                                              ; preds = %120, %91
  br label %150

122:                                              ; preds = %40, %26, %21
  %123 = load i64, i64* %5, align 8
  %124 = call i64 @GET_CODE(i64 %123)
  %125 = load i64, i64* @PLUS, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %149

127:                                              ; preds = %122
  %128 = load i64, i64* %5, align 8
  %129 = call i64 @XEXP(i64 %128, i32 1)
  %130 = load i32, i32* @SImode, align 4
  %131 = call i64 @s_register_operand(i64 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = load i64, i64* %5, align 8
  %135 = call i64 @XEXP(i64 %134, i32 0)
  %136 = load i32, i32* @SImode, align 4
  %137 = call i64 @s_register_operand(i64 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %133
  %140 = load i64, i64* %5, align 8
  %141 = call i64 @XEXP(i64 %140, i32 0)
  %142 = load i32, i32* @NULL_RTX, align 4
  %143 = call i64 @force_operand(i64 %141, i32 %142)
  store i64 %143, i64* %12, align 8
  %144 = load i32, i32* @SImode, align 4
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i64 @XEXP(i64 %146, i32 1)
  %148 = call i64 @gen_rtx_PLUS(i32 %144, i64 %145, i64 %147)
  store i64 %148, i64* %5, align 8
  br label %149

149:                                              ; preds = %139, %133, %127, %122
  br label %150

150:                                              ; preds = %149, %121
  %151 = load i64, i64* @flag_pic, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load i64, i64* %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @NULL_RTX, align 4
  %157 = call i64 @legitimize_pic_address(i64 %154, i32 %155, i32 %156)
  store i64 %157, i64* %13, align 8
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* %6, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i64, i64* %13, align 8
  store i64 %162, i64* %5, align 8
  br label %163

163:                                              ; preds = %161, %153
  br label %164

164:                                              ; preds = %163, %150
  %165 = load i64, i64* %5, align 8
  store i64 %165, i64* %4, align 8
  br label %166

166:                                              ; preds = %164, %17
  %167 = load i64, i64* %4, align 8
  ret i64 %167
}

declare dso_local i64 @arm_tls_symbol_p(i64) #1

declare dso_local i64 @legitimize_tls_address(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @force_operand(i64, i32) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i64 @s_register_operand(i64, i32) #1

declare dso_local i64 @legitimize_pic_address(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
