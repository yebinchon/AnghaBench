; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_create_neon_reg_alias.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_create_neon_reg_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_entry = type { i32, i32, %struct.neon_typed_alias* }
%struct.neon_typed_alias = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.neon_type = type { i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }

@NT_invtype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" .dn \00", align 1
@REG_TYPE_VFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" .qn \00", align 1
@REG_TYPE_NQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"bad type for register\00", align 1
@GE_NO_PREFIX = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"expression must be constant\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@NTA_HASTYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"can't redefine the type of a register alias\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"you must specify a single type only\00", align 1
@NTA_HASINDEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"can't redefine the index of a scalar alias\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"scalar index must be constant\00", align 1
@FAIL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"expecting ]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @create_neon_reg_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_neon_reg_alias(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reg_entry*, align 8
  %8 = alloca %struct.reg_entry, align 8
  %9 = alloca %struct.neon_type, align 8
  %10 = alloca %struct.neon_typed_alias, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @NT_invtype, align 4
  %18 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @REG_TYPE_VFD, align 4
  store i32 %28, i32* %6, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @REG_TYPE_NQ, align 4
  store i32 %34, i32* %6, align 4
  br label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %267

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %267

45:                                               ; preds = %37
  %46 = call %struct.reg_entry* @arm_reg_parse_multi(i8** %5)
  store %struct.reg_entry* %46, %struct.reg_entry** %7, align 8
  %47 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %48 = icmp ne %struct.reg_entry* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %51 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @as_bad(i32 %56)
  store i32 0, i32* %3, align 4
  br label %267

58:                                               ; preds = %49, %45
  %59 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %60 = icmp eq %struct.reg_entry* %59, null
  br i1 %60, label %61, label %88

61:                                               ; preds = %58
  %62 = load i32, i32* @GE_NO_PREFIX, align 4
  %63 = call i32 @my_get_expression(%struct.TYPE_5__* %14, i8** %5, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @O_constant, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @as_bad(i32 %69)
  store i32 0, i32* %3, align 4
  br label %267

71:                                               ; preds = %61
  store %struct.reg_entry* %8, %struct.reg_entry** %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @REG_TYPE_NQ, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 2
  br label %82

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i32 [ %78, %75 ], [ %81, %79 ]
  %84 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %85 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %87 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %86, i32 0, i32 2
  store %struct.neon_typed_alias* null, %struct.neon_typed_alias** %87, align 8
  br label %88

88:                                               ; preds = %82, %58
  %89 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %90 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %89, i32 0, i32 2
  %91 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %90, align 8
  %92 = icmp ne %struct.neon_typed_alias* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %95 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %94, i32 0, i32 2
  %96 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %95, align 8
  %97 = bitcast %struct.neon_typed_alias* %10 to i8*
  %98 = bitcast %struct.neon_typed_alias* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 16, i1 false)
  br label %99

99:                                               ; preds = %93, %88
  %100 = call i64 @parse_neon_type(%struct.neon_type* %9, i8** %5)
  %101 = load i64, i64* @SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NTA_HASTYPE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %111 = call i32 @as_bad(i32 %110)
  store i32 0, i32* %3, align 4
  br label %267

112:                                              ; preds = %103
  %113 = load i32, i32* @NTA_HASTYPE, align 4
  %114 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %9, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %122 = call i32 @as_bad(i32 %121)
  store i32 0, i32* %3, align 4
  br label %267

123:                                              ; preds = %112
  %124 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 2
  %125 = getelementptr inbounds %struct.neon_type, %struct.neon_type* %9, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 0
  %128 = bitcast %struct.TYPE_4__* %124 to i8*
  %129 = bitcast %struct.TYPE_4__* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 8, i1 false)
  br label %130

130:                                              ; preds = %123, %99
  %131 = call i64 @skip_past_char(i8** %5, i8 signext 91)
  %132 = load i64, i64* @SUCCESS, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %168

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @NTA_HASINDEX, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %142 = call i32 @as_bad(i32 %141)
  store i32 0, i32* %3, align 4
  br label %267

143:                                              ; preds = %134
  %144 = load i32, i32* @GE_NO_PREFIX, align 4
  %145 = call i32 @my_get_expression(%struct.TYPE_5__* %15, i8** %5, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @O_constant, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %152 = call i32 @as_bad(i32 %151)
  store i32 0, i32* %3, align 4
  br label %267

153:                                              ; preds = %143
  %154 = load i32, i32* @NTA_HASINDEX, align 4
  %155 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 4
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 1
  store i32 %159, i32* %160, align 4
  %161 = call i64 @skip_past_char(i8** %5, i8 signext 93)
  %162 = load i64, i64* @FAIL, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %153
  %165 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %166 = call i32 @as_bad(i32 %165)
  store i32 0, i32* %3, align 4
  br label %267

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %167, %130
  %169 = load i8*, i8** %12, align 8
  %170 = load i8*, i8** %4, align 8
  %171 = ptrtoint i8* %169 to i64
  %172 = ptrtoint i8* %170 to i64
  %173 = sub i64 %171, %172
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  %177 = call i8* @alloca(i32 %176)
  store i8* %177, i8** %11, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = load i8*, i8** %4, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @strncpy(i8* %178, i8* %179, i32 %180)
  %182 = load i8*, i8** %11, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  store i8 0, i8* %185, align 1
  %186 = load i8*, i8** %11, align 8
  %187 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %188 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %6, align 4
  %191 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %168
  br label %196

195:                                              ; preds = %168
  br label %196

196:                                              ; preds = %195, %194
  %197 = phi %struct.neon_typed_alias* [ %10, %194 ], [ null, %195 ]
  %198 = call i32 @insert_neon_reg_alias(i8* %186, i32 %189, i32 %190, %struct.neon_typed_alias* %197)
  %199 = load i8*, i8** %11, align 8
  store i8* %199, i8** %5, align 8
  br label %200

200:                                              ; preds = %209, %196
  %201 = load i8*, i8** %5, align 8
  %202 = load i8, i8* %201, align 1
  %203 = icmp ne i8 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load i8*, i8** %5, align 8
  %206 = load i8, i8* %205, align 1
  %207 = call signext i8 @TOUPPER(i8 signext %206)
  %208 = load i8*, i8** %5, align 8
  store i8 %207, i8* %208, align 1
  br label %209

209:                                              ; preds = %204
  %210 = load i8*, i8** %5, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %5, align 8
  br label %200

212:                                              ; preds = %200
  %213 = load i8*, i8** %11, align 8
  %214 = load i8*, i8** %4, align 8
  %215 = load i32, i32* %13, align 4
  %216 = call i64 @strncmp(i8* %213, i8* %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %232

218:                                              ; preds = %212
  %219 = load i8*, i8** %11, align 8
  %220 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %221 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %6, align 4
  %224 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %218
  br label %229

228:                                              ; preds = %218
  br label %229

229:                                              ; preds = %228, %227
  %230 = phi %struct.neon_typed_alias* [ %10, %227 ], [ null, %228 ]
  %231 = call i32 @insert_neon_reg_alias(i8* %219, i32 %222, i32 %223, %struct.neon_typed_alias* %230)
  br label %232

232:                                              ; preds = %229, %212
  %233 = load i8*, i8** %11, align 8
  store i8* %233, i8** %5, align 8
  br label %234

234:                                              ; preds = %243, %232
  %235 = load i8*, i8** %5, align 8
  %236 = load i8, i8* %235, align 1
  %237 = icmp ne i8 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %234
  %239 = load i8*, i8** %5, align 8
  %240 = load i8, i8* %239, align 1
  %241 = call signext i8 @TOLOWER(i8 signext %240)
  %242 = load i8*, i8** %5, align 8
  store i8 %241, i8* %242, align 1
  br label %243

243:                                              ; preds = %238
  %244 = load i8*, i8** %5, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %5, align 8
  br label %234

246:                                              ; preds = %234
  %247 = load i8*, i8** %11, align 8
  %248 = load i8*, i8** %4, align 8
  %249 = load i32, i32* %13, align 4
  %250 = call i64 @strncmp(i8* %247, i8* %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %246
  %253 = load i8*, i8** %11, align 8
  %254 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %255 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %6, align 4
  %258 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %10, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %252
  br label %263

262:                                              ; preds = %252
  br label %263

263:                                              ; preds = %262, %261
  %264 = phi %struct.neon_typed_alias* [ %10, %261 ], [ null, %262 ]
  %265 = call i32 @insert_neon_reg_alias(i8* %253, i32 %256, i32 %257, %struct.neon_typed_alias* %264)
  br label %266

266:                                              ; preds = %263, %246
  store i32 1, i32* %3, align 4
  br label %267

267:                                              ; preds = %266, %164, %150, %140, %120, %109, %68, %55, %44, %35
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.reg_entry* @arm_reg_parse_multi(i8**) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @my_get_expression(%struct.TYPE_5__*, i8**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @parse_neon_type(%struct.neon_type*, i8**) #1

declare dso_local i64 @skip_past_char(i8**, i8 signext) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @insert_neon_reg_alias(i8*, i32, i32, %struct.neon_typed_alias*) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
