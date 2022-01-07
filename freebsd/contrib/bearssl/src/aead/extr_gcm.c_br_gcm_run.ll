; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_gcm.c_br_gcm_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_gcm.c_br_gcm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64, i32, i32, %struct.TYPE_6__**, i32, i32, i32 (i32, i32, i8*, i64)* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__**, i32, i32, i32*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_gcm_run(%struct.TYPE_5__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, 15
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %110

26:                                               ; preds = %4
  %27 = load i64, i64* %10, align 8
  %28 = sub i64 16, %27
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %13, align 8
  br label %34

34:                                               ; preds = %32, %26
  store i64 0, i64* %12, align 8
  br label %35

35:                                               ; preds = %75, %34
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %35
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %49, %50
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %45, %53
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %39
  %58 = load i32, i32* %15, align 4
  br label %61

59:                                               ; preds = %39
  %60 = load i32, i32* %14, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %66, %67
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 %71, i8* %74, align 1
  br label %75

75:                                               ; preds = %61
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %35

78:                                               ; preds = %35
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %9, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %90, %91
  %93 = icmp ult i64 %92, 16
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  br label %251

95:                                               ; preds = %78
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 7
  %98 = load i32 (i32, i32, i8*, i64)*, i32 (i32, i32, i8*, i64)** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = bitcast i32* %107 to i8*
  %109 = call i32 %98(i32 %101, i32 %104, i8* %108, i64 16)
  br label %110

110:                                              ; preds = %95, %4
  %111 = load i64, i64* %8, align 8
  %112 = and i64 %111, -16
  store i64 %112, i64* %11, align 8
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 7
  %118 = load i32 (i32, i32, i8*, i64)*, i32 (i32, i32, i8*, i64)** %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 %118(i32 %121, i32 %124, i8* %125, i64 %126)
  br label %128

128:                                              ; preds = %115, %110
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %130, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32 (%struct.TYPE_6__**, i32, i32, i32*, i32)*, i32 (%struct.TYPE_6__**, i32, i32, i32*, i32)** %133, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %136, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = load i64, i64* %11, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 %134(%struct.TYPE_6__** %137, i32 %140, i32 %143, i32* %145, i32 %147)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %128
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 7
  %156 = load i32 (i32, i32, i8*, i64)*, i32 (i32, i32, i8*, i64)** %155, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = load i64, i64* %11, align 8
  %165 = call i32 %156(i32 %159, i32 %162, i8* %163, i64 %164)
  br label %166

166:                                              ; preds = %153, %128
  %167 = load i64, i64* %11, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 %167
  store i8* %169, i8** %9, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %8, align 8
  %172 = sub i64 %171, %170
  store i64 %172, i64* %8, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, %173
  store i64 %177, i64* %175, align 8
  %178 = load i64, i64* %8, align 8
  %179 = icmp ugt i64 %178, 0
  br i1 %179, label %180, label %251

180:                                              ; preds = %166
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @memset(i32* %183, i32 0, i32 8)
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %186, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32 (%struct.TYPE_6__**, i32, i32, i32*, i32)*, i32 (%struct.TYPE_6__**, i32, i32, i32*, i32)** %189, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %192, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 %190(%struct.TYPE_6__** %193, i32 %196, i32 %199, i32* %202, i32 16)
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  store i64 0, i64* %16, align 8
  br label %206

206:                                              ; preds = %242, %180
  %207 = load i64, i64* %16, align 8
  %208 = load i64, i64* %8, align 8
  %209 = icmp ult i64 %207, %208
  br i1 %209, label %210, label %245

210:                                              ; preds = %206
  %211 = load i8*, i8** %9, align 8
  %212 = load i64, i64* %16, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  store i32 %215, i32* %17, align 4
  %216 = load i32, i32* %17, align 4
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* %16, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = xor i32 %216, %222
  store i32 %223, i32* %18, align 4
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %210
  %227 = load i32, i32* %18, align 4
  br label %230

228:                                              ; preds = %210
  %229 = load i32, i32* %17, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* %16, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32 %231, i32* %236, align 4
  %237 = load i32, i32* %18, align 4
  %238 = trunc i32 %237 to i8
  %239 = load i8*, i8** %9, align 8
  %240 = load i64, i64* %16, align 8
  %241 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8 %238, i8* %241, align 1
  br label %242

242:                                              ; preds = %230
  %243 = load i64, i64* %16, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %16, align 8
  br label %206

245:                                              ; preds = %206
  %246 = load i64, i64* %8, align 8
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, %246
  store i64 %250, i64* %248, align 8
  br label %251

251:                                              ; preds = %94, %245, %166
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
