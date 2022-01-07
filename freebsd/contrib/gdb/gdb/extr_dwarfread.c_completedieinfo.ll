; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_completedieinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_completedieinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dieinfo = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8* }
%struct.objfile = type { i32 }

@diecount = common dso_local global i32 0, align 4
@SIZEOF_DIE_LENGTH = common dso_local global i64 0, align 8
@SIZEOF_DIE_TAG = common dso_local global i64 0, align 8
@SIZEOF_ATTRIBUTE = common dso_local global i32 0, align 4
@GET_UNSIGNED = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"DIE @ 0x%x \22%s\22, unknown attribute length, skipped remaining attributes\00", align 1
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@baseaddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dieinfo*, %struct.objfile*)* @completedieinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @completedieinfo(%struct.dieinfo* %0, %struct.objfile* %1) #0 {
  %3 = alloca %struct.dieinfo*, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.dieinfo* %0, %struct.dieinfo** %3, align 8
  store %struct.objfile* %1, %struct.objfile** %4, align 8
  %10 = load i32, i32* @diecount, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @diecount, align 4
  %12 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %13 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %17 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8* %20, i8** %6, align 8
  %21 = load i64, i64* @SIZEOF_DIE_LENGTH, align 8
  %22 = load i64, i64* @SIZEOF_DIE_TAG, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %318, %45, %2
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %319

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @SIZEOF_ATTRIBUTE, align 4
  %33 = load i32, i32* @GET_UNSIGNED, align 4
  %34 = load %struct.objfile*, %struct.objfile** %4, align 8
  %35 = call i32 @target_to_host(i8* %31, i32 %32, i32 %33, %struct.objfile* %34)
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %7, align 2
  %37 = load i32, i32* @SIZEOF_ATTRIBUTE, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %5, align 8
  %41 = load i16, i16* %7, align 2
  %42 = call i32 @attribute_size(i16 zeroext %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load i32, i32* @DIE_ID, align 4
  %47 = load i32, i32* @DIE_NAME, align 4
  %48 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %5, align 8
  br label %26

50:                                               ; preds = %30
  %51 = load i16, i16* %7, align 2
  %52 = zext i16 %51 to i32
  switch i32 %52, label %264 [
    i32 156, label %53
    i32 147, label %61
    i32 163, label %69
    i32 143, label %77
    i32 140, label %85
    i32 152, label %95
    i32 155, label %110
    i32 154, label %123
    i32 136, label %131
    i32 161, label %139
    i32 162, label %149
    i32 151, label %157
    i32 159, label %165
    i32 153, label %173
    i32 150, label %177
    i32 137, label %181
    i32 149, label %185
    i32 157, label %189
    i32 144, label %195
    i32 158, label %201
    i32 138, label %205
    i32 148, label %209
    i32 160, label %213
    i32 146, label %232
    i32 141, label %236
    i32 139, label %244
    i32 142, label %252
    i32 145, label %260
  ]

53:                                               ; preds = %50
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @GET_UNSIGNED, align 4
  %57 = load %struct.objfile*, %struct.objfile** %4, align 8
  %58 = call i32 @target_to_host(i8* %54, i32 %55, i32 %56, %struct.objfile* %57)
  %59 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %60 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %265

61:                                               ; preds = %50
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @GET_UNSIGNED, align 4
  %65 = load %struct.objfile*, %struct.objfile** %4, align 8
  %66 = call i32 @target_to_host(i8* %62, i32 %63, i32 %64, %struct.objfile* %65)
  %67 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %68 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  br label %265

69:                                               ; preds = %50
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @GET_UNSIGNED, align 4
  %73 = load %struct.objfile*, %struct.objfile** %4, align 8
  %74 = call i32 @target_to_host(i8* %70, i32 %71, i32 %72, %struct.objfile* %73)
  %75 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %76 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  br label %265

77:                                               ; preds = %50
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @GET_UNSIGNED, align 4
  %81 = load %struct.objfile*, %struct.objfile** %4, align 8
  %82 = call i32 @target_to_host(i8* %78, i32 %79, i32 %80, %struct.objfile* %81)
  %83 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %84 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  br label %265

85:                                               ; preds = %50
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @GET_UNSIGNED, align 4
  %89 = load %struct.objfile*, %struct.objfile** %4, align 8
  %90 = call i32 @target_to_host(i8* %86, i32 %87, i32 %88, %struct.objfile* %89)
  %91 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %92 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %94 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %93, i32 0, i32 7
  store i32 1, i32* %94, align 8
  br label %265

95:                                               ; preds = %50
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @GET_UNSIGNED, align 4
  %99 = load %struct.objfile*, %struct.objfile** %4, align 8
  %100 = call i32 @target_to_host(i8* %96, i32 %97, i32 %98, %struct.objfile* %99)
  %101 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %102 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @baseaddr, align 4
  %104 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %105 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %109 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %108, i32 0, i32 9
  store i32 1, i32* %109, align 8
  br label %265

110:                                              ; preds = %50
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @GET_UNSIGNED, align 4
  %114 = load %struct.objfile*, %struct.objfile** %4, align 8
  %115 = call i32 @target_to_host(i8* %111, i32 %112, i32 %113, %struct.objfile* %114)
  %116 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %117 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %116, i32 0, i32 10
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @baseaddr, align 4
  %119 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %120 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %265

123:                                              ; preds = %50
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @GET_UNSIGNED, align 4
  %127 = load %struct.objfile*, %struct.objfile** %4, align 8
  %128 = call i32 @target_to_host(i8* %124, i32 %125, i32 %126, %struct.objfile* %127)
  %129 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %130 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %129, i32 0, i32 11
  store i32 %128, i32* %130, align 8
  br label %265

131:                                              ; preds = %50
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @GET_UNSIGNED, align 4
  %135 = load %struct.objfile*, %struct.objfile** %4, align 8
  %136 = call i32 @target_to_host(i8* %132, i32 %133, i32 %134, %struct.objfile* %135)
  %137 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %138 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %137, i32 0, i32 12
  store i32 %136, i32* %138, align 4
  br label %265

139:                                              ; preds = %50
  %140 = load i8*, i8** %5, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @GET_UNSIGNED, align 4
  %143 = load %struct.objfile*, %struct.objfile** %4, align 8
  %144 = call i32 @target_to_host(i8* %140, i32 %141, i32 %142, %struct.objfile* %143)
  %145 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %146 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %145, i32 0, i32 13
  store i32 %144, i32* %146, align 8
  %147 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %148 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %147, i32 0, i32 14
  store i32 1, i32* %148, align 4
  br label %265

149:                                              ; preds = %50
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @GET_UNSIGNED, align 4
  %153 = load %struct.objfile*, %struct.objfile** %4, align 8
  %154 = call i32 @target_to_host(i8* %150, i32 %151, i32 %152, %struct.objfile* %153)
  %155 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %156 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %155, i32 0, i32 15
  store i32 %154, i32* %156, align 8
  br label %265

157:                                              ; preds = %50
  %158 = load i8*, i8** %5, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @GET_UNSIGNED, align 4
  %161 = load %struct.objfile*, %struct.objfile** %4, align 8
  %162 = call i32 @target_to_host(i8* %158, i32 %159, i32 %160, %struct.objfile* %161)
  %163 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %164 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %163, i32 0, i32 16
  store i32 %162, i32* %164, align 4
  br label %265

165:                                              ; preds = %50
  %166 = load i8*, i8** %5, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @GET_UNSIGNED, align 4
  %169 = load %struct.objfile*, %struct.objfile** %4, align 8
  %170 = call i32 @target_to_host(i8* %166, i32 %167, i32 %168, %struct.objfile* %169)
  %171 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %172 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %171, i32 0, i32 17
  store i32 %170, i32* %172, align 8
  br label %265

173:                                              ; preds = %50
  %174 = load i8*, i8** %5, align 8
  %175 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %176 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %175, i32 0, i32 18
  store i8* %174, i8** %176, align 8
  br label %265

177:                                              ; preds = %50
  %178 = load i8*, i8** %5, align 8
  %179 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %180 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %179, i32 0, i32 19
  store i8* %178, i8** %180, align 8
  br label %265

181:                                              ; preds = %50
  %182 = load i8*, i8** %5, align 8
  %183 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %184 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %183, i32 0, i32 20
  store i8* %182, i8** %184, align 8
  br label %265

185:                                              ; preds = %50
  %186 = load i8*, i8** %5, align 8
  %187 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %188 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %187, i32 0, i32 21
  store i8* %186, i8** %188, align 8
  br label %265

189:                                              ; preds = %50
  %190 = load i8*, i8** %5, align 8
  %191 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %192 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %191, i32 0, i32 22
  store i8* %190, i8** %192, align 8
  %193 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %194 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %193, i32 0, i32 23
  store i32 0, i32* %194, align 8
  br label %265

195:                                              ; preds = %50
  %196 = load i8*, i8** %5, align 8
  %197 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %198 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %197, i32 0, i32 22
  store i8* %196, i8** %198, align 8
  %199 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %200 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %199, i32 0, i32 23
  store i32 1, i32* %200, align 8
  br label %265

201:                                              ; preds = %50
  %202 = load i8*, i8** %5, align 8
  %203 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %204 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %203, i32 0, i32 24
  store i8* %202, i8** %204, align 8
  br label %265

205:                                              ; preds = %50
  %206 = load i8*, i8** %5, align 8
  %207 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %208 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %207, i32 0, i32 25
  store i8* %206, i8** %208, align 8
  br label %265

209:                                              ; preds = %50
  %210 = load i8*, i8** %5, align 8
  %211 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %212 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %211, i32 0, i32 26
  store i8* %210, i8** %212, align 8
  br label %265

213:                                              ; preds = %50
  %214 = load i8*, i8** %5, align 8
  %215 = call i8* @strrchr(i8* %214, i8 signext 58)
  %216 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %217 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %216, i32 0, i32 27
  store i8* %215, i8** %217, align 8
  %218 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %219 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %218, i32 0, i32 27
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %213
  %223 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %224 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %223, i32 0, i32 27
  %225 = load i8*, i8** %224, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %224, align 8
  br label %231

227:                                              ; preds = %213
  %228 = load i8*, i8** %5, align 8
  %229 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %230 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %229, i32 0, i32 27
  store i8* %228, i8** %230, align 8
  br label %231

231:                                              ; preds = %227, %222
  br label %265

232:                                              ; preds = %50
  %233 = load i8*, i8** %5, align 8
  %234 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %235 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %234, i32 0, i32 28
  store i8* %233, i8** %235, align 8
  br label %265

236:                                              ; preds = %50
  %237 = load i8*, i8** %5, align 8
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @GET_UNSIGNED, align 4
  %240 = load %struct.objfile*, %struct.objfile** %4, align 8
  %241 = call i32 @target_to_host(i8* %237, i32 %238, i32 %239, %struct.objfile* %240)
  %242 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %243 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %242, i32 0, i32 29
  store i32 %241, i32* %243, align 8
  br label %265

244:                                              ; preds = %50
  %245 = load i8*, i8** %5, align 8
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @GET_UNSIGNED, align 4
  %248 = load %struct.objfile*, %struct.objfile** %4, align 8
  %249 = call i32 @target_to_host(i8* %245, i32 %246, i32 %247, %struct.objfile* %248)
  %250 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %251 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %250, i32 0, i32 30
  store i32 %249, i32* %251, align 4
  br label %265

252:                                              ; preds = %50
  %253 = load i8*, i8** %5, align 8
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @GET_UNSIGNED, align 4
  %256 = load %struct.objfile*, %struct.objfile** %4, align 8
  %257 = call i32 @target_to_host(i8* %253, i32 %254, i32 %255, %struct.objfile* %256)
  %258 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %259 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %258, i32 0, i32 31
  store i32 %257, i32* %259, align 8
  br label %265

260:                                              ; preds = %50
  %261 = load i8*, i8** %5, align 8
  %262 = load %struct.dieinfo*, %struct.dieinfo** %3, align 8
  %263 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %262, i32 0, i32 32
  store i8* %261, i8** %263, align 8
  br label %265

264:                                              ; preds = %50
  br label %265

265:                                              ; preds = %264, %260, %252, %244, %236, %232, %231, %209, %205, %201, %195, %189, %185, %181, %177, %173, %165, %157, %149, %139, %131, %123, %110, %95, %85, %77, %69, %61, %53
  %266 = load i16, i16* %7, align 2
  %267 = call zeroext i16 @FORM_FROM_ATTR(i16 zeroext %266)
  store i16 %267, i16* %8, align 2
  %268 = load i16, i16* %8, align 2
  %269 = zext i16 %268 to i32
  switch i32 %269, label %312 [
    i32 132, label %270
    i32 131, label %273
    i32 129, label %273
    i32 130, label %276
    i32 135, label %279
    i32 134, label %285
    i32 133, label %295
    i32 128, label %305
  ]

270:                                              ; preds = %265
  %271 = load i8*, i8** %5, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 2
  store i8* %272, i8** %5, align 8
  br label %318

273:                                              ; preds = %265, %265
  %274 = load i8*, i8** %5, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 4
  store i8* %275, i8** %5, align 8
  br label %318

276:                                              ; preds = %265
  %277 = load i8*, i8** %5, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 8
  store i8* %278, i8** %5, align 8
  br label %318

279:                                              ; preds = %265
  %280 = load %struct.objfile*, %struct.objfile** %4, align 8
  %281 = call i32 @TARGET_FT_POINTER_SIZE(%struct.objfile* %280)
  %282 = load i8*, i8** %5, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i8, i8* %282, i64 %283
  store i8* %284, i8** %5, align 8
  br label %318

285:                                              ; preds = %265
  %286 = load i8*, i8** %5, align 8
  %287 = load i32, i32* %9, align 4
  %288 = load i32, i32* @GET_UNSIGNED, align 4
  %289 = load %struct.objfile*, %struct.objfile** %4, align 8
  %290 = call i32 @target_to_host(i8* %286, i32 %287, i32 %288, %struct.objfile* %289)
  %291 = add nsw i32 2, %290
  %292 = load i8*, i8** %5, align 8
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds i8, i8* %292, i64 %293
  store i8* %294, i8** %5, align 8
  br label %318

295:                                              ; preds = %265
  %296 = load i8*, i8** %5, align 8
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* @GET_UNSIGNED, align 4
  %299 = load %struct.objfile*, %struct.objfile** %4, align 8
  %300 = call i32 @target_to_host(i8* %296, i32 %297, i32 %298, %struct.objfile* %299)
  %301 = add nsw i32 4, %300
  %302 = load i8*, i8** %5, align 8
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8* %304, i8** %5, align 8
  br label %318

305:                                              ; preds = %265
  %306 = load i8*, i8** %5, align 8
  %307 = call i32 @strlen(i8* %306)
  %308 = add nsw i32 %307, 1
  %309 = load i8*, i8** %5, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i8, i8* %309, i64 %310
  store i8* %311, i8** %5, align 8
  br label %318

312:                                              ; preds = %265
  %313 = load i32, i32* @DIE_ID, align 4
  %314 = load i32, i32* @DIE_NAME, align 4
  %315 = load i16, i16* %8, align 2
  %316 = call i32 @unknown_attribute_form_complaint(i32 %313, i32 %314, i16 zeroext %315)
  %317 = load i8*, i8** %6, align 8
  store i8* %317, i8** %5, align 8
  br label %318

318:                                              ; preds = %312, %305, %295, %285, %279, %276, %273, %270
  br label %26

319:                                              ; preds = %26
  ret void
}

declare dso_local i32 @target_to_host(i8*, i32, i32, %struct.objfile*) #1

declare dso_local i32 @attribute_size(i16 zeroext) #1

declare dso_local i32 @complaint(i32*, i8*, i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local zeroext i16 @FORM_FROM_ATTR(i16 zeroext) #1

declare dso_local i32 @TARGET_FT_POINTER_SIZE(%struct.objfile*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @unknown_attribute_form_complaint(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
