; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_ocontext_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_ocontext_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.ocontext** }
%struct.ocontext = type { i32*, %struct.TYPE_10__, %struct.TYPE_8__, i8**, %struct.ocontext* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i8* }
%struct.policydb_compat_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SECURITY_FS_USE_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.policydb_compat_info*, i8*)* @ocontext_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocontext_read(%struct.policydb* %0, %struct.policydb_compat_info* %1, i8* %2) #0 {
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.policydb_compat_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca %struct.ocontext*, align 8
  %14 = alloca %struct.ocontext*, align 8
  %15 = alloca [8 x i32], align 16
  %16 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.policydb_compat_info* %1, %struct.policydb_compat_info** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %370, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.policydb_compat_info*, %struct.policydb_compat_info** %5, align 8
  %20 = getelementptr inbounds %struct.policydb_compat_info, %struct.policydb_compat_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %373

23:                                               ; preds = %17
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @next_entry(i32* %24, i8* %25, i32 4)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %374

30:                                               ; preds = %23
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %10, align 4
  store %struct.ocontext* null, %struct.ocontext** %13, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %366, %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %369

39:                                               ; preds = %35
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.ocontext* @kzalloc(i32 88, i32 %42)
  store %struct.ocontext* %43, %struct.ocontext** %14, align 8
  %44 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %45 = icmp ne %struct.ocontext* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %374

47:                                               ; preds = %39
  %48 = load %struct.ocontext*, %struct.ocontext** %13, align 8
  %49 = icmp ne %struct.ocontext* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %52 = load %struct.ocontext*, %struct.ocontext** %13, align 8
  %53 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %52, i32 0, i32 4
  store %struct.ocontext* %51, %struct.ocontext** %53, align 8
  br label %62

54:                                               ; preds = %47
  %55 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %56 = load %struct.policydb*, %struct.policydb** %4, align 8
  %57 = getelementptr inbounds %struct.policydb, %struct.policydb* %56, i32 0, i32 0
  %58 = load %struct.ocontext**, %struct.ocontext*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %58, i64 %60
  store %struct.ocontext* %55, %struct.ocontext** %61, align 8
  br label %62

62:                                               ; preds = %54, %50
  %63 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  store %struct.ocontext* %63, %struct.ocontext** %13, align 8
  %64 = load i32, i32* %7, align 4
  switch i32 %64, label %365 [
    i32 132, label %65
    i32 134, label %91
    i32 131, label %91
    i32 128, label %160
    i32 130, label %200
    i32 133, label %231
    i32 129, label %305
  ]

65:                                               ; preds = %62
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @next_entry(i32* %66, i8* %67, i32 4)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %374

72:                                               ; preds = %65
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @le32_to_cpu(i32 %74)
  %76 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %77 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %76, i32 0, i32 3
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  store i8* %75, i8** %79, align 8
  %80 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %81 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load %struct.policydb*, %struct.policydb** %4, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @context_read_and_validate(i32* %83, %struct.policydb* %84, i8* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  br label %374

90:                                               ; preds = %72
  br label %365

91:                                               ; preds = %62, %62
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @next_entry(i32* %92, i8* %93, i32 4)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %374

98:                                               ; preds = %91
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le32_to_cpu(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @kmalloc(i32 %106, i32 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %111 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32* %109, i32** %112, align 8
  %113 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %114 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %98
  br label %374

119:                                              ; preds = %98
  %120 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %121 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @next_entry(i32* %123, i8* %124, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %374

130:                                              ; preds = %119
  %131 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %132 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 0, i32* %137, align 4
  %138 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %139 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load %struct.policydb*, %struct.policydb** %4, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @context_read_and_validate(i32* %141, %struct.policydb* %142, i8* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %130
  br label %374

148:                                              ; preds = %130
  %149 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %150 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load %struct.policydb*, %struct.policydb** %4, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @context_read_and_validate(i32* %152, %struct.policydb* %153, i8* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %374

159:                                              ; preds = %148
  br label %365

160:                                              ; preds = %62
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @next_entry(i32* %161, i8* %162, i32 12)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %374

167:                                              ; preds = %160
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @le32_to_cpu(i32 %169)
  %171 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %172 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  store i8* %170, i8** %174, align 8
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @le32_to_cpu(i32 %176)
  %178 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %179 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  store i8* %177, i8** %181, align 8
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @le32_to_cpu(i32 %183)
  %185 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %186 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i8* %184, i8** %188, align 8
  %189 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %190 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load %struct.policydb*, %struct.policydb** %4, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = call i32 @context_read_and_validate(i32* %192, %struct.policydb* %193, i8* %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %167
  br label %374

199:                                              ; preds = %167
  br label %365

200:                                              ; preds = %62
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %202 = load i8*, i8** %6, align 8
  %203 = call i32 @next_entry(i32* %201, i8* %202, i32 8)
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %374

207:                                              ; preds = %200
  %208 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %209 = load i32, i32* %208, align 16
  %210 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %211 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  store i32 %209, i32* %213, align 8
  %214 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %217 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  store i32 %215, i32* %219, align 4
  %220 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %221 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load %struct.policydb*, %struct.policydb** %4, align 8
  %225 = load i8*, i8** %6, align 8
  %226 = call i32 @context_read_and_validate(i32* %223, %struct.policydb* %224, i8* %225)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %207
  br label %374

230:                                              ; preds = %207
  br label %365

231:                                              ; preds = %62
  %232 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %233 = load i8*, i8** %6, align 8
  %234 = call i32 @next_entry(i32* %232, i8* %233, i32 8)
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %374

238:                                              ; preds = %231
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %9, align 4
  %241 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @le32_to_cpu(i32 %242)
  %244 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %245 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  store i8* %243, i8** %246, align 8
  %247 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %248 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load i8*, i8** @SECURITY_FS_USE_NONE, align 8
  %252 = icmp ugt i8* %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %238
  br label %374

254:                                              ; preds = %238
  %255 = load i32, i32* @ENOMEM, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %9, align 4
  %257 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = call i8* @le32_to_cpu(i32 %258)
  %260 = ptrtoint i8* %259 to i32
  store i32 %260, i32* %11, align 4
  %261 = load i32, i32* %11, align 4
  %262 = add nsw i32 %261, 1
  %263 = load i32, i32* @GFP_KERNEL, align 4
  %264 = call i8* @kmalloc(i32 %262, i32 %263)
  %265 = bitcast i8* %264 to i32*
  %266 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %267 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  store i32* %265, i32** %268, align 8
  %269 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %270 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %254
  br label %374

275:                                              ; preds = %254
  %276 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %277 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i8*, i8** %6, align 8
  %281 = load i32, i32* %11, align 4
  %282 = call i32 @next_entry(i32* %279, i8* %280, i32 %281)
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %9, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %275
  br label %374

286:                                              ; preds = %275
  %287 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %288 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  store i32 0, i32* %293, align 4
  %294 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %295 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 0
  %298 = load %struct.policydb*, %struct.policydb** %4, align 8
  %299 = load i8*, i8** %6, align 8
  %300 = call i32 @context_read_and_validate(i32* %297, %struct.policydb* %298, i8* %299)
  store i32 %300, i32* %9, align 4
  %301 = load i32, i32* %9, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %286
  br label %374

304:                                              ; preds = %286
  br label %365

305:                                              ; preds = %62
  %306 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %307 = load i8*, i8** %6, align 8
  %308 = call i32 @next_entry(i32* %306, i8* %307, i32 32)
  store i32 %308, i32* %9, align 4
  %309 = load i32, i32* %9, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  br label %374

312:                                              ; preds = %305
  store i32 0, i32* %16, align 4
  br label %313

313:                                              ; preds = %329, %312
  %314 = load i32, i32* %16, align 4
  %315 = icmp slt i32 %314, 4
  br i1 %315, label %316, label %332

316:                                              ; preds = %313
  %317 = load i32, i32* %16, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %322 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %16, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 %320, i32* %328, align 4
  br label %329

329:                                              ; preds = %316
  %330 = load i32, i32* %16, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %16, align 4
  br label %313

332:                                              ; preds = %313
  store i32 0, i32* %16, align 4
  br label %333

333:                                              ; preds = %350, %332
  %334 = load i32, i32* %16, align 4
  %335 = icmp slt i32 %334, 4
  br i1 %335, label %336, label %353

336:                                              ; preds = %333
  %337 = load i32, i32* %16, align 4
  %338 = add nsw i32 %337, 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %343 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %16, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  store i32 %341, i32* %349, align 4
  br label %350

350:                                              ; preds = %336
  %351 = load i32, i32* %16, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %16, align 4
  br label %333

353:                                              ; preds = %333
  %354 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %355 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load %struct.policydb*, %struct.policydb** %4, align 8
  %359 = load i8*, i8** %6, align 8
  %360 = call i32 @context_read_and_validate(i32* %357, %struct.policydb* %358, i8* %359)
  store i32 %360, i32* %9, align 4
  %361 = load i32, i32* %9, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %353
  br label %374

364:                                              ; preds = %353
  br label %365

365:                                              ; preds = %62, %364, %304, %230, %199, %159, %90
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %8, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %8, align 4
  br label %35

369:                                              ; preds = %35
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %7, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %7, align 4
  br label %17

373:                                              ; preds = %17
  store i32 0, i32* %9, align 4
  br label %374

374:                                              ; preds = %373, %363, %311, %303, %285, %274, %253, %237, %229, %206, %198, %166, %158, %147, %129, %118, %97, %89, %71, %46, %29
  %375 = load i32, i32* %9, align 4
  ret i32 %375
}

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.ocontext* @kzalloc(i32, i32) #1

declare dso_local i32 @context_read_and_validate(i32*, %struct.policydb*, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
