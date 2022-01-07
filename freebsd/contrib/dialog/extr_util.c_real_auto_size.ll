; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_real_auto_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_real_auto_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { double, i32, i32 }

@dialog_vars = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SLINES = common dso_local global i32 0, align 4
@dialog_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SCOLS = common dso_local global i32 0, align 4
@MARGIN = common dso_local global i32 0, align 4
@SHADOW_COLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i32*, i32, i32)* @real_auto_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @real_auto_size(i8* %0, i8* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 2), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 0), align 8
  br label %30

29:                                               ; preds = %6
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 2, %29 ]
  store i32 %31, i32* %13, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 2), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 1), align 4
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 1, %36 ]
  store i32 %38, i32* %14, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @dlg_count_columns(i8* %42)
  br label %45

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  store i32 %46, i32* %15, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %18, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %19, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %45
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32*, i32** %9, align 8
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32*, i32** %10, align 8
  store i32 -1, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %20, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %21, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %16, align 4
  br label %85

81:                                               ; preds = %66
  %82 = load i32, i32* @SLINES, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %138

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %127

92:                                               ; preds = %89
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @MAX(i32 %93, i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @strchr(i8* %96, i8 signext 10)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %92
  %100 = load double, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 0), align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call double @dlg_count_real_columns(i8* %101)
  %103 = fmul double %100, %102
  store double %103, double* %22, align 8
  %104 = load double, double* %22, align 8
  %105 = call double @sqrt(double %104) #3
  store double %105, double* %23, align 8
  %106 = load double, double* %23, align 8
  %107 = fptosi double %106 to i32
  store i32 %107, i32* %24, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %24, align 4
  %110 = call i32 @MAX(i32 %108, i32 %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @longest_word(i8* %112)
  %114 = call i32 @MAX(i32 %111, i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @justify_text(i32* null, i8* %115, i32 %116, i32 %117, i32* %118, i32* %119)
  br label %126

121:                                              ; preds = %92
  %122 = load i8*, i8** %8, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @auto_size_preformatted(i8* %122, i32* %123, i32* %124)
  br label %126

126:                                              ; preds = %121, %99
  br label %137

127:                                              ; preds = %89
  %128 = load i32, i32* @SCOLS, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 %128, %129
  store i32 %130, i32* %17, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @justify_text(i32* null, i8* %131, i32 %132, i32 %133, i32* %134, i32* %135)
  br label %137

137:                                              ; preds = %127, %126
  br label %138

138:                                              ; preds = %137, %85
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @justify_text(i32* null, i8* %144, i32 %145, i32 %146, i32* %147, i32* %148)
  %150 = load i32, i32* %15, align 4
  %151 = load i32*, i32** %10, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %143, %138
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 1), align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 2), align 4
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %152
  %162 = load i32, i32* %19, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  %166 = load i32*, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %161, %152
  %168 = load i8*, i8** %8, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %188

170:                                              ; preds = %167
  %171 = load i32, i32* @MARGIN, align 4
  %172 = mul nsw i32 2, %171
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* @SHADOW_COLS, align 8
  %175 = add nsw i64 %173, %174
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %175
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %176, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @MARGIN, align 4
  %183 = mul nsw i32 2, %182
  %184 = add nsw i32 %181, %183
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, %184
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %170, %167
  %189 = load i32, i32* %18, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* %18, align 4
  %193 = load i32*, i32** %9, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i32, i32* %19, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* %19, align 4
  %199 = load i32*, i32** %10, align 8
  store i32 %198, i32* %199, align 4
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i32, i32* %20, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %200
  %204 = load i32, i32* @SLINES, align 4
  %205 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 2), align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 1), align 4
  br label %210

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %207
  %211 = phi i32 [ %208, %207 ], [ 0, %209 ]
  %212 = sub nsw i32 %204, %211
  %213 = load i32*, i32** %9, align 8
  store i32 %212, i32* %213, align 4
  br label %214

214:                                              ; preds = %210, %200
  %215 = load i32, i32* %21, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %214
  %218 = load i32, i32* @SCOLS, align 4
  %219 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 2), align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dialog_vars, i32 0, i32 0), align 8
  br label %224

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %223, %221
  %225 = phi i32 [ %222, %221 ], [ 0, %223 ]
  %226 = sub nsw i32 %218, %225
  %227 = load i32*, i32** %10, align 8
  store i32 %226, i32* %227, align 4
  br label %228

228:                                              ; preds = %224, %214
  ret void
}

declare dso_local i32 @dlg_count_columns(i8*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local double @dlg_count_real_columns(i8*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @longest_word(i8*) #1

declare dso_local i32 @justify_text(i32*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @auto_size_preformatted(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
