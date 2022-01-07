; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_arrows.c_dlg_draw_scrollbar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_arrows.c_dlg_draw_scrollbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@dialog_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@position_indicator_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%%\00", align 1
@border_attr = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i32 0, align 4
@ACS_VLINE = common dso_local global i32 0, align 4
@A_REVERSE = common dso_local global i32 0, align 4
@ACS_BLOCK = common dso_local global i32 0, align 4
@ARROWS_COL = common dso_local global i64 0, align 8
@WACS_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_draw_scrollbar(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [80 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @dlg_get_attrs(i32* %37)
  store i32 %38, i32* %28, align 4
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %29, align 4
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = icmp slt i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %30, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %26, align 4
  %48 = load i32, i32* %27, align 4
  %49 = call i32 @getyx(i32* %46, i32 %47, i32 %48)
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i32 @dlg_draw_helpline(i32* %50, i32 %51)
  %53 = load i32, i32* %30, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %11
  %56 = load i32, i32* %29, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 0), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %110

61:                                               ; preds = %58, %55, %11
  %62 = load i64, i64* %16, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %71

65:                                               ; preds = %61
  %66 = load i64, i64* %15, align 8
  %67 = mul nsw i64 %66, 100
  %68 = load i64, i64* %16, align 8
  %69 = sdiv i64 %67, %68
  %70 = trunc i64 %69 to i32
  br label %71

71:                                               ; preds = %65, %64
  %72 = phi i32 [ 100, %64 ], [ %70, %65 ]
  store i32 %72, i32* %24, align 4
  %73 = load i32, i32* %24, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %24, align 4
  br label %81

76:                                               ; preds = %71
  %77 = load i32, i32* %24, align 4
  %78 = icmp sgt i32 %77, 100
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 100, i32* %24, align 4
  br label %80

80:                                               ; preds = %79, %76
  br label %81

81:                                               ; preds = %80, %75
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* @position_indicator_attr, align 4
  %84 = call i32 @dlg_attrset(i32* %82, i32 %83)
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %86 = load i32, i32* %24, align 4
  %87 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %18, align 4
  %91 = sub nsw i32 %90, 7
  %92 = call i32 @wmove(i32* %88, i32 %89, i32 %91)
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %95 = call i32 @waddstr(i32* %93, i8* %94)
  %96 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %97 = call i32 @dlg_count_columns(i8* %96)
  store i32 %97, i32* %25, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %109

99:                                               ; preds = %81
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* @border_attr, align 4
  %102 = call i32 @dlg_attrset(i32* %100, i32 %101)
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* @ACS_HLINE, align 4
  %105 = call i32 @dlg_boxchar(i32 %104)
  %106 = load i32, i32* %25, align 4
  %107 = sub nsw i32 4, %106
  %108 = call i32 @whline(i32* %103, i32 %105, i32 %107)
  br label %109

109:                                              ; preds = %99, %81
  br label %110

110:                                              ; preds = %109, %58
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_state, i32 0, i32 0), align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %229

113:                                              ; preds = %110
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %19, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %31, align 4
  %118 = load i64, i64* %14, align 8
  %119 = call i64 @MAX(i32 0, i64 %118)
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* %16, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %228

122:                                              ; preds = %113
  %123 = load i32, i32* %31, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %228

125:                                              ; preds = %122
  %126 = load i64, i64* %16, align 8
  %127 = add nsw i64 %126, 1
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %32, align 4
  %129 = load i64, i64* %15, align 8
  %130 = add nsw i64 %129, 1
  %131 = load i64, i64* %14, align 8
  %132 = sub nsw i64 %130, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %33, align 4
  %134 = load i32, i32* %31, align 4
  %135 = load i32, i32* %33, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sitofp i32 %136 to double
  %138 = load i32, i32* %32, align 4
  %139 = sitofp i32 %138 to double
  %140 = fdiv double %137, %139
  %141 = fptosi double %140 to i32
  store i32 %141, i32* %34, align 4
  %142 = load i32, i32* %34, align 4
  %143 = icmp sle i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %125
  store i32 1, i32* %34, align 4
  br label %145

145:                                              ; preds = %144, %125
  %146 = load i32, i32* %34, align 4
  %147 = load i32, i32* %31, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %227

149:                                              ; preds = %145
  %150 = load i32, i32* %31, align 4
  %151 = load i64, i64* %15, align 8
  %152 = trunc i64 %151 to i32
  %153 = mul nsw i32 %150, %152
  %154 = sitofp i32 %153 to double
  %155 = load i64, i64* %16, align 8
  %156 = sitofp i64 %155 to double
  %157 = fdiv double %154, %156
  %158 = fadd double 5.000000e-01, %157
  %159 = fptosi double %158 to i32
  store i32 %159, i32* %36, align 4
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %19, align 4
  %162 = add nsw i32 %161, 1
  %163 = load i32, i32* %18, align 4
  %164 = call i32 @wmove(i32* %160, i32 %162, i32 %163)
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* %28, align 4
  %167 = call i32 @dlg_attrset(i32* %165, i32 %166)
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* @ACS_VLINE, align 4
  %170 = load i32, i32* @A_REVERSE, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %31, align 4
  %173 = call i32 @wvline(i32* %168, i32 %171, i32 %172)
  %174 = load i32, i32* %31, align 4
  %175 = load i64, i64* %14, align 8
  %176 = trunc i64 %175 to i32
  %177 = mul nsw i32 %174, %176
  %178 = sitofp i32 %177 to double
  %179 = load i32, i32* %32, align 4
  %180 = sitofp i32 %179 to double
  %181 = fdiv double %178, %180
  %182 = fptosi double %181 to i32
  store i32 %182, i32* %35, align 4
  %183 = load i32, i32* %35, align 4
  %184 = load i32, i32* %36, align 4
  %185 = icmp sge i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %149
  %187 = load i32, i32* %35, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* %36, align 4
  %191 = sub nsw i32 %190, 1
  store i32 %191, i32* %35, align 4
  br label %192

192:                                              ; preds = %189, %186, %149
  %193 = load i32, i32* %36, align 4
  %194 = load i32, i32* %35, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* %34, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  %199 = load i32, i32* %34, align 4
  %200 = icmp sgt i32 %199, 1
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %35, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %35, align 4
  br label %204

204:                                              ; preds = %201, %198, %192
  %205 = load i32, i32* %36, align 4
  %206 = load i32, i32* %31, align 4
  %207 = call i32 @MIN(i32 %205, i32 %206)
  store i32 %207, i32* %36, align 4
  %208 = load i32*, i32** %12, align 8
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %209, 1
  %211 = load i32, i32* %35, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32, i32* %18, align 4
  %214 = call i32 @wmove(i32* %208, i32 %212, i32 %213)
  %215 = load i32*, i32** %12, align 8
  %216 = load i32, i32* @position_indicator_attr, align 4
  %217 = call i32 @dlg_attrset(i32* %215, i32 %216)
  %218 = load i32*, i32** %12, align 8
  %219 = load i32, i32* @A_REVERSE, align 4
  %220 = call i32 @dlg_attron(i32* %218, i32 %219)
  %221 = load i32*, i32** %12, align 8
  %222 = load i32, i32* @ACS_BLOCK, align 4
  %223 = load i32, i32* %36, align 4
  %224 = load i32, i32* %35, align 4
  %225 = sub nsw i32 %223, %224
  %226 = call i32 @wvline(i32* %221, i32 %222, i32 %225)
  br label %227

227:                                              ; preds = %204, %145
  br label %228

228:                                              ; preds = %227, %122, %113
  br label %229

229:                                              ; preds = %228, %110
  %230 = load i32*, i32** %12, align 8
  %231 = load i32, i32* %29, align 4
  %232 = load i32, i32* %30, align 4
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* @ARROWS_COL, align 8
  %236 = add nsw i64 %234, %235
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %20, align 4
  %239 = load i32, i32* %21, align 4
  %240 = load i32, i32* %22, align 4
  %241 = call i32 @dlg_draw_arrows2(i32* %230, i32 %231, i32 %232, i64 %236, i32 %237, i32 %238, i32 %239, i32 %240)
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* %28, align 4
  %244 = call i32 @dlg_attrset(i32* %242, i32 %243)
  %245 = load i32*, i32** %12, align 8
  %246 = load i32, i32* %26, align 4
  %247 = load i32, i32* %27, align 4
  %248 = call i32 @wmove(i32* %245, i32 %246, i32 %247)
  ret void
}

declare dso_local i32 @dlg_get_attrs(i32*) #1

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @dlg_draw_helpline(i32*, i32) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddstr(i32*, i8*) #1

declare dso_local i32 @dlg_count_columns(i8*) #1

declare dso_local i32 @whline(i32*, i32, i32) #1

declare dso_local i32 @dlg_boxchar(i32) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i32 @wvline(i32*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @dlg_attron(i32*, i32) #1

declare dso_local i32 @dlg_draw_arrows2(i32*, i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
