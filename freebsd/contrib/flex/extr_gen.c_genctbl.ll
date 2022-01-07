; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_genctbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_genctbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@num_rules = common dso_local global i32 0, align 4
@gentables = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"static yyconst struct yy_trans_info yy_transition[%d] =\0A    {\0A\00", align 1
@tblend = common dso_local global i32 0, align 4
@numecs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"static yyconst struct yy_trans_info *yy_transition = 0;\00", align 1
@current_max_xpairs = common dso_local global i32 0, align 4
@lastdfa = common dso_local global i32 0, align 4
@current_max_dfas = common dso_local global i32 0, align 4
@base = common dso_local global i32* null, align 8
@nxt = common dso_local global i64* null, align 8
@chk = common dso_local global i32* null, align 8
@dfaacc = common dso_local global %struct.TYPE_2__* null, align 8
@EOB_POSITION = common dso_local global i32 0, align 4
@ACTION_POSITION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"    };\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"static yyconst struct yy_trans_info *yy_start_state_list[%d] =\0A\00", align 1
@lastsc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"static yyconst struct yy_trans_info **yy_start_state_list =0;\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"    {\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"    &yy_transition[%d],\0A\00", align 1
@useecs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genctbl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @num_rules, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %2, align 4
  %7 = load i64, i64* @gentables, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @tblend, align 4
  %11 = load i32, i32* @numecs, align 4
  %12 = add nsw i32 %10, %11
  %13 = add nsw i32 %12, 1
  %14 = call i32 @out_dec(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %17

15:                                               ; preds = %0
  %16 = call i32 @outn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %9
  br label %18

18:                                               ; preds = %23, %17
  %19 = load i32, i32* @tblend, align 4
  %20 = add nsw i32 %19, 2
  %21 = load i32, i32* @current_max_xpairs, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @expand_nxt_chk()
  br label %18

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i32, i32* @lastdfa, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @current_max_dfas, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @increase_max_dfas()
  br label %26

33:                                               ; preds = %26
  %34 = load i32, i32* @tblend, align 4
  %35 = add nsw i32 %34, 2
  %36 = load i32*, i32** @base, align 8
  %37 = load i32, i32* @lastdfa, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** @nxt, align 8
  %44 = load i32, i32* @tblend, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  store i64 %42, i64* %47, align 8
  %48 = load i32, i32* @numecs, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32*, i32** @chk, align 8
  %51 = load i32, i32* @tblend, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load i32*, i32** @chk, align 8
  %56 = load i32, i32* @tblend, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 1, i32* %59, align 4
  %60 = load i64*, i64** @nxt, align 8
  %61 = load i32, i32* @tblend, align 4
  %62 = add nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  store i64 0, i64* %64, align 8
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %99, %33
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @lastdfa, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %65
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  %76 = load i32*, i32** @base, align 8
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @EOB_POSITION, align 4
  %82 = load i32*, i32** @chk, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @ACTION_POSITION, align 4
  %87 = load i32*, i32** @chk, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64*, i64** @nxt, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  store i64 %93, i64* %98, align 8
  br label %99

99:                                               ; preds = %69
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %1, align 4
  br label %65

102:                                              ; preds = %65
  store i32 0, i32* %1, align 4
  br label %103

103:                                              ; preds = %185, %102
  %104 = load i32, i32* %1, align 4
  %105 = load i32, i32* @tblend, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %188

107:                                              ; preds = %103
  %108 = load i32*, i32** @chk, align 8
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @EOB_POSITION, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %107
  %116 = load i32*, i32** @base, align 8
  %117 = load i32, i32* @lastdfa, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %1, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = call i32 @transition_struct_out(i32 0, i64 %124)
  br label %184

126:                                              ; preds = %107
  %127 = load i32*, i32** @chk, align 8
  %128 = load i32, i32* %1, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @ACTION_POSITION, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load i64*, i64** @nxt, align 8
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @transition_struct_out(i32 0, i64 %139)
  br label %183

141:                                              ; preds = %126
  %142 = load i32*, i32** @chk, align 8
  %143 = load i32, i32* %1, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @numecs, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %156, label %149

149:                                              ; preds = %141
  %150 = load i32*, i32** @chk, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149, %141
  %157 = call i32 @transition_struct_out(i32 0, i64 0)
  br label %182

158:                                              ; preds = %149
  %159 = load i32*, i32** @chk, align 8
  %160 = load i32, i32* %1, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** @base, align 8
  %165 = load i64*, i64** @nxt, align 8
  %166 = load i32, i32* %1, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %1, align 4
  %173 = load i32*, i32** @chk, align 8
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %172, %177
  %179 = sub nsw i32 %171, %178
  %180 = sext i32 %179 to i64
  %181 = call i32 @transition_struct_out(i32 %163, i64 %180)
  br label %182

182:                                              ; preds = %158, %156
  br label %183

183:                                              ; preds = %182, %134
  br label %184

184:                                              ; preds = %183, %115
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %1, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %1, align 4
  br label %103

188:                                              ; preds = %103
  %189 = load i32*, i32** @chk, align 8
  %190 = load i32, i32* @tblend, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i64*, i64** @nxt, align 8
  %196 = load i32, i32* @tblend, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %195, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @transition_struct_out(i32 %194, i64 %200)
  %202 = load i32*, i32** @chk, align 8
  %203 = load i32, i32* @tblend, align 4
  %204 = add nsw i32 %203, 2
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i64*, i64** @nxt, align 8
  %209 = load i32, i32* @tblend, align 4
  %210 = add nsw i32 %209, 2
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %208, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @transition_struct_out(i32 %207, i64 %213)
  %215 = load i64, i64* @gentables, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %188
  %218 = call i32 @outn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %188
  %220 = load i64, i64* @gentables, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load i32, i32* @lastsc, align 4
  %224 = mul nsw i32 %223, 2
  %225 = add nsw i32 %224, 1
  %226 = call i32 @out_dec(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %225)
  br label %229

227:                                              ; preds = %219
  %228 = call i32 @outn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %222
  %230 = load i64, i64* @gentables, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %251

232:                                              ; preds = %229
  %233 = call i32 @outn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %234

234:                                              ; preds = %246, %232
  %235 = load i32, i32* %1, align 4
  %236 = load i32, i32* @lastsc, align 4
  %237 = mul nsw i32 %236, 2
  %238 = icmp sle i32 %235, %237
  br i1 %238, label %239, label %249

239:                                              ; preds = %234
  %240 = load i32*, i32** @base, align 8
  %241 = load i32, i32* %1, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @out_dec(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %239
  %247 = load i32, i32* %1, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %1, align 4
  br label %234

249:                                              ; preds = %234
  %250 = call i32 (...) @dataend()
  br label %251

251:                                              ; preds = %249, %229
  %252 = load i64, i64* @useecs, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = call i32 (...) @genecs()
  br label %256

256:                                              ; preds = %254, %251
  ret void
}

declare dso_local i32 @out_dec(i8*, i32) #1

declare dso_local i32 @outn(i8*) #1

declare dso_local i32 @expand_nxt_chk(...) #1

declare dso_local i32 @increase_max_dfas(...) #1

declare dso_local i32 @transition_struct_out(i32, i64) #1

declare dso_local i32 @dataend(...) #1

declare dso_local i32 @genecs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
