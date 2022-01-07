; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_encoding.c_file_looks_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_encoding.c_file_looks_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text_chars = common dso_local global i64* null, align 8
@T = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_looks_utf8(i8* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64*, i64** %9, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %4
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %204, %20
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %207

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %25
  %34 = load i64*, i64** @text_chars, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i64, i64* %34, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @T, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 1, i32* %14, align 4
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i32*, i32** %8, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %45
  br label %203

60:                                               ; preds = %25
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 -1, i32* %5, align 4
  br label %219

69:                                               ; preds = %60
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 31
  store i32 %83, i32* %12, align 4
  store i32 1, i32* %15, align 4
  br label %149

84:                                               ; preds = %69
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load i8*, i8** %6, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 15
  store i32 %98, i32* %12, align 4
  store i32 2, i32* %15, align 4
  br label %148

99:                                               ; preds = %84
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load i8*, i8** %6, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 7
  store i32 %113, i32* %12, align 4
  store i32 3, i32* %15, align 4
  br label %147

114:                                              ; preds = %99
  %115 = load i8*, i8** %6, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %114
  %123 = load i8*, i8** %6, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 3
  store i32 %128, i32* %12, align 4
  store i32 4, i32* %15, align 4
  br label %146

129:                                              ; preds = %114
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = load i8*, i8** %6, align 8
  %139 = load i64, i64* %10, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 1
  store i32 %143, i32* %12, align 4
  store i32 5, i32* %15, align 4
  br label %145

144:                                              ; preds = %129
  store i32 -1, i32* %5, align 4
  br label %219

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145, %122
  br label %147

147:                                              ; preds = %146, %107
  br label %148

148:                                              ; preds = %147, %92
  br label %149

149:                                              ; preds = %148, %77
  store i32 0, i32* %11, align 4
  br label %150

150:                                              ; preds = %188, %149
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %191

154:                                              ; preds = %150
  %155 = load i64, i64* %10, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %10, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %7, align 8
  %159 = icmp uge i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %208

161:                                              ; preds = %154
  %162 = load i8*, i8** %6, align 8
  %163 = load i64, i64* %10, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, 128
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %161
  %170 = load i8*, i8** %6, align 8
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = and i32 %174, 64
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %169, %161
  store i32 -1, i32* %5, align 4
  br label %219

178:                                              ; preds = %169
  %179 = load i32, i32* %12, align 4
  %180 = shl i32 %179, 6
  %181 = load i8*, i8** %6, align 8
  %182 = load i64, i64* %10, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 63
  %187 = add nsw i32 %180, %186
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %178
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %150

191:                                              ; preds = %150
  %192 = load i32*, i32** %8, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load i32, i32* %12, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = load i64*, i64** %9, align 8
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %197, align 8
  %200 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %195, i32* %200, align 4
  br label %201

201:                                              ; preds = %194, %191
  store i32 1, i32* %13, align 4
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202, %59
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %10, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %10, align 8
  br label %21

207:                                              ; preds = %21
  br label %208

208:                                              ; preds = %207, %160
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %217

212:                                              ; preds = %208
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 2, i32 1
  br label %217

217:                                              ; preds = %212, %211
  %218 = phi i32 [ 0, %211 ], [ %216, %212 ]
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %217, %177, %144, %68
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
