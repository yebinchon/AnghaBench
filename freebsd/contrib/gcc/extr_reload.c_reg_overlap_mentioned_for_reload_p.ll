; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_reg_overlap_mentioned_for_reload_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_reg_overlap_mentioned_for_reload_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRICT_LOW_PART = common dso_local global i64 0, align 8
@RTX_AUTOINC = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@reg_equiv_memory_loc = common dso_local global i64* null, align 8
@reg_equiv_constant = common dso_local global i32* null, align 8
@SCRATCH = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8
@CC0 = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_overlap_mentioned_for_reload_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @STRICT_LOW_PART, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = call i64 @GET_RTX_CLASS(i64 %14)
  %16 = load i64, i64* @RTX_AUTOINC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @XEXP(i32 %19, i32 0)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @CONSTANT_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @CONSTANT_P(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32 0, i32* %3, align 4
  br label %212

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @GET_CODE(i32 %31)
  %33 = load i64, i64* @SUBREG, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @SUBREG_REG(i32 %36)
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @MEM, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @refers_to_mem_for_reload_p(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %212

44:                                               ; preds = %35, %30
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @GET_CODE(i32 %45)
  %47 = load i64, i64* @SUBREG, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @SUBREG_REG(i32 %50)
  %52 = call i32 @REGNO(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @SUBREG_REG(i32 %57)
  %59 = call i32 @REGNO(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @SUBREG_REG(i32 %60)
  %62 = call i64 @GET_MODE(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @SUBREG_BYTE(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @GET_MODE(i32 %65)
  %67 = call i64 @subreg_regno_offset(i32 %59, i64 %62, i32 %64, i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %56, %49
  br label %187

73:                                               ; preds = %44
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @REG_P(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @REGNO(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = load i64*, i64** @reg_equiv_memory_loc, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @refers_to_mem_for_reload_p(i32 %91)
  store i32 %92, i32* %3, align 4
  br label %212

93:                                               ; preds = %83
  %94 = load i32*, i32** @reg_equiv_constant, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @gcc_assert(i32 %98)
  store i32 0, i32* %3, align 4
  br label %212

100:                                              ; preds = %77
  br label %186

101:                                              ; preds = %73
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @MEM_P(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @refers_to_mem_for_reload_p(i32 %106)
  store i32 %107, i32* %3, align 4
  br label %212

108:                                              ; preds = %101
  %109 = load i32, i32* %4, align 4
  %110 = call i64 @GET_CODE(i32 %109)
  %111 = load i64, i64* @SCRATCH, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %123, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %4, align 4
  %115 = call i64 @GET_CODE(i32 %114)
  %116 = load i64, i64* @PC, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %4, align 4
  %120 = call i64 @GET_CODE(i32 %119)
  %121 = load i64, i64* @CC0, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118, %113, %108
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @reg_mentioned_p(i32 %124, i32 %125)
  store i32 %126, i32* %3, align 4
  br label %212

127:                                              ; preds = %118
  %128 = load i32, i32* %4, align 4
  %129 = call i64 @GET_CODE(i32 %128)
  %130 = load i64, i64* @PLUS, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @gcc_assert(i32 %132)
  br label %134

134:                                              ; preds = %138, %127
  %135 = load i32, i32* %5, align 4
  %136 = call i64 @MEM_P(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @XEXP(i32 %139, i32 0)
  store i32 %140, i32* %5, align 4
  br label %134

141:                                              ; preds = %134
  %142 = load i32, i32* %5, align 4
  %143 = call i64 @REG_P(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %212

146:                                              ; preds = %141
  %147 = load i32, i32* %5, align 4
  %148 = call i64 @GET_CODE(i32 %147)
  %149 = load i64, i64* @PLUS, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %146
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i64 @rtx_equal_p(i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @XEXP(i32 %158, i32 0)
  %160 = call i32 @reg_overlap_mentioned_for_reload_p(i32 %157, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @XEXP(i32 %164, i32 1)
  %166 = call i32 @reg_overlap_mentioned_for_reload_p(i32 %163, i32 %165)
  %167 = icmp ne i32 %166, 0
  br label %168

168:                                              ; preds = %162, %156, %151
  %169 = phi i1 [ true, %156 ], [ true, %151 ], [ %167, %162 ]
  %170 = zext i1 %169 to i32
  store i32 %170, i32* %3, align 4
  br label %212

171:                                              ; preds = %146
  %172 = load i32, i32* %4, align 4
  %173 = call i32 @XEXP(i32 %172, i32 0)
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @reg_overlap_mentioned_for_reload_p(i32 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @XEXP(i32 %178, i32 1)
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @reg_overlap_mentioned_for_reload_p(i32 %179, i32 %180)
  %182 = icmp ne i32 %181, 0
  br label %183

183:                                              ; preds = %177, %171
  %184 = phi i1 [ true, %171 ], [ %182, %177 ]
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %3, align 4
  br label %212

186:                                              ; preds = %100
  br label %187

187:                                              ; preds = %186, %72
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %189
  %195 = load i32**, i32*** @hard_regno_nregs, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = call i64 @GET_MODE(i32 %200)
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  br label %205

204:                                              ; preds = %189
  br label %205

205:                                              ; preds = %204, %194
  %206 = phi i32 [ %203, %194 ], [ 1, %204 ]
  %207 = add nsw i32 %190, %206
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @refers_to_regno_for_reload_p(i32 %208, i32 %209, i32 %210, i32* null)
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %205, %183, %168, %145, %123, %105, %93, %90, %41, %29
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @GET_RTX_CLASS(i64) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @refers_to_mem_for_reload_p(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @subreg_regno_offset(i32, i64, i32, i64) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @SUBREG_BYTE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @reg_mentioned_p(i32, i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @refers_to_regno_for_reload_p(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
