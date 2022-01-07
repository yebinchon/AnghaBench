; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_subr.c_rose_parse_national.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_subr.c_rose_parse_national.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_facilities_struct = type { i8, i32, i32, i32*, i32*, i32, i32 }

@FAC_NATIONAL_RAND = common dso_local global i8 0, align 1
@FAC_NATIONAL_DEST_DIGI = common dso_local global i8 0, align 1
@AX25_ADDR_LEN = common dso_local global i8 0, align 1
@FAC_NATIONAL_SRC_DIGI = common dso_local global i8 0, align 1
@FAC_NATIONAL_FAIL_CALL = common dso_local global i8 0, align 1
@FAC_NATIONAL_FAIL_ADD = common dso_local global i8 0, align 1
@ROSE_ADDR_LEN = common dso_local global i8 0, align 1
@FAC_NATIONAL_DIGIS = common dso_local global i8 0, align 1
@AX25_HBIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rose_facilities_struct*, i32)* @rose_parse_national to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_parse_national(i8* %0, %struct.rose_facilities_struct* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rose_facilities_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.rose_facilities_struct* %1, %struct.rose_facilities_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8 0, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %244, %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 192
  switch i32 %16, label %235 [
    i32 0, label %17
    i32 64, label %26
    i32 128, label %59
    i32 192, label %68
  ]

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  store i8* %19, i8** %4, align 8
  %20 = load i8, i8* %10, align 1
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, 2
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %10, align 1
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %6, align 4
  br label %235

26:                                               ; preds = %12
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @FAC_NATIONAL_RAND, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = and i32 %38, 65280
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 0
  %45 = and i32 %44, 255
  %46 = add nsw i32 %39, %45
  %47 = trunc i32 %46 to i8
  %48 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %49 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %48, i32 0, i32 0
  store i8 %47, i8* %49, align 8
  br label %50

50:                                               ; preds = %33, %26
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  store i8* %52, i8** %4, align 8
  %53 = load i8, i8* %10, align 1
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 %54, 3
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %10, align 1
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 3
  store i32 %58, i32* %6, align 4
  br label %235

59:                                               ; preds = %12
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %61, i8** %4, align 8
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, 4
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %10, align 1
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 4
  store i32 %67, i32* %6, align 4
  br label %235

68:                                               ; preds = %12
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %8, align 1
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @FAC_NATIONAL_DEST_DIGI, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78
  %82 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %83 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* @AX25_ADDR_LEN, align 1
  %89 = call i32 @memcpy(i32* %85, i8* %87, i8 zeroext %88)
  %90 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %91 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %81, %78
  br label %216

93:                                               ; preds = %68
  %94 = load i8*, i8** %4, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @FAC_NATIONAL_SRC_DIGI, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %93
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %105 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = load i8, i8* @AX25_ADDR_LEN, align 1
  %111 = call i32 @memcpy(i32* %107, i8* %109, i8 zeroext %110)
  %112 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %113 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %103, %100
  br label %215

115:                                              ; preds = %93
  %116 = load i8*, i8** %4, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @FAC_NATIONAL_FAIL_CALL, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %124 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %123, i32 0, i32 6
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  %127 = load i8, i8* @AX25_ADDR_LEN, align 1
  %128 = call i32 @memcpy(i32* %124, i8* %126, i8 zeroext %127)
  br label %214

129:                                              ; preds = %115
  %130 = load i8*, i8** %4, align 8
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* @FAC_NATIONAL_FAIL_ADD, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %138 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %137, i32 0, i32 5
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  %141 = load i8, i8* @ROSE_ADDR_LEN, align 1
  %142 = call i32 @memcpy(i32* %138, i8* %140, i8 zeroext %141)
  br label %213

143:                                              ; preds = %129
  %144 = load i8*, i8** %4, align 8
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @FAC_NATIONAL_DIGIS, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %212

150:                                              ; preds = %143
  store i32 1, i32* %11, align 4
  %151 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %152 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %154 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %153, i32 0, i32 2
  store i32 0, i32* %154, align 8
  %155 = load i8*, i8** %4, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  store i8* %156, i8** %7, align 8
  store i8 0, i8* %9, align 1
  br label %157

157:                                              ; preds = %199, %150
  %158 = load i8, i8* %9, align 1
  %159 = zext i8 %158 to i32
  %160 = load i8, i8* %8, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %163, label %211

163:                                              ; preds = %157
  %164 = load i8*, i8** %7, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 6
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8, i8* @AX25_HBIT, align 1
  %169 = zext i8 %168 to i32
  %170 = and i32 %167, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %163
  %173 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %174 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %177 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  %182 = load i8*, i8** %7, align 8
  %183 = load i8, i8* @AX25_ADDR_LEN, align 1
  %184 = call i32 @memcpy(i32* %181, i8* %182, i8 zeroext %183)
  br label %198

185:                                              ; preds = %163
  %186 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %187 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %190 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %188, i64 %193
  %195 = load i8*, i8** %7, align 8
  %196 = load i8, i8* @AX25_ADDR_LEN, align 1
  %197 = call i32 @memcpy(i32* %194, i8* %195, i8 zeroext %196)
  br label %198

198:                                              ; preds = %185, %172
  br label %199

199:                                              ; preds = %198
  %200 = load i8, i8* @AX25_ADDR_LEN, align 1
  %201 = zext i8 %200 to i32
  %202 = load i8*, i8** %7, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %7, align 8
  %205 = load i8, i8* @AX25_ADDR_LEN, align 1
  %206 = zext i8 %205 to i32
  %207 = load i8, i8* %9, align 1
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 %208, %206
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %9, align 1
  br label %157

211:                                              ; preds = %157
  br label %212

212:                                              ; preds = %211, %143
  br label %213

213:                                              ; preds = %212, %136
  br label %214

214:                                              ; preds = %213, %122
  br label %215

215:                                              ; preds = %214, %114
  br label %216

216:                                              ; preds = %215, %92
  %217 = load i8, i8* %8, align 1
  %218 = zext i8 %217 to i32
  %219 = add nsw i32 %218, 2
  %220 = load i8*, i8** %4, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %4, align 8
  %223 = load i8, i8* %8, align 1
  %224 = zext i8 %223 to i32
  %225 = add nsw i32 %224, 2
  %226 = load i8, i8* %10, align 1
  %227 = zext i8 %226 to i32
  %228 = add nsw i32 %227, %225
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %10, align 1
  %230 = load i8, i8* %8, align 1
  %231 = zext i8 %230 to i32
  %232 = add nsw i32 %231, 2
  %233 = load i32, i32* %6, align 4
  %234 = sub nsw i32 %233, %232
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %12, %216, %59, %50, %17
  br label %236

236:                                              ; preds = %235
  %237 = load i8*, i8** %4, align 8
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load i32, i32* %6, align 4
  %243 = icmp sgt i32 %242, 0
  br label %244

244:                                              ; preds = %241, %236
  %245 = phi i1 [ false, %236 ], [ %243, %241 ]
  br i1 %245, label %12, label %246

246:                                              ; preds = %244
  %247 = load i8, i8* %10, align 1
  %248 = zext i8 %247 to i32
  ret i32 %248
}

declare dso_local i32 @memcpy(i32*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
