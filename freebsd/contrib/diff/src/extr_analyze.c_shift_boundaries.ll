; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_shift_boundaries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_shift_boundaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i8*, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_data*)* @shift_boundaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shift_boundaries(%struct.file_data* %0) #0 {
  %2 = alloca %struct.file_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.file_data* %0, %struct.file_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %235, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %238

16:                                               ; preds = %13
  %17 = load %struct.file_data*, %struct.file_data** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.file_data, %struct.file_data* %17, i64 %19
  %21 = getelementptr inbounds %struct.file_data, %struct.file_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %4, align 8
  %23 = load %struct.file_data*, %struct.file_data** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.file_data, %struct.file_data* %23, i64 %26
  %28 = getelementptr inbounds %struct.file_data, %struct.file_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %5, align 8
  %30 = load %struct.file_data*, %struct.file_data** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.file_data, %struct.file_data* %30, i64 %32
  %34 = getelementptr inbounds %struct.file_data, %struct.file_data* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  store i64* %35, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %36 = load %struct.file_data*, %struct.file_data** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.file_data, %struct.file_data* %36, i64 %38
  %40 = getelementptr inbounds %struct.file_data, %struct.file_data* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %16, %233
  br label %43

43:                                               ; preds = %65, %42
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %47, %43
  %55 = phi i1 [ false, %43 ], [ %53, %47 ]
  br i1 %55, label %56, label %68

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %64, %56
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %8, align 8
  %61 = getelementptr inbounds i8, i8* %58, i64 %59
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %57

65:                                               ; preds = %57
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %43

68:                                               ; preds = %54
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %234

73:                                               ; preds = %68
  %74 = load i64, i64* %7, align 8
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %82, %73
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %7, align 8
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %75

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %90, %83
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %8, align 8
  br label %84

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %204, %93
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %11, align 8
  %97 = sub i64 %95, %96
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %143, %94
  %99 = load i64, i64* %11, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = load i64*, i64** %6, align 8
  %103 = load i64, i64* %11, align 8
  %104 = sub i64 %103, 1
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = sub i64 %108, 1
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %106, %111
  br label %113

113:                                              ; preds = %101, %98
  %114 = phi i1 [ false, %98 ], [ %112, %101 ]
  br i1 %114, label %115, label %144

115:                                              ; preds = %113
  %116 = load i8*, i8** %4, align 8
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, -1
  store i64 %118, i64* %11, align 8
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8 1, i8* %119, align 1
  %120 = load i8*, i8** %4, align 8
  %121 = load i64, i64* %7, align 8
  %122 = add i64 %121, -1
  store i64 %122, i64* %7, align 8
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 0, i8* %123, align 1
  br label %124

124:                                              ; preds = %131, %115
  %125 = load i8*, i8** %4, align 8
  %126 = load i64, i64* %11, align 8
  %127 = sub i64 %126, 1
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %11, align 8
  br label %124

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %142, %134
  %136 = load i8*, i8** %5, align 8
  %137 = load i64, i64* %8, align 8
  %138 = add i64 %137, -1
  store i64 %138, i64* %8, align 8
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %135

143:                                              ; preds = %135
  br label %98

144:                                              ; preds = %113
  %145 = load i8*, i8** %5, align 8
  %146 = load i64, i64* %8, align 8
  %147 = sub i64 %146, 1
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i64, i64* %7, align 8
  br label %156

154:                                              ; preds = %144
  %155 = load i64, i64* %9, align 8
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i64 [ %153, %152 ], [ %155, %154 ]
  store i64 %157, i64* %12, align 8
  br label %158

158:                                              ; preds = %202, %156
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* %9, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = load i64*, i64** %6, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %6, align 8
  %168 = load i64, i64* %7, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %166, %170
  br label %172

172:                                              ; preds = %162, %158
  %173 = phi i1 [ false, %158 ], [ %171, %162 ]
  br i1 %173, label %174, label %203

174:                                              ; preds = %172
  %175 = load i8*, i8** %4, align 8
  %176 = load i64, i64* %11, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %11, align 8
  %178 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8 0, i8* %178, align 1
  %179 = load i8*, i8** %4, align 8
  %180 = load i64, i64* %7, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %7, align 8
  %182 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8 1, i8* %182, align 1
  br label %183

183:                                              ; preds = %189, %174
  %184 = load i8*, i8** %4, align 8
  %185 = load i64, i64* %7, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = icmp ne i8 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i64, i64* %7, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %7, align 8
  br label %183

192:                                              ; preds = %183
  br label %193

193:                                              ; preds = %200, %192
  %194 = load i8*, i8** %5, align 8
  %195 = load i64, i64* %8, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %8, align 8
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = icmp ne i8 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i64, i64* %7, align 8
  store i64 %201, i64* %12, align 8
  br label %193

202:                                              ; preds = %193
  br label %158

203:                                              ; preds = %172
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %10, align 8
  %206 = load i64, i64* %7, align 8
  %207 = load i64, i64* %11, align 8
  %208 = sub i64 %206, %207
  %209 = icmp ne i64 %205, %208
  br i1 %209, label %94, label %210

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %232, %210
  %212 = load i64, i64* %12, align 8
  %213 = load i64, i64* %7, align 8
  %214 = icmp ult i64 %212, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %211
  %216 = load i8*, i8** %4, align 8
  %217 = load i64, i64* %11, align 8
  %218 = add i64 %217, -1
  store i64 %218, i64* %11, align 8
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  store i8 1, i8* %219, align 1
  %220 = load i8*, i8** %4, align 8
  %221 = load i64, i64* %7, align 8
  %222 = add i64 %221, -1
  store i64 %222, i64* %7, align 8
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  store i8 0, i8* %223, align 1
  br label %224

224:                                              ; preds = %231, %215
  %225 = load i8*, i8** %5, align 8
  %226 = load i64, i64* %8, align 8
  %227 = add i64 %226, -1
  store i64 %227, i64* %8, align 8
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = icmp ne i8 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %224

232:                                              ; preds = %224
  br label %211

233:                                              ; preds = %211
  br label %42

234:                                              ; preds = %72
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %3, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %3, align 4
  br label %13

238:                                              ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
