; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_save_or_restore_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_save_or_restore_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ARCH64 = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i64* null, align 8
@call_used_regs = common dso_local global i32* null, align 8
@DImode = common dso_local global i32 0, align 4
@sparc_sr_alias_set = common dso_local global i32 0, align 4
@SORR_SAVE = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @save_or_restore_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_or_restore_regs(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i64, i64* @TARGET_ARCH64, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 32
  br i1 %24, label %25, label %77

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %73, %25
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %27
  %32 = load i64*, i64** @regs_ever_live, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %31
  %39 = load i32*, i32** @call_used_regs, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @DImode, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @plus_constant(i32 %47, i32 %48)
  %50 = call i32 @gen_rtx_MEM(i32 %46, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @sparc_sr_alias_set, align 4
  %53 = call i32 @set_mem_alias_set(i32 %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @SORR_SAVE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @DImode, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @gen_rtx_REG(i32 %59, i32 %60)
  %62 = call i32 @emit_move_insn(i32 %58, i32 %61)
  store i32 %62, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %69

63:                                               ; preds = %45
  %64 = load i32, i32* @DImode, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @gen_rtx_REG(i32 %64, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @emit_move_insn(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 8
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %38, %31
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %27

76:                                               ; preds = %27
  br label %199

77:                                               ; preds = %22, %5
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %195, %77
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %198

83:                                               ; preds = %79
  %84 = load i64*, i64** @regs_ever_live, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i32*, i32** @call_used_regs, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %90, %83
  %99 = phi i1 [ false, %83 ], [ %97, %90 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %15, align 4
  %101 = load i64*, i64** @regs_ever_live, align 8
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %98
  %109 = load i32*, i32** @call_used_regs, align 8
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %108, %98
  %118 = phi i1 [ false, %98 ], [ %116, %108 ]
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %126, 32
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @DImode, align 4
  br label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @DFmode, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %18, align 4
  br label %167

135:                                              ; preds = %122, %117
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %139, 32
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* @SImode, align 4
  br label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @SFmode, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %18, align 4
  br label %166

148:                                              ; preds = %135
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %152, 32
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* @SImode, align 4
  br label %158

156:                                              ; preds = %151
  %157 = load i32, i32* @SFmode, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 4
  store i32 %163, i32* %9, align 4
  br label %165

164:                                              ; preds = %148
  br label %195

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165, %145
  br label %167

167:                                              ; preds = %166, %132
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @plus_constant(i32 %169, i32 %170)
  %172 = call i32 @gen_rtx_MEM(i32 %168, i32 %171)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @sparc_sr_alias_set, align 4
  %175 = call i32 @set_mem_alias_set(i32 %173, i32 %174)
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @SORR_SAVE, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %167
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %18, align 4
  %183 = call i32 @gen_rtx_REG(i32 %181, i32 %182)
  %184 = call i32 @emit_move_insn(i32 %180, i32 %183)
  store i32 %184, i32* %12, align 4
  store i32 1, i32* %19, align 4
  br label %191

185:                                              ; preds = %167
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %18, align 4
  %188 = call i32 @gen_rtx_REG(i32 %186, i32 %187)
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @emit_move_insn(i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %179
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 7
  %194 = and i32 %193, -8
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %191, %164
  %196 = load i32, i32* %13, align 4
  %197 = add nsw i32 %196, 2
  store i32 %197, i32* %13, align 4
  br label %79

198:                                              ; preds = %79
  br label %199

199:                                              ; preds = %198, %76
  %200 = load i32, i32* %9, align 4
  ret i32 %200
}

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @set_mem_alias_set(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
