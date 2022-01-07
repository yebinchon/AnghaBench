; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_pss_sig_unpad.c_br_rsa_pss_sig_unpad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_pss_sig_unpad.c_br_rsa_pss_sig_unpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32*, i8*)*, i32 (i32*, i8*, i64)*, i32 (i32*)* }
%struct.TYPE_9__ = type { i64, i64* }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_pss_sig_unpad(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i8* %2, i64 %3, %struct.TYPE_9__* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [64 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store i8* %5, i8** %13, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = call i64 @br_digest_size(%struct.TYPE_11__* %23)
  store i64 %24, i64* %16, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %14, align 8
  br label %25

25:                                               ; preds = %41, %6
  %26 = load i64, i64* %14, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %14, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %14, align 8
  br label %25

44:                                               ; preds = %39, %25
  %45 = load i64, i64* %14, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %257

51:                                               ; preds = %44
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @BIT_LENGTH(i64 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %14, align 8
  %63 = sub i64 %61, %62
  %64 = sub i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = shl i32 %65, 3
  %67 = add nsw i32 %58, %66
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %22, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %22, align 4
  %71 = and i32 %70, 7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %51
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %13, align 8
  %76 = load i8, i8* %74, align 1
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* %21, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %21, align 4
  br label %91

80:                                               ; preds = %51
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %22, align 4
  %86 = and i32 %85, 7
  %87 = shl i32 255, %86
  %88 = and i32 %84, %87
  %89 = load i32, i32* %21, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %21, align 4
  br label %91

91:                                               ; preds = %80, %73
  %92 = load i32, i32* %22, align 4
  %93 = add nsw i32 %92, 7
  %94 = ashr i32 %93, 3
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* %15, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %110, label %99

99:                                               ; preds = %91
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %15, align 8
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %104, %105
  %107 = add i64 %106, 2
  %108 = load i64, i64* %15, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103, %99, %91
  store i32 0, i32* %7, align 4
  br label %257

111:                                              ; preds = %103
  %112 = load i8*, i8** %13, align 8
  %113 = load i64, i64* %15, align 8
  %114 = sub i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = xor i32 %117, 188
  %119 = load i32, i32* %21, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %21, align 4
  %121 = load i8*, i8** %13, align 8
  %122 = load i64, i64* %15, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i64, i64* %16, align 8
  %125 = sub i64 0, %124
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = getelementptr inbounds i8, i8* %126, i64 -1
  store i8* %127, i8** %18, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* %16, align 8
  %131 = sub i64 %129, %130
  %132 = sub i64 %131, 1
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %134 = load i8*, i8** %18, align 8
  %135 = load i64, i64* %16, align 8
  %136 = call i32 @br_mgf1_xor(i8* %128, i64 %132, %struct.TYPE_11__* %133, i8* %134, i64 %135)
  %137 = load i32, i32* %22, align 4
  %138 = and i32 %137, 7
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %111
  %141 = load i32, i32* %22, align 4
  %142 = and i32 %141, 7
  %143 = sub nsw i32 8, %142
  %144 = ashr i32 255, %143
  %145 = load i8*, i8** %13, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, %144
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %146, align 1
  br label %151

151:                                              ; preds = %140, %111
  store i64 0, i64* %14, align 8
  br label %152

152:                                              ; preds = %169, %151
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %16, align 8
  %156 = sub i64 %154, %155
  %157 = load i64, i64* %11, align 8
  %158 = sub i64 %156, %157
  %159 = sub i64 %158, 2
  %160 = icmp ult i64 %153, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %152
  %162 = load i8*, i8** %13, align 8
  %163 = load i64, i64* %14, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i32, i32* %21, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %21, align 4
  br label %169

169:                                              ; preds = %161
  %170 = load i64, i64* %14, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %14, align 8
  br label %152

172:                                              ; preds = %152
  %173 = load i8*, i8** %13, align 8
  %174 = load i64, i64* %15, align 8
  %175 = load i64, i64* %16, align 8
  %176 = sub i64 %174, %175
  %177 = load i64, i64* %11, align 8
  %178 = sub i64 %176, %177
  %179 = sub i64 %178, 2
  %180 = getelementptr inbounds i8, i8* %173, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = xor i32 %182, 1
  %184 = load i32, i32* %21, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %21, align 4
  %186 = load i8*, i8** %13, align 8
  %187 = load i64, i64* %15, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  %189 = load i64, i64* %16, align 8
  %190 = sub i64 0, %189
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i64, i64* %11, align 8
  %193 = sub i64 0, %192
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = getelementptr inbounds i8, i8* %194, i64 -1
  store i8* %195, i8** %19, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = load i32 (i32*)*, i32 (i32*)** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %200 = call i32 %198(i32* %199)
  %201 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %202 = call i32 @memset(i8* %201, i32 0, i32 8)
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %207 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %208 = call i32 %205(i32* %206, i8* %207, i64 8)
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %213 = load i8*, i8** %10, align 8
  %214 = load i64, i64* %16, align 8
  %215 = call i32 %211(i32* %212, i8* %213, i64 %214)
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %220 = load i8*, i8** %19, align 8
  %221 = load i64, i64* %11, align 8
  %222 = call i32 %218(i32* %219, i8* %220, i64 %221)
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %227 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %228 = call i32 %225(i32* %226, i8* %227)
  store i64 0, i64* %14, align 8
  br label %229

229:                                              ; preds = %251, %172
  %230 = load i64, i64* %14, align 8
  %231 = load i64, i64* %16, align 8
  %232 = icmp ult i64 %230, %231
  br i1 %232, label %233, label %254

233:                                              ; preds = %229
  %234 = load i64, i64* %14, align 8
  %235 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = load i8*, i8** %13, align 8
  %239 = load i64, i64* %15, align 8
  %240 = load i64, i64* %11, align 8
  %241 = sub i64 %239, %240
  %242 = sub i64 %241, 1
  %243 = load i64, i64* %14, align 8
  %244 = add i64 %242, %243
  %245 = getelementptr inbounds i8, i8* %238, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = xor i32 %237, %247
  %249 = load i32, i32* %21, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %21, align 4
  br label %251

251:                                              ; preds = %233
  %252 = load i64, i64* %14, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %14, align 8
  br label %229

254:                                              ; preds = %229
  %255 = load i32, i32* %21, align 4
  %256 = call i32 @EQ0(i32 %255)
  store i32 %256, i32* %7, align 4
  br label %257

257:                                              ; preds = %254, %110, %50
  %258 = load i32, i32* %7, align 4
  ret i32 %258
}

declare dso_local i64 @br_digest_size(%struct.TYPE_11__*) #1

declare dso_local i32 @BIT_LENGTH(i64) #1

declare dso_local i32 @br_mgf1_xor(i8*, i64, %struct.TYPE_11__*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @EQ0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
