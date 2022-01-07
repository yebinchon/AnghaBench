; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_tls_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_tls_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@LCT_CONST = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@UNSPEC_LD_BASE = common dso_local global i32 0, align 4
@TARGET_TLS64 = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @ia64_expand_tls_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_expand_tls_address(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %179 [
    i32 131, label %23
    i32 129, label %60
    i32 130, label %119
    i32 128, label %150
  ]

23:                                               ; preds = %5
  %24 = call i32 (...) @start_sequence()
  %25 = load i64, i64* @Pmode, align 8
  %26 = call i32 @gen_reg_rtx(i64 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @gen_load_dtpmod(i32 %27, i32 %28)
  %30 = call i32 @emit_insn(i32 %29)
  %31 = load i64, i64* @Pmode, align 8
  %32 = call i32 @gen_reg_rtx(i64 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @gen_load_dtprel(i32 %33, i32 %34)
  %36 = call i32 @emit_insn(i32 %35)
  %37 = call i32 (...) @gen_tls_get_addr()
  %38 = load i32, i32* @NULL_RTX, align 4
  %39 = load i32, i32* @LCT_CONST, align 4
  %40 = load i64, i64* @Pmode, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i64, i64* @Pmode, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i64, i64* @Pmode, align 8
  %45 = call i32 @emit_library_call_value(i32 %37, i32 %38, i32 %39, i64 %40, i32 2, i32 %41, i64 %42, i32 %43, i64 %44)
  store i32 %45, i32* %14, align 4
  %46 = call i32 (...) @get_insns()
  store i32 %46, i32* %17, align 4
  %47 = call i32 (...) @end_sequence()
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @GET_MODE(i32 %48)
  %50 = load i64, i64* @Pmode, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %23
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %23
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @emit_libcall_block(i32 %55, i32 %56, i32 %57, i32 %58)
  br label %181

60:                                               ; preds = %5
  %61 = call i32 (...) @start_sequence()
  %62 = load i64, i64* @Pmode, align 8
  %63 = call i32 @gen_reg_rtx(i64 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @gen_load_dtpmod(i32 %64, i32 %65)
  %67 = call i32 @emit_insn(i32 %66)
  %68 = load i32, i32* @const0_rtx, align 4
  store i32 %68, i32* %13, align 4
  %69 = call i32 (...) @gen_tls_get_addr()
  %70 = load i32, i32* @NULL_RTX, align 4
  %71 = load i32, i32* @LCT_CONST, align 4
  %72 = load i64, i64* @Pmode, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i64, i64* @Pmode, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i64, i64* @Pmode, align 8
  %77 = call i32 @emit_library_call_value(i32 %69, i32 %70, i32 %71, i64 %72, i32 2, i32 %73, i64 %74, i32 %75, i64 %76)
  store i32 %77, i32* %14, align 4
  %78 = call i32 (...) @get_insns()
  store i32 %78, i32* %17, align 4
  %79 = call i32 (...) @end_sequence()
  %80 = load i64, i64* @Pmode, align 8
  %81 = load i32, i32* @const0_rtx, align 4
  %82 = call i32 @gen_rtvec(i32 1, i32 %81)
  %83 = load i32, i32* @UNSPEC_LD_BASE, align 4
  %84 = call i32 @gen_rtx_UNSPEC(i64 %80, i32 %82, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i64, i64* @Pmode, align 8
  %86 = call i32 @gen_reg_rtx(i64 %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @emit_libcall_block(i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i64, i64* @Pmode, align 8
  %94 = call i32 @register_operand(i32 %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %60
  %97 = load i64, i64* @Pmode, align 8
  %98 = call i32 @gen_reg_rtx(i64 %97)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %60
  %100 = load i32, i32* @TARGET_TLS64, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @gen_load_dtprel(i32 %103, i32 %104)
  %106 = call i32 @emit_insn(i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @gen_adddi3(i32 %107, i32 %108, i32 %109)
  %111 = call i32 @emit_insn(i32 %110)
  br label %118

112:                                              ; preds = %99
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @gen_add_dtprel(i32 %113, i32 %114, i32 %115)
  %117 = call i32 @emit_insn(i32 %116)
  br label %118

118:                                              ; preds = %112, %102
  br label %181

119:                                              ; preds = %5
  %120 = load i32, i32* %11, align 4
  %121 = and i32 %120, 16383
  %122 = xor i32 %121, 8192
  %123 = sub nsw i32 %122, 8192
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %19, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %20, align 4
  %129 = call i32 @plus_constant(i32 %127, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %19, align 4
  store i32 %130, i32* %11, align 4
  %131 = load i64, i64* @Pmode, align 8
  %132 = call i32 @gen_reg_rtx(i64 %131)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @gen_load_tprel(i32 %133, i32 %134)
  %136 = call i32 @emit_insn(i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = load i64, i64* @Pmode, align 8
  %139 = call i32 @register_operand(i32 %137, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %119
  %142 = load i64, i64* @Pmode, align 8
  %143 = call i32 @gen_reg_rtx(i64 %142)
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %119
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i32 (...) @gen_thread_pointer()
  %148 = call i32 @gen_adddi3(i32 %145, i32 %146, i32 %147)
  %149 = call i32 @emit_insn(i32 %148)
  br label %181

150:                                              ; preds = %5
  %151 = load i32, i32* %8, align 4
  %152 = load i64, i64* @Pmode, align 8
  %153 = call i32 @register_operand(i32 %151, i64 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i64, i64* @Pmode, align 8
  %157 = call i32 @gen_reg_rtx(i64 %156)
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %160 = load i32, i32* @TARGET_TLS64, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @gen_load_tprel(i32 %163, i32 %164)
  %166 = call i32 @emit_insn(i32 %165)
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (...) @gen_thread_pointer()
  %170 = call i32 @gen_adddi3(i32 %167, i32 %168, i32 %169)
  %171 = call i32 @emit_insn(i32 %170)
  br label %178

172:                                              ; preds = %158
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 (...) @gen_thread_pointer()
  %176 = call i32 @gen_add_tprel(i32 %173, i32 %174, i32 %175)
  %177 = call i32 @emit_insn(i32 %176)
  br label %178

178:                                              ; preds = %172, %162
  br label %181

179:                                              ; preds = %5
  %180 = call i32 (...) @gcc_unreachable()
  br label %181

181:                                              ; preds = %179, %178, %144, %118, %54
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load i64, i64* @Pmode, align 8
  %186 = load i32, i32* @PLUS, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @GEN_INT(i32 %188)
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* @OPTAB_DIRECT, align 4
  %192 = call i32 @expand_simple_binop(i64 %185, i32 %186, i32 %187, i32 %189, i32 %190, i32 1, i32 %191)
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %184, %181
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* @NULL_RTX, align 4
  store i32 %198, i32* %6, align 4
  br label %211

199:                                              ; preds = %193
  %200 = load i32, i32* %18, align 4
  %201 = call i64 @GET_MODE(i32 %200)
  %202 = load i64, i64* @Pmode, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %6, align 4
  br label %211

206:                                              ; preds = %199
  %207 = load i32, i32* %18, align 4
  %208 = call i64 @GET_MODE(i32 %207)
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @gen_lowpart(i64 %208, i32 %209)
  store i32 %210, i32* %6, align 4
  br label %211

211:                                              ; preds = %206, %204, %197
  %212 = load i32, i32* %6, align 4
  ret i32 %212
}

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @gen_reg_rtx(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_load_dtpmod(i32, i32) #1

declare dso_local i32 @gen_load_dtprel(i32, i32) #1

declare dso_local i32 @emit_library_call_value(i32, i32, i32, i64, i32, i32, i64, i32, i64) #1

declare dso_local i32 @gen_tls_get_addr(...) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @emit_libcall_block(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_UNSPEC(i64, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32) #1

declare dso_local i32 @register_operand(i32, i64) #1

declare dso_local i32 @gen_adddi3(i32, i32, i32) #1

declare dso_local i32 @gen_add_dtprel(i32, i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @gen_load_tprel(i32, i32) #1

declare dso_local i32 @gen_thread_pointer(...) #1

declare dso_local i32 @gen_add_tprel(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @expand_simple_binop(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_lowpart(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
