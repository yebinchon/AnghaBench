; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_ocontext_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_ocontext_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.ocontext** }
%struct.ocontext = type { i64*, i32*, %struct.TYPE_10__, %struct.TYPE_8__, %struct.ocontext* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.policydb_compat_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.policydb_compat_info*, i8*)* @ocontext_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocontext_write(%struct.policydb* %0, %struct.policydb_compat_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.policydb_compat_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca %struct.ocontext*, align 8
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.policydb_compat_info* %1, %struct.policydb_compat_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %337, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.policydb_compat_info*, %struct.policydb_compat_info** %6, align 8
  %19 = getelementptr inbounds %struct.policydb_compat_info, %struct.policydb_compat_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %340

22:                                               ; preds = %16
  store i64 0, i64* %11, align 8
  %23 = load %struct.policydb*, %struct.policydb** %5, align 8
  %24 = getelementptr inbounds %struct.policydb, %struct.policydb* %23, i32 0, i32 0
  %25 = load %struct.ocontext**, %struct.ocontext*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %25, i64 %27
  %29 = load %struct.ocontext*, %struct.ocontext** %28, align 8
  store %struct.ocontext* %29, %struct.ocontext** %15, align 8
  br label %30

30:                                               ; preds = %36, %22
  %31 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %32 = icmp ne %struct.ocontext* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %33
  %37 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %38 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %37, i32 0, i32 4
  %39 = load %struct.ocontext*, %struct.ocontext** %38, align 8
  store %struct.ocontext* %39, %struct.ocontext** %15, align 8
  br label %30

40:                                               ; preds = %30
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @cpu_to_le32(i64 %41)
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @put_entry(i32* %44, i32 4, i32 1, i8* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %341

51:                                               ; preds = %40
  %52 = load %struct.policydb*, %struct.policydb** %5, align 8
  %53 = getelementptr inbounds %struct.policydb, %struct.policydb* %52, i32 0, i32 0
  %54 = load %struct.ocontext**, %struct.ocontext*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %54, i64 %56
  %58 = load %struct.ocontext*, %struct.ocontext** %57, align 8
  store %struct.ocontext* %58, %struct.ocontext** %15, align 8
  br label %59

59:                                               ; preds = %332, %51
  %60 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %61 = icmp ne %struct.ocontext* %60, null
  br i1 %61, label %62, label %336

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  switch i32 %63, label %331 [
    i32 132, label %64
    i32 134, label %92
    i32 131, label %92
    i32 128, label %146
    i32 130, label %188
    i32 133, label %221
    i32 129, label %269
  ]

64:                                               ; preds = %62
  %65 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %66 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @cpu_to_le32(i64 %69)
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @put_entry(i32* %72, i32 4, i32 1, i8* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %341

79:                                               ; preds = %64
  %80 = load %struct.policydb*, %struct.policydb** %5, align 8
  %81 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %82 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @context_write(%struct.policydb* %80, i32* %84, i8* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %341

91:                                               ; preds = %79
  br label %331

92:                                               ; preds = %62, %62
  %93 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %94 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @strlen(i32* %96)
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @cpu_to_le32(i64 %98)
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @put_entry(i32* %101, i32 4, i32 1, i8* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %92
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %4, align 4
  br label %341

108:                                              ; preds = %92
  %109 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %110 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @put_entry(i32* %112, i32 1, i32 %114, i8* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %341

121:                                              ; preds = %108
  %122 = load %struct.policydb*, %struct.policydb** %5, align 8
  %123 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %124 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @context_write(%struct.policydb* %122, i32* %126, i8* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %4, align 4
  br label %341

133:                                              ; preds = %121
  %134 = load %struct.policydb*, %struct.policydb** %5, align 8
  %135 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %136 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @context_write(%struct.policydb* %134, i32* %138, i8* %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %4, align 4
  br label %341

145:                                              ; preds = %133
  br label %331

146:                                              ; preds = %62
  %147 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %148 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @cpu_to_le32(i64 %151)
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %152, i32* %153, align 4
  %154 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %155 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @cpu_to_le32(i64 %158)
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %159, i32* %160, align 4
  %161 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %162 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @cpu_to_le32(i64 %165)
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %166, i32* %167, align 4
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @put_entry(i32* %168, i32 4, i32 3, i8* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %146
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %4, align 4
  br label %341

175:                                              ; preds = %146
  %176 = load %struct.policydb*, %struct.policydb** %5, align 8
  %177 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %178 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @context_write(%struct.policydb* %176, i32* %180, i8* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %4, align 4
  br label %341

187:                                              ; preds = %175
  br label %331

188:                                              ; preds = %62
  %189 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %190 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  store i32 %193, i32* %194, align 16
  %195 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %196 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 1
  store i32 %199, i32* %200, align 4
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %202 = load i8*, i8** %7, align 8
  %203 = call i32 @put_entry(i32* %201, i32 4, i32 2, i8* %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %188
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %4, align 4
  br label %341

208:                                              ; preds = %188
  %209 = load %struct.policydb*, %struct.policydb** %5, align 8
  %210 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %211 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i8*, i8** %7, align 8
  %215 = call i32 @context_write(%struct.policydb* %209, i32* %213, i8* %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %208
  %219 = load i32, i32* %10, align 4
  store i32 %219, i32* %4, align 4
  br label %341

220:                                              ; preds = %208
  br label %331

221:                                              ; preds = %62
  %222 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %223 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @cpu_to_le32(i64 %225)
  %227 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %226, i32* %227, align 4
  %228 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %229 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = call i64 @strlen(i32* %231)
  store i64 %232, i64* %12, align 8
  %233 = load i64, i64* %12, align 8
  %234 = call i32 @cpu_to_le32(i64 %233)
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %234, i32* %235, align 4
  %236 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %237 = load i8*, i8** %7, align 8
  %238 = call i32 @put_entry(i32* %236, i32 4, i32 2, i8* %237)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %221
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %4, align 4
  br label %341

243:                                              ; preds = %221
  %244 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %245 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* %12, align 8
  %249 = trunc i64 %248 to i32
  %250 = load i8*, i8** %7, align 8
  %251 = call i32 @put_entry(i32* %247, i32 1, i32 %249, i8* %250)
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %243
  %255 = load i32, i32* %10, align 4
  store i32 %255, i32* %4, align 4
  br label %341

256:                                              ; preds = %243
  %257 = load %struct.policydb*, %struct.policydb** %5, align 8
  %258 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %259 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i8*, i8** %7, align 8
  %263 = call i32 @context_write(%struct.policydb* %257, i32* %261, i8* %262)
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %10, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %256
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* %4, align 4
  br label %341

268:                                              ; preds = %256
  br label %331

269:                                              ; preds = %62
  store i32 0, i32* %9, align 4
  br label %270

270:                                              ; preds = %286, %269
  %271 = load i32, i32* %9, align 4
  %272 = icmp ult i32 %271, 4
  br i1 %272, label %273, label %289

273:                                              ; preds = %270
  %274 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %275 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %9, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %284
  store i32 %282, i32* %285, align 4
  br label %286

286:                                              ; preds = %273
  %287 = load i32, i32* %9, align 4
  %288 = add i32 %287, 1
  store i32 %288, i32* %9, align 4
  br label %270

289:                                              ; preds = %270
  store i32 0, i32* %9, align 4
  br label %290

290:                                              ; preds = %307, %289
  %291 = load i32, i32* %9, align 4
  %292 = icmp ult i32 %291, 4
  br i1 %292, label %293, label %310

293:                                              ; preds = %290
  %294 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %295 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %9, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %9, align 4
  %304 = add i32 %303, 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %305
  store i32 %302, i32* %306, align 4
  br label %307

307:                                              ; preds = %293
  %308 = load i32, i32* %9, align 4
  %309 = add i32 %308, 1
  store i32 %309, i32* %9, align 4
  br label %290

310:                                              ; preds = %290
  %311 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %312 = load i8*, i8** %7, align 8
  %313 = call i32 @put_entry(i32* %311, i32 4, i32 8, i8* %312)
  store i32 %313, i32* %10, align 4
  %314 = load i32, i32* %10, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %310
  %317 = load i32, i32* %10, align 4
  store i32 %317, i32* %4, align 4
  br label %341

318:                                              ; preds = %310
  %319 = load %struct.policydb*, %struct.policydb** %5, align 8
  %320 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %321 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i8*, i8** %7, align 8
  %325 = call i32 @context_write(%struct.policydb* %319, i32* %323, i8* %324)
  store i32 %325, i32* %10, align 4
  %326 = load i32, i32* %10, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %318
  %329 = load i32, i32* %10, align 4
  store i32 %329, i32* %4, align 4
  br label %341

330:                                              ; preds = %318
  br label %331

331:                                              ; preds = %62, %330, %268, %220, %187, %145, %91
  br label %332

332:                                              ; preds = %331
  %333 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %334 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %333, i32 0, i32 4
  %335 = load %struct.ocontext*, %struct.ocontext** %334, align 8
  store %struct.ocontext* %335, %struct.ocontext** %15, align 8
  br label %59

336:                                              ; preds = %59
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %8, align 4
  %339 = add i32 %338, 1
  store i32 %339, i32* %8, align 4
  br label %16

340:                                              ; preds = %16
  store i32 0, i32* %4, align 4
  br label %341

341:                                              ; preds = %340, %328, %316, %266, %254, %241, %218, %206, %185, %173, %143, %131, %119, %106, %89, %77, %49
  %342 = load i32, i32* %4, align 4
  ret i32 %342
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

declare dso_local i32 @context_write(%struct.policydb*, i32*, i8*) #1

declare dso_local i64 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
