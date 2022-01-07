; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_node_creat.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_node_creat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@FILEBITS = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s skipped. Sockets cannot be copied or extracted\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s has an unknown file type, skipping\00", align 1
@errno = common dso_local global i32 0, align 4
@nodirs = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Could not create: %s\00", align 1
@pids = common dso_local global i64 0, align 8
@pmode = common dso_local global i64 0, align 8
@SETBITS = common dso_local global i32 0, align 4
@NM_CPIO = common dso_local global i32 0, align 4
@argv0 = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not access %s (stat)\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@patime = common dso_local global i64 0, align 8
@pmtime = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @node_creat(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FILEBITS, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %124, %100, %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %76 [
    i32 134, label %20
    i32 136, label %30
    i32 137, label %43
    i32 133, label %56
    i32 129, label %62
    i32 128, label %67
    i32 135, label %75
    i32 132, label %75
    i32 131, label %75
    i32 130, label %75
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mkdir(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %20
  br label %81

30:                                               ; preds = %16
  %31 = load i32, i32* @S_IFCHR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mknod(i32 %36, i32 %37, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %81

43:                                               ; preds = %16
  %44 = load i32, i32* @S_IFBLK, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mknod(i32 %49, i32 %50, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %81

56:                                               ; preds = %16
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @mkfifo(i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %81

62:                                               ; preds = %16
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i32 -1, i32* %2, align 4
  br label %279

67:                                               ; preds = %16
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @symlink(i32 %70, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %81

75:                                               ; preds = %16, %16, %16, %16
  br label %76

76:                                               ; preds = %16, %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 -1, i32* %2, align 4
  br label %279

81:                                               ; preds = %67, %56, %43, %30, %29
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %125

85:                                               ; preds = %81
  %86 = load i32, i32* @errno, align 4
  store i32 %86, i32* %6, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @unlnk_exist(i32 %89, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 -1, i32* %2, align 4
  br label %279

96:                                               ; preds = %85
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  %99 = icmp sle i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %16

101:                                              ; preds = %96
  %102 = load i64, i64* @nodirs, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @chk_path(i32 %107, i32 %111, i32 %115)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %104, %101
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @syswarn(i32 1, i32 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  store i32 -1, i32* %2, align 4
  br label %279

124:                                              ; preds = %104
  br label %16

125:                                              ; preds = %84
  %126 = load i64, i64* @pids, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @set_ids(i32 %131, i32 %135, i32 %139)
  store i32 %140, i32* %4, align 4
  br label %142

141:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %128
  %143 = load i64, i64* @pmode, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %145, %142
  %149 = load i32, i32* @SETBITS, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %150
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %148, %145
  %157 = load i64, i64* @pmode, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @set_pmode(i32 %162, i32 %166)
  br label %168

168:                                              ; preds = %159, %156
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 134
  br i1 %172, label %173, label %259

173:                                              ; preds = %168
  %174 = load i32, i32* @NM_CPIO, align 4
  %175 = load i32, i32* @argv0, align 4
  %176 = call i64 @strcmp(i32 %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %259

178:                                              ; preds = %173
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @R_OK, align 4
  %183 = load i32, i32* @W_OK, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @X_OK, align 4
  %186 = or i32 %184, %185
  %187 = call i64 @access(i32 %181, i32 %186)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %238

189:                                              ; preds = %178
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @lstat(i32 %192, %struct.stat* %9)
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %189
  %196 = load i32, i32* @errno, align 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @syswarn(i32 0, i32 %196, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @S_IRWXU, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @set_pmode(i32 %203, i32 %206)
  br label %228

208:                                              ; preds = %189
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @FILEBITS, align 4
  %215 = and i32 %213, %214
  %216 = load i32, i32* @S_IRWXU, align 4
  %217 = or i32 %215, %216
  %218 = call i32 @set_pmode(i32 %211, i32 %217)
  %219 = load i64, i64* @pmode, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %208
  %222 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  store i32 %223, i32* %226, align 4
  br label %227

227:                                              ; preds = %221, %208
  br label %228

228:                                              ; preds = %227, %195
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = call i32 @add_dir(i32 %231, i32 %234, %struct.TYPE_5__* %236, i32 1)
  br label %258

238:                                              ; preds = %178
  %239 = load i64, i64* @pmode, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %238
  %242 = load i64, i64* @patime, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = load i64, i64* @pmtime, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %244, %241, %238
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  %256 = call i32 @add_dir(i32 %250, i32 %253, %struct.TYPE_5__* %255, i32 0)
  br label %257

257:                                              ; preds = %247, %244
  br label %258

258:                                              ; preds = %257, %228
  br label %259

259:                                              ; preds = %258, %173, %168
  %260 = load i64, i64* @patime, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load i64, i64* @pmtime, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %278

265:                                              ; preds = %262, %259
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @set_ftime(i32 %268, i32 %272, i32 %276, i32 0)
  br label %278

278:                                              ; preds = %265, %262
  store i32 0, i32* %2, align 4
  br label %279

279:                                              ; preds = %278, %118, %95, %76, %62
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @mkdir(i32, i32) #1

declare dso_local i32 @mknod(i32, i32, i32) #1

declare dso_local i32 @mkfifo(i32, i32) #1

declare dso_local i32 @paxwarn(i32, i8*, i32) #1

declare dso_local i32 @symlink(i32, i32) #1

declare dso_local i32 @unlnk_exist(i32, i32) #1

declare dso_local i64 @chk_path(i32, i32, i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i32) #1

declare dso_local i32 @set_ids(i32, i32, i32) #1

declare dso_local i32 @set_pmode(i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @access(i32, i32) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @add_dir(i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @set_ftime(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
