; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_26__, %struct.TYPE_27__ }
%struct.TYPE_26__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i8*, i32, i64, i32 }
%struct.TYPE_27__ = type { i32, i64, i32, i32 }
%struct.TYPE_29__ = type { i64 }

@LCTF_RDWR = common dso_local global i32 0, align 4
@ECTF_RDONLY = common dso_local global i32 0, align 4
@ECTF_BADID = common dso_local global i32 0, align 4
@CTF_K_STRUCT = common dso_local global i64 0, align 8
@CTF_K_UNION = common dso_local global i64 0, align 8
@ECTF_NOTSOU = common dso_local global i32 0, align 4
@CTF_MAX_VLEN = common dso_local global i64 0, align 8
@ECTF_DTFULL = common dso_local global i32 0, align 4
@ECTF_DUPMEMBER = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@CTF_MAX_SIZE = common dso_local global i32 0, align 4
@CTF_LSIZE_SENT = common dso_local global i64 0, align 8
@LCTF_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_add_member(%struct.TYPE_28__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_31__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_29__, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.TYPE_30__* @ctf_dtd_lookup(%struct.TYPE_28__* %24, i32 %25)
  store %struct.TYPE_30__* %26, %struct.TYPE_30__** %10, align 8
  store i8* null, i8** %18, align 8
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LCTF_RDWR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %4
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %35 = load i32, i32* @ECTF_RDONLY, align 4
  %36 = call i32 @ctf_set_errno(%struct.TYPE_28__* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %290

37:                                               ; preds = %4
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %39 = icmp eq %struct.TYPE_30__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %42 = load i32, i32* @ECTF_BADID, align 4
  %43 = call i32 @ctf_set_errno(%struct.TYPE_28__* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %290

44:                                               ; preds = %37
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @CTF_INFO_KIND(i32 %48)
  store i64 %49, i64* %15, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @CTF_INFO_ISROOT(i32 %53)
  store i64 %54, i64* %17, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @CTF_INFO_VLEN(i32 %58)
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* @CTF_K_STRUCT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %44
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* @CTF_K_UNION, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %69 = load i32, i32* @ECTF_NOTSOU, align 4
  %70 = call i32 @ctf_set_errno(%struct.TYPE_28__* %68, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %290

71:                                               ; preds = %63, %44
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* @CTF_MAX_VLEN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %77 = load i32, i32* @ECTF_DTFULL, align 4
  %78 = call i32 @ctf_set_errno(%struct.TYPE_28__* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  br label %290

79:                                               ; preds = %71
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %111

82:                                               ; preds = %79
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = call %struct.TYPE_31__* @ctf_list_next(%struct.TYPE_31__* %85)
  store %struct.TYPE_31__* %86, %struct.TYPE_31__** %11, align 8
  br label %87

87:                                               ; preds = %107, %82
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %89 = icmp ne %struct.TYPE_31__* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i64 @strcmp(i8* %98, i8* %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %104 = load i32, i32* @ECTF_DUPMEMBER, align 4
  %105 = call i32 @ctf_set_errno(%struct.TYPE_28__* %103, i32 %104)
  store i32 %105, i32* %5, align 4
  br label %290

106:                                              ; preds = %95, %90
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %109 = call %struct.TYPE_31__* @ctf_list_next(%struct.TYPE_31__* %108)
  store %struct.TYPE_31__* %109, %struct.TYPE_31__** %11, align 8
  br label %87

110:                                              ; preds = %87
  br label %111

111:                                              ; preds = %110, %79
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @ctf_type_size(%struct.TYPE_28__* %112, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* @CTF_ERR, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @ctf_type_align(%struct.TYPE_28__* %118, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* @CTF_ERR, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117, %111
  %124 = load i32, i32* @CTF_ERR, align 4
  store i32 %124, i32* %5, align 4
  br label %290

125:                                              ; preds = %117
  %126 = call %struct.TYPE_31__* @ctf_alloc(i32 32)
  store %struct.TYPE_31__* %126, %struct.TYPE_31__** %11, align 8
  %127 = icmp eq %struct.TYPE_31__* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %130 = load i32, i32* @EAGAIN, align 4
  %131 = call i32 @ctf_set_errno(%struct.TYPE_28__* %129, i32 %130)
  store i32 %131, i32* %5, align 4
  br label %290

132:                                              ; preds = %125
  %133 = load i8*, i8** %8, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i8*, i8** %8, align 8
  %137 = call i8* @ctf_strdup(i8* %136)
  store i8* %137, i8** %18, align 8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %141 = call i32 @ctf_free(%struct.TYPE_31__* %140, i32 32)
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %143 = load i32, i32* @EAGAIN, align 4
  %144 = call i32 @ctf_set_errno(%struct.TYPE_28__* %142, i32 %143)
  store i32 %144, i32* %5, align 4
  br label %290

145:                                              ; preds = %135, %132
  %146 = load i8*, i8** %18, align 8
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 1
  store i32 -1, i32* %153, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* @CTF_K_STRUCT, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %220

157:                                              ; preds = %145
  %158 = load i64, i64* %16, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %220

160:                                              ; preds = %157
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = call %struct.TYPE_31__* @ctf_list_prev(%struct.TYPE_31__* %163)
  store %struct.TYPE_31__* %164, %struct.TYPE_31__** %19, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ctf_type_resolve(%struct.TYPE_28__* %165, i32 %168)
  store i32 %169, i32* %20, align 4
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %21, align 8
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @ctf_type_encoding(%struct.TYPE_28__* %173, i32 %174, %struct.TYPE_29__* %22)
  %176 = load i32, i32* @CTF_ERR, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %160
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %21, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %21, align 8
  br label %197

183:                                              ; preds = %160
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %185 = load i32, i32* %20, align 4
  %186 = call i32 @ctf_type_size(%struct.TYPE_28__* %184, i32 %185)
  store i32 %186, i32* %23, align 4
  %187 = load i32, i32* @CTF_ERR, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %183
  %190 = load i32, i32* %23, align 4
  %191 = load i32, i32* @NBBY, align 4
  %192 = mul nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %21, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %21, align 8
  br label %196

196:                                              ; preds = %189, %183
  br label %197

197:                                              ; preds = %196, %178
  %198 = load i64, i64* %21, align 8
  %199 = load i32, i32* @NBBY, align 4
  %200 = call i32 @roundup(i64 %198, i32 %199)
  %201 = load i32, i32* @NBBY, align 4
  %202 = sdiv i32 %200, %201
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %21, align 8
  %204 = load i64, i64* %21, align 8
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @MAX(i32 %205, i32 1)
  %207 = call i32 @roundup(i64 %204, i32 %206)
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %21, align 8
  %209 = load i64, i64* %21, align 8
  %210 = load i32, i32* @NBBY, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 %209, %211
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %213, i32 0, i32 2
  store i64 %212, i64* %214, align 8
  %215 = load i64, i64* %21, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = add i64 %215, %217
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %14, align 4
  br label %230

220:                                              ; preds = %157, %145
  %221 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %221, i32 0, i32 2
  store i64 0, i64* %222, align 8
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 1
  %226 = call i32 @ctf_get_ctt_size(%struct.TYPE_28__* %223, %struct.TYPE_27__* %225, i32* null, i32* null)
  store i32 %226, i32* %14, align 4
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @MAX(i32 %227, i32 %228)
  store i32 %229, i32* %14, align 4
  br label %230

230:                                              ; preds = %220, %197
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* @CTF_MAX_SIZE, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %230
  %235 = load i64, i64* @CTF_LSIZE_SENT, align 8
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 1
  store i64 %235, i64* %238, align 8
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @CTF_SIZE_TO_LSIZE_HI(i32 %239)
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 3
  store i32 %240, i32* %243, align 4
  %244 = load i32, i32* %14, align 4
  %245 = call i32 @CTF_SIZE_TO_LSIZE_LO(i32 %244)
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 2
  store i32 %245, i32* %248, align 8
  br label %255

249:                                              ; preds = %230
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 1
  store i64 %251, i64* %254, align 8
  br label %255

255:                                              ; preds = %249, %234
  %256 = load i64, i64* %15, align 8
  %257 = load i64, i64* %17, align 8
  %258 = load i64, i64* %16, align 8
  %259 = add nsw i64 %258, 1
  %260 = call i32 @CTF_TYPE_INFO(i64 %256, i64 %257, i64 %259)
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 0
  store i32 %260, i32* %263, align 8
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %268 = call i32 @ctf_list_append(%struct.TYPE_31__* %266, %struct.TYPE_31__* %267)
  %269 = load i8*, i8** %18, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %281

271:                                              ; preds = %255
  %272 = load i8*, i8** %18, align 8
  %273 = call i64 @strlen(i8* %272)
  %274 = add nsw i64 %273, 1
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %278, %274
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %276, align 4
  br label %281

281:                                              ; preds = %271, %255
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %283 = load i32, i32* %9, align 4
  %284 = call i32 @ctf_ref_inc(%struct.TYPE_28__* %282, i32 %283)
  %285 = load i32, i32* @LCTF_DIRTY, align 4
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  store i32 0, i32* %5, align 4
  br label %290

290:                                              ; preds = %281, %139, %128, %123, %102, %75, %67, %40, %33
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local %struct.TYPE_30__* @ctf_dtd_lookup(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ctf_set_errno(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @CTF_INFO_KIND(i32) #1

declare dso_local i64 @CTF_INFO_ISROOT(i32) #1

declare dso_local i64 @CTF_INFO_VLEN(i32) #1

declare dso_local %struct.TYPE_31__* @ctf_list_next(%struct.TYPE_31__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ctf_type_size(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ctf_type_align(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_31__* @ctf_alloc(i32) #1

declare dso_local i8* @ctf_strdup(i8*) #1

declare dso_local i32 @ctf_free(%struct.TYPE_31__*, i32) #1

declare dso_local %struct.TYPE_31__* @ctf_list_prev(%struct.TYPE_31__*) #1

declare dso_local i32 @ctf_type_resolve(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ctf_type_encoding(%struct.TYPE_28__*, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @ctf_get_ctt_size(%struct.TYPE_28__*, %struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i32 @CTF_SIZE_TO_LSIZE_HI(i32) #1

declare dso_local i32 @CTF_SIZE_TO_LSIZE_LO(i32) #1

declare dso_local i32 @CTF_TYPE_INFO(i64, i64, i64) #1

declare dso_local i32 @ctf_list_append(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ctf_ref_inc(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
