; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_parse_cgroupfs_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_parse_cgroupfs_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys = type { i8*, i32 }
%struct.cgroup_sb_opts = type { i64, i32, i64, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CGROUP_SUBSYS_COUNT = common dso_local global i32 0, align 4
@subsys = common dso_local global %struct.cgroup_subsys** null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"noprefix\00", align 1
@ROOT_NOPREFIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"release_agent=\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@MAX_CGROUP_ROOT_NAMELEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@cpuset_subsys_id = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cgroup_sb_opts*)* @parse_cgroupfs_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cgroupfs_options(i8* %0, %struct.cgroup_sb_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cgroup_sb_opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cgroup_subsys*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.cgroup_subsys*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.cgroup_sb_opts* %1, %struct.cgroup_sb_opts** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %18
  %21 = phi i8* [ %16, %18 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %19 ]
  store i8* %21, i8** %7, align 8
  store i64 -1, i64* %8, align 8
  %22 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %23 = call i32 @memset(%struct.cgroup_sb_opts* %22, i32 0, i32 40)
  br label %24

24:                                               ; preds = %227, %20
  %25 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %228

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %271

34:                                               ; preds = %27
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %34
  %39 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %40 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %64, %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @CGROUP_SUBSYS_COUNT, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.cgroup_subsys**, %struct.cgroup_subsys*** @subsys, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cgroup_subsys*, %struct.cgroup_subsys** %46, i64 %48
  %50 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %49, align 8
  store %struct.cgroup_subsys* %50, %struct.cgroup_subsys** %10, align 8
  %51 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %10, align 8
  %52 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = shl i64 1, %57
  %59 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %60 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = or i64 %61, %58
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %55, %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %41

67:                                               ; preds = %41
  br label %227

68:                                               ; preds = %34
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %74 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  br label %226

75:                                               ; preds = %68
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @ROOT_NOPREFIX, align 4
  %81 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %82 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %81, i32 0, i32 2
  %83 = call i32 @set_bit(i32 %80, i64* %82)
  br label %225

84:                                               ; preds = %75
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 14)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %112, label %88

88:                                               ; preds = %84
  %89 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %90 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %271

96:                                               ; preds = %88
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 14
  %99 = load i32, i32* @PATH_MAX, align 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @kstrndup(i8* %98, i32 %99, i32 %100)
  %102 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %103 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %105 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %96
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %271

111:                                              ; preds = %96
  br label %224

112:                                              ; preds = %84
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @strncmp(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %183, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 5
  store i8* %118, i8** %12, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %271

125:                                              ; preds = %116
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %157, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %160

131:                                              ; preds = %126
  %132 = load i8*, i8** %12, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  store i8 %136, i8* %13, align 1
  %137 = load i8, i8* %13, align 1
  %138 = call i64 @isalnum(i8 signext %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  br label %157

141:                                              ; preds = %131
  %142 = load i8, i8* %13, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 46
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  %146 = load i8, i8* %13, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 45
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i8, i8* %13, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 95
  br i1 %152, label %153, label %154

153:                                              ; preds = %149, %145, %141
  br label %157

154:                                              ; preds = %149
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %271

157:                                              ; preds = %153, %140
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %126

160:                                              ; preds = %126
  %161 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %162 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %271

168:                                              ; preds = %160
  %169 = load i8*, i8** %12, align 8
  %170 = load i32, i32* @MAX_CGROUP_ROOT_NAMELEN, align 4
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call i8* @kstrndup(i8* %169, i32 %170, i32 %171)
  %173 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %174 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %173, i32 0, i32 3
  store i8* %172, i8** %174, align 8
  %175 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %176 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %168
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %3, align 4
  br label %271

182:                                              ; preds = %168
  br label %223

183:                                              ; preds = %112
  store i32 0, i32* %15, align 4
  br label %184

184:                                              ; preds = %212, %183
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* @CGROUP_SUBSYS_COUNT, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %215

188:                                              ; preds = %184
  %189 = load %struct.cgroup_subsys**, %struct.cgroup_subsys*** @subsys, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.cgroup_subsys*, %struct.cgroup_subsys** %189, i64 %191
  %193 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %192, align 8
  store %struct.cgroup_subsys* %193, %struct.cgroup_subsys** %14, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %14, align 8
  %196 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strcmp(i8* %194, i8* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %188
  %201 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %14, align 8
  %202 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %200
  %206 = load i32, i32* %15, align 4
  %207 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %208 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %207, i32 0, i32 0
  %209 = call i32 @set_bit(i32 %206, i64* %208)
  br label %210

210:                                              ; preds = %205, %200
  br label %215

211:                                              ; preds = %188
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  br label %184

215:                                              ; preds = %210, %184
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* @CGROUP_SUBSYS_COUNT, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i32, i32* @ENOENT, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %3, align 4
  br label %271

222:                                              ; preds = %215
  br label %223

223:                                              ; preds = %222, %182
  br label %224

224:                                              ; preds = %223, %111
  br label %225

225:                                              ; preds = %224, %79
  br label %226

226:                                              ; preds = %225, %72
  br label %227

227:                                              ; preds = %226, %67
  br label %24

228:                                              ; preds = %24
  %229 = load i32, i32* @ROOT_NOPREFIX, align 4
  %230 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %231 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %230, i32 0, i32 2
  %232 = call i64 @test_bit(i32 %229, i64* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %228
  %235 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %236 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* %8, align 8
  %239 = and i64 %237, %238
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %234
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %3, align 4
  br label %271

244:                                              ; preds = %234, %228
  %245 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %246 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %244
  %250 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %251 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load i32, i32* @EINVAL, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %3, align 4
  br label %271

257:                                              ; preds = %249, %244
  %258 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %259 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %270, label %262

262:                                              ; preds = %257
  %263 = load %struct.cgroup_sb_opts*, %struct.cgroup_sb_opts** %5, align 8
  %264 = getelementptr inbounds %struct.cgroup_sb_opts, %struct.cgroup_sb_opts* %263, i32 0, i32 3
  %265 = load i8*, i8** %264, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %270, label %267

267:                                              ; preds = %262
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %3, align 4
  br label %271

270:                                              ; preds = %262, %257
  store i32 0, i32* %3, align 4
  br label %271

271:                                              ; preds = %270, %267, %254, %241, %219, %179, %165, %154, %122, %108, %93, %31
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @memset(%struct.cgroup_sb_opts*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @kstrndup(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
