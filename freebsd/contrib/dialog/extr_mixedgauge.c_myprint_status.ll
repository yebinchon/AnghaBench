; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_mixedgauge.c_myprint_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_mixedgauge.c_myprint_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@MARGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@A_NORMAL = common dso_local global i32 0, align 4
@dialog_attr = common dso_local global i32 0, align 4
@title_attr = common dso_local global i32 0, align 4
@A_REVERSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%f%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @myprint_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myprint_status(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %3, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @MARGIN, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 2
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i8* null, i8** %17, align 8
  %41 = load i32, i32* @MARGIN, align 4
  %42 = mul nsw i32 2, %41
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @getyx(i32* %45, i32 %46, i32 %47)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %242, %1
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %245

55:                                               ; preds = %49
  %56 = load i32, i32* @A_NORMAL, align 4
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @MARGIN, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %245

65:                                               ; preds = %55
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @status_string(i32 %73, i8** %17)
  store i8* %74, i8** %16, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %65
  %78 = load i8*, i8** %16, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %65
  br label %242

83:                                               ; preds = %77
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @MARGIN, align 4
  %87 = mul nsw i32 2, %86
  %88 = call i32 @wmove(i32* %84, i32 %85, i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @dialog_attr, align 4
  %91 = call i32 @dlg_attrset(i32* %89, i32 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @dlg_print_text(i32* %92, i32 %100, i32 %101, i32* %18)
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @wmove(i32* %103, i32 %104, i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @waddch(i32* %107, i8 signext 91)
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i8*, i8** %16, align 8
  %114 = call i64 @strlen(i8* %113)
  %115 = trunc i64 %114 to i32
  %116 = sub nsw i32 %112, %115
  %117 = sdiv i32 %116, 2
  %118 = add nsw i32 %111, %117
  %119 = call i32 @wmove(i32* %109, i32 %110, i32 %118)
  %120 = load i8*, i8** %17, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %214

122:                                              ; preds = %83
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 @wmove(i32* %123, i32 %124, i32 %126)
  %128 = load i32*, i32** %3, align 8
  %129 = load i32, i32* @title_attr, align 4
  %130 = call i32 @dlg_attrset(i32* %128, i32 %129)
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %138, %122
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @waddch(i32* %136, i8 signext 32)
  br label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %131

141:                                              ; preds = %131
  %142 = load i32*, i32** %3, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i8*, i8** %16, align 8
  %147 = call i64 @strlen(i8* %146)
  %148 = trunc i64 %147 to i32
  %149 = sub nsw i32 %145, %148
  %150 = sdiv i32 %149, 2
  %151 = add nsw i32 %144, %150
  %152 = call i32 @wmove(i32* %142, i32 %143, i32 %151)
  %153 = load i32*, i32** %3, align 8
  %154 = load i8*, i8** %16, align 8
  %155 = call i32 @waddstr(i32* %153, i8* %154)
  %156 = load i32, i32* @title_attr, align 4
  %157 = load i32, i32* @A_REVERSE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %141
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* @A_REVERSE, align 4
  %163 = call i32 @dlg_attroff(i32* %161, i32 %162)
  br label %168

164:                                              ; preds = %141
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* @A_REVERSE, align 4
  %167 = call i32 @dlg_attrset(i32* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %160
  %169 = load i32*, i32** %3, align 8
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  %173 = call i32 @wmove(i32* %169, i32 %170, i32 %172)
  %174 = load i8*, i8** %16, align 8
  %175 = call i32 @sscanf(i8* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float* %15)
  %176 = icmp ne i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  store float 0.000000e+00, float* %15, align 4
  br label %178

178:                                              ; preds = %177, %168
  %179 = load i32, i32* %8, align 4
  %180 = sitofp i32 %179 to double
  %181 = load float, float* %15, align 4
  %182 = fpext float %181 to double
  %183 = fadd double %182, 5.000000e-01
  %184 = fmul double %180, %183
  %185 = fdiv double %184, 1.000000e+02
  %186 = fptosi double %185 to i32
  store i32 %186, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %187

187:                                              ; preds = %208, %178
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %14, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %211

191:                                              ; preds = %187
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @winch(i32* %192)
  store i32 %193, i32* %19, align 4
  %194 = load i32, i32* @title_attr, align 4
  %195 = load i32, i32* @A_REVERSE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = load i32, i32* @A_REVERSE, align 4
  %200 = xor i32 %199, -1
  %201 = load i32, i32* %19, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %19, align 4
  br label %203

203:                                              ; preds = %198, %191
  %204 = load i32*, i32** %3, align 8
  %205 = load i32, i32* %19, align 4
  %206 = trunc i32 %205 to i8
  %207 = call i32 @waddch(i32* %204, i8 signext %206)
  br label %208

208:                                              ; preds = %203
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %13, align 4
  br label %187

211:                                              ; preds = %187
  %212 = load i8*, i8** %17, align 8
  %213 = call i32 @free(i8* %212)
  br label %229

214:                                              ; preds = %83
  %215 = load i32*, i32** %3, align 8
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %8, align 4
  %219 = load i8*, i8** %16, align 8
  %220 = call i64 @strlen(i8* %219)
  %221 = trunc i64 %220 to i32
  %222 = sub nsw i32 %218, %221
  %223 = sdiv i32 %222, 2
  %224 = add nsw i32 %217, %223
  %225 = call i32 @wmove(i32* %215, i32 %216, i32 %224)
  %226 = load i32*, i32** %3, align 8
  %227 = load i8*, i8** %16, align 8
  %228 = call i32 @waddstr(i32* %226, i8* %227)
  br label %229

229:                                              ; preds = %214, %211
  %230 = load i32*, i32** %3, align 8
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* %5, align 4
  %233 = sub nsw i32 %232, 3
  %234 = call i32 @wmove(i32* %230, i32 %231, i32 %233)
  %235 = load i32*, i32** %3, align 8
  %236 = load i32, i32* @dialog_attr, align 4
  %237 = call i32 @dlg_attrset(i32* %235, i32 %236)
  %238 = load i32*, i32** %3, align 8
  %239 = call i32 @waddch(i32* %238, i8 signext 93)
  %240 = load i32*, i32** %3, align 8
  %241 = call i32 @wnoutrefresh(i32* %240)
  br label %242

242:                                              ; preds = %229, %82
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %7, align 4
  br label %49

245:                                              ; preds = %64, %49
  %246 = load i32*, i32** %3, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load i32*, i32** %3, align 8
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* %12, align 4
  %252 = call i32 @wmove(i32* %249, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %248, %245
  ret void
}

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i8* @status_string(i32, i8**) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @dlg_print_text(i32*, i32, i32, i32*) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @waddstr(i32*, i8*) #1

declare dso_local i32 @dlg_attroff(i32*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, float*) #1

declare dso_local i32 @winch(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @wnoutrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
