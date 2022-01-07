; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_legitimize_tls_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_legitimize_tls_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@GP_RETURN = common dso_local global i64 0, align 8
@TARGET_ABICALLS = common dso_local global i32 0, align 4
@SYMBOL_TLSGD = common dso_local global i32 0, align 4
@SYMBOL_TLSLDM = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@UNSPEC_TLS_LDM = common dso_local global i32 0, align 4
@SYMBOL_DTPREL = common dso_local global i32 0, align 4
@SYMBOL_GOTTPREL = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@SYMBOL_TPREL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_legitimize_tls_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_legitimize_tls_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @Pmode, align 4
  %12 = load i64, i64* @GP_RETURN, align 8
  %13 = call i32 @gen_rtx_REG(i32 %11, i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @Pmode, align 4
  %15 = load i64, i64* @GP_RETURN, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @gen_rtx_REG(i32 %14, i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @TARGET_ABICALLS, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 128, i32* %10, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %122 [
    i32 131, label %25
    i32 129, label %37
    i32 130, label %64
    i32 128, label %99
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @SYMBOL_TLSGD, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @mips_call_tls_get_addr(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @Pmode, align 4
  %31 = call i32 @gen_reg_rtx(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @emit_libcall_block(i32 %32, i32 %33, i32 %34, i32 %35)
  br label %124

37:                                               ; preds = %23
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @SYMBOL_TLSLDM, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mips_call_tls_get_addr(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @Pmode, align 4
  %43 = call i32 @gen_reg_rtx(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @Pmode, align 4
  %45 = load i32, i32* @const0_rtx, align 4
  %46 = call i32 @gen_rtvec(i32 1, i32 %45)
  %47 = load i32, i32* @UNSPEC_TLS_LDM, align 4
  %48 = call i32 @gen_rtx_UNSPEC(i32 %44, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @emit_libcall_block(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @SYMBOL_DTPREL, align 4
  %57 = call i32 @mips_unspec_offset_high(i32* null, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @Pmode, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @SYMBOL_DTPREL, align 4
  %62 = call i32 @mips_unspec_address(i32 %60, i32 %61)
  %63 = call i32 @gen_rtx_LO_SUM(i32 %58, i32 %59, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %124

64:                                               ; preds = %23
  %65 = load i32, i32* @Pmode, align 4
  %66 = call i32 @gen_reg_rtx(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @SYMBOL_GOTTPREL, align 4
  %69 = call i32 @mips_unspec_address(i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @Pmode, align 4
  %71 = load i32, i32* @DImode, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @gen_tls_get_tp_di(i32 %74)
  %76 = call i32 @emit_insn(i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @pic_offset_table_rtx, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @gen_load_gotdi(i32 %77, i32 %78, i32 %79)
  %81 = call i32 @emit_insn(i32 %80)
  br label %91

82:                                               ; preds = %64
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @gen_tls_get_tp_si(i32 %83)
  %85 = call i32 @emit_insn(i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @pic_offset_table_rtx, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @gen_load_gotsi(i32 %86, i32 %87, i32 %88)
  %90 = call i32 @emit_insn(i32 %89)
  br label %91

91:                                               ; preds = %82, %73
  %92 = load i32, i32* @Pmode, align 4
  %93 = call i32 @gen_reg_rtx(i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @gen_add3_insn(i32 %94, i32 %95, i32 %96)
  %98 = call i32 @emit_insn(i32 %97)
  br label %124

99:                                               ; preds = %23
  %100 = load i32, i32* @Pmode, align 4
  %101 = load i32, i32* @DImode, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @gen_tls_get_tp_di(i32 %104)
  %106 = call i32 @emit_insn(i32 %105)
  br label %111

107:                                              ; preds = %99
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @gen_tls_get_tp_si(i32 %108)
  %110 = call i32 @emit_insn(i32 %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* @SYMBOL_TPREL, align 4
  %115 = call i32 @mips_unspec_offset_high(i32* null, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* @Pmode, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @SYMBOL_TPREL, align 4
  %120 = call i32 @mips_unspec_address(i32 %118, i32 %119)
  %121 = call i32 @gen_rtx_LO_SUM(i32 %116, i32 %117, i32 %120)
  store i32 %121, i32* %3, align 4
  br label %124

122:                                              ; preds = %23
  %123 = call i32 (...) @gcc_unreachable()
  br label %124

124:                                              ; preds = %122, %111, %91, %37, %25
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

declare dso_local i32 @SYMBOL_REF_TLS_MODEL(i32) #1

declare dso_local i32 @mips_call_tls_get_addr(i32, i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_libcall_block(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32) #1

declare dso_local i32 @mips_unspec_offset_high(i32*, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_LO_SUM(i32, i32, i32) #1

declare dso_local i32 @mips_unspec_address(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_tls_get_tp_di(i32) #1

declare dso_local i32 @gen_load_gotdi(i32, i32, i32) #1

declare dso_local i32 @gen_tls_get_tp_si(i32) #1

declare dso_local i32 @gen_load_gotsi(i32, i32, i32) #1

declare dso_local i32 @gen_add3_insn(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
