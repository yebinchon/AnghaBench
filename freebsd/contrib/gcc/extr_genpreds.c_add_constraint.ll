; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_add_constraint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_add_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constraint_data = type { i64, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.constraint_data*, %struct.constraint_data*, i64 }

@.str = private unnamed_addr constant [51 x i8] c"constraint name '%s' is not a letter or underscore\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"constraint name '%s' does not begin with a letter or underscore\00", align 1
@have_error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"constraint name '%s' must be composed of letters, digits, underscores, and angle brackets\00", align 1
@generic_constraint_letters = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"constraint letter '%s' cannot be redefined by the machine description\00", align 1
@.str.4 = private unnamed_addr constant [90 x i8] c"constraint name '%s' cannot be defined by the machine description, as it begins with '%c'\00", align 1
@constraints_by_letter_table = common dso_local global %struct.constraint_data** null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"redefinition of constraint '%s'\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"previous definition is here\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"defining constraint '%s' here\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"renders constraint '%s' (defined here) a prefix\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"constraint '%s' is a prefix\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"of constraint '%s' (defined here)\00", align 1
@const_int_constraints = common dso_local global i32 0, align 4
@const_dbl_constraints = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i32 0, align 4
@AND = common dso_local global i64 0, align 8
@MATCH_CODE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [54 x i8] c"constraint letter '%c' is reserved for %s constraints\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"constraint names beginning with '%c' (%s) are reserved for %s constraints\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"constraint letter '%c' cannot be a memory constraint\00", align 1
@.str.14 = private unnamed_addr constant [83 x i8] c"constraint name '%s' begins with '%c', and therefore cannot be a memory constraint\00", align 1
@rtl_obstack = common dso_local global i32 0, align 4
@last_constraint_ptr = common dso_local global %struct.constraint_data** null, align 8
@constraint_max_namelen = common dso_local global i32 0, align 4
@have_register_constraints = common dso_local global i32 0, align 4
@have_const_int_constraints = common dso_local global i32 0, align 4
@have_const_dbl_constraints = common dso_local global i32 0, align 4
@have_extra_constraints = common dso_local global i32 0, align 4
@have_memory_constraints = common dso_local global i32 0, align 4
@have_address_constraints = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32, i32, i32)* @add_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_constraint(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.constraint_data*, align 8
  %14 = alloca %struct.constraint_data**, align 8
  %15 = alloca %struct.constraint_data**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %6
  %25 = load i64, i64* %9, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @validate_exp(i64 %25, i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %449

31:                                               ; preds = %24, %6
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @ISALPHA(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 95
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (i32, i8*, ...) @message_with_line(i32 %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %57

53:                                               ; preds = %43
  %54 = load i32, i32* %12, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i32, i8*, ...) @message_with_line(i32 %54, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %53, %49
  store i32 1, i32* @have_error, align 4
  br label %449

58:                                               ; preds = %37, %31
  %59 = load i8*, i8** %7, align 8
  store i8* %59, i8** %16, align 8
  br label %60

60:                                               ; preds = %91, %58
  %61 = load i8*, i8** %16, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  %65 = load i8*, i8** %16, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @ISALNUM(i8 signext %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %90, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %16, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 60
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %16, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 62
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %16, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 95
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74, %69
  store i32 1, i32* %17, align 4
  br label %89

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 (i32, i8*, ...) @message_with_line(i32 %86, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  store i32 1, i32* @have_error, align 4
  br label %449

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %64
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %16, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %16, align 8
  br label %60

94:                                               ; preds = %60
  %95 = load i32, i32* @generic_constraint_letters, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @strchr(i32 %95, i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %94
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* %12, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 (i32, i8*, ...) @message_with_line(i32 %108, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  br label %119

111:                                              ; preds = %101
  %112 = load i32, i32* %12, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = call i32 (i32, i8*, ...) @message_with_line(i32 %112, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i8* %113, i32 %117)
  br label %119

119:                                              ; preds = %111, %107
  store i32 1, i32* @have_error, align 4
  br label %449

120:                                              ; preds = %94
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 @strlen(i8* %121)
  store i64 %122, i64* %20, align 8
  %123 = load %struct.constraint_data**, %struct.constraint_data*** @constraints_by_letter_table, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.constraint_data*, %struct.constraint_data** %123, i64 %128
  store %struct.constraint_data** %129, %struct.constraint_data*** %15, align 8
  %130 = load %struct.constraint_data**, %struct.constraint_data*** %15, align 8
  store %struct.constraint_data** %130, %struct.constraint_data*** %14, align 8
  br label %131

131:                                              ; preds = %211, %120
  %132 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %133 = load %struct.constraint_data*, %struct.constraint_data** %132, align 8
  %134 = icmp ne %struct.constraint_data* %133, null
  br i1 %134, label %135, label %215

135:                                              ; preds = %131
  %136 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %137 = load %struct.constraint_data*, %struct.constraint_data** %136, align 8
  %138 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %20, align 8
  %141 = icmp uge i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  store %struct.constraint_data** %143, %struct.constraint_data*** %15, align 8
  br label %144

144:                                              ; preds = %142, %135
  %145 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %146 = load %struct.constraint_data*, %struct.constraint_data** %145, align 8
  %147 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = call i64 @strcmp(i8* %148, i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %12, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 (i32, i8*, ...) @message_with_line(i32 %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %154)
  %156 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %157 = load %struct.constraint_data*, %struct.constraint_data** %156, align 8
  %158 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @message_with_line(i32 %159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* @have_error, align 4
  br label %449

161:                                              ; preds = %144
  %162 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %163 = load %struct.constraint_data*, %struct.constraint_data** %162, align 8
  %164 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %168 = load %struct.constraint_data*, %struct.constraint_data** %167, align 8
  %169 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @strncmp(i8* %165, i8* %166, i64 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %186, label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %12, align 4
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 (i32, i8*, ...) @message_with_line(i32 %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %175)
  %177 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %178 = load %struct.constraint_data*, %struct.constraint_data** %177, align 8
  %179 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %182 = load %struct.constraint_data*, %struct.constraint_data** %181, align 8
  %183 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 (i32, i8*, ...) @message_with_line(i32 %180, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %184)
  store i32 1, i32* @have_error, align 4
  br label %449

186:                                              ; preds = %161
  %187 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %188 = load %struct.constraint_data*, %struct.constraint_data** %187, align 8
  %189 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load i8*, i8** %7, align 8
  %192 = load i64, i64* %20, align 8
  %193 = call i32 @strncmp(i8* %190, i8* %191, i64 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %186
  %196 = load i32, i32* %12, align 4
  %197 = load i8*, i8** %7, align 8
  %198 = call i32 (i32, i8*, ...) @message_with_line(i32 %196, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %197)
  %199 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %200 = load %struct.constraint_data*, %struct.constraint_data** %199, align 8
  %201 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %204 = load %struct.constraint_data*, %struct.constraint_data** %203, align 8
  %205 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 (i32, i8*, ...) @message_with_line(i32 %202, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %206)
  store i32 1, i32* @have_error, align 4
  br label %449

208:                                              ; preds = %186
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210
  %212 = load %struct.constraint_data**, %struct.constraint_data*** %14, align 8
  %213 = load %struct.constraint_data*, %struct.constraint_data** %212, align 8
  %214 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %213, i32 0, i32 12
  store %struct.constraint_data** %214, %struct.constraint_data*** %14, align 8
  br label %131

215:                                              ; preds = %131
  %216 = load i32, i32* @const_int_constraints, align 4
  %217 = load i8*, i8** %7, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = call i64 @strchr(i32 %216, i8 signext %219)
  %221 = icmp ne i64 %220, 0
  %222 = zext i1 %221 to i32
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* @const_dbl_constraints, align 4
  %224 = load i8*, i8** %7, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 0
  %226 = load i8, i8* %225, align 1
  %227 = call i64 @strchr(i32 %223, i8 signext %226)
  %228 = icmp ne i64 %227, 0
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %19, align 4
  %230 = load i32, i32* %18, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %215
  %233 = load i32, i32* %19, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %343

235:                                              ; preds = %232, %215
  %236 = load i32, i32* %18, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = load i32, i32* @CONST_INT, align 4
  br label %242

240:                                              ; preds = %235
  %241 = load i32, i32* @CONST_DOUBLE, align 4
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  store i32 %243, i32* %21, align 4
  %244 = load i8*, i8** %8, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %265, label %246

246:                                              ; preds = %242
  %247 = load i64, i64* %9, align 8
  %248 = call i64 @GET_CODE(i64 %247)
  %249 = load i64, i64* @AND, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %265, label %251

251:                                              ; preds = %246
  %252 = load i64, i64* %9, align 8
  %253 = call i64 @XEXP(i64 %252, i32 0)
  %254 = call i64 @GET_CODE(i64 %253)
  %255 = load i64, i64* @MATCH_CODE, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %265, label %257

257:                                              ; preds = %251
  %258 = load i64, i64* %9, align 8
  %259 = call i64 @XEXP(i64 %258, i32 0)
  %260 = call i8* @XSTR(i64 %259, i32 0)
  %261 = load i32, i32* %21, align 4
  %262 = call i8* @GET_RTX_NAME(i32 %261)
  %263 = call i64 @strcmp(i8* %260, i8* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %291

265:                                              ; preds = %257, %251, %246, %242
  %266 = load i8*, i8** %7, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 1
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %265
  %272 = load i32, i32* %12, align 4
  %273 = load i8*, i8** %7, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 0
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = load i32, i32* %21, align 4
  %278 = call i8* @GET_RTX_NAME(i32 %277)
  %279 = call i32 (i32, i8*, ...) @message_with_line(i32 %272, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %276, i8* %278)
  br label %290

280:                                              ; preds = %265
  %281 = load i32, i32* %12, align 4
  %282 = load i8*, i8** %7, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 0
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = load i8*, i8** %7, align 8
  %287 = load i32, i32* %21, align 4
  %288 = call i8* @GET_RTX_NAME(i32 %287)
  %289 = call i32 (i32, i8*, ...) @message_with_line(i32 %281, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0), i32 %285, i8* %286, i8* %288)
  br label %290

290:                                              ; preds = %280, %271
  store i32 1, i32* @have_error, align 4
  br label %449

291:                                              ; preds = %257
  %292 = load i32, i32* %10, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %316

294:                                              ; preds = %291
  %295 = load i8*, i8** %7, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 1
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %294
  %301 = load i32, i32* %12, align 4
  %302 = load i8*, i8** %7, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 0
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = call i32 (i32, i8*, ...) @message_with_line(i32 %301, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 %305)
  br label %315

307:                                              ; preds = %294
  %308 = load i32, i32* %12, align 4
  %309 = load i8*, i8** %7, align 8
  %310 = load i8*, i8** %7, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 0
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = call i32 (i32, i8*, ...) @message_with_line(i32 %308, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.14, i64 0, i64 0), i8* %309, i32 %313)
  br label %315

315:                                              ; preds = %307, %300
  store i32 1, i32* @have_error, align 4
  br label %449

316:                                              ; preds = %291
  %317 = load i32, i32* %11, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %341

319:                                              ; preds = %316
  %320 = load i8*, i8** %7, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 1
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %319
  %326 = load i32, i32* %12, align 4
  %327 = load i8*, i8** %7, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 0
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = call i32 (i32, i8*, ...) @message_with_line(i32 %326, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 %330)
  br label %340

332:                                              ; preds = %319
  %333 = load i32, i32* %12, align 4
  %334 = load i8*, i8** %7, align 8
  %335 = load i8*, i8** %7, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 0
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = call i32 (i32, i8*, ...) @message_with_line(i32 %333, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.14, i64 0, i64 0), i8* %334, i32 %338)
  br label %340

340:                                              ; preds = %332, %325
  store i32 1, i32* @have_error, align 4
  br label %449

341:                                              ; preds = %316
  br label %342

342:                                              ; preds = %341
  br label %343

343:                                              ; preds = %342, %232
  %344 = load i32, i32* @rtl_obstack, align 4
  %345 = call %struct.constraint_data* @obstack_alloc(i32 %344, i32 88)
  store %struct.constraint_data* %345, %struct.constraint_data** %13, align 8
  %346 = load i8*, i8** %7, align 8
  %347 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %348 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %347, i32 0, i32 1
  store i8* %346, i8** %348, align 8
  %349 = load i32, i32* %17, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %343
  %352 = load i8*, i8** %7, align 8
  %353 = call i8* @mangle(i8* %352)
  br label %356

354:                                              ; preds = %343
  %355 = load i8*, i8** %7, align 8
  br label %356

356:                                              ; preds = %354, %351
  %357 = phi i8* [ %353, %351 ], [ %355, %354 ]
  %358 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %359 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %358, i32 0, i32 3
  store i8* %357, i8** %359, align 8
  %360 = load i32, i32* %12, align 4
  %361 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %362 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %361, i32 0, i32 2
  store i32 %360, i32* %362, align 8
  %363 = load i64, i64* %20, align 8
  %364 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %365 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %364, i32 0, i32 0
  store i64 %363, i64* %365, align 8
  %366 = load i8*, i8** %8, align 8
  %367 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %368 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %367, i32 0, i32 4
  store i8* %366, i8** %368, align 8
  %369 = load i64, i64* %9, align 8
  %370 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %371 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %370, i32 0, i32 13
  store i64 %369, i64* %371, align 8
  %372 = load i8*, i8** %8, align 8
  %373 = icmp ne i8* %372, null
  %374 = zext i1 %373 to i32
  %375 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %376 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %375, i32 0, i32 5
  store i32 %374, i32* %376, align 8
  %377 = load i32, i32* %18, align 4
  %378 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %379 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %378, i32 0, i32 6
  store i32 %377, i32* %379, align 4
  %380 = load i32, i32* %19, align 4
  %381 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %382 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %381, i32 0, i32 7
  store i32 %380, i32* %382, align 8
  %383 = load i8*, i8** %8, align 8
  %384 = icmp ne i8* %383, null
  br i1 %384, label %391, label %385

385:                                              ; preds = %356
  %386 = load i32, i32* %18, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %391, label %388

388:                                              ; preds = %385
  %389 = load i32, i32* %19, align 4
  %390 = icmp ne i32 %389, 0
  br label %391

391:                                              ; preds = %388, %385, %356
  %392 = phi i1 [ true, %385 ], [ true, %356 ], [ %390, %388 ]
  %393 = xor i1 %392, true
  %394 = zext i1 %393 to i32
  %395 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %396 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %395, i32 0, i32 8
  store i32 %394, i32* %396, align 4
  %397 = load i32, i32* %10, align 4
  %398 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %399 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %398, i32 0, i32 9
  store i32 %397, i32* %399, align 8
  %400 = load i32, i32* %11, align 4
  %401 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %402 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %401, i32 0, i32 10
  store i32 %400, i32* %402, align 4
  %403 = load %struct.constraint_data**, %struct.constraint_data*** %15, align 8
  %404 = load %struct.constraint_data*, %struct.constraint_data** %403, align 8
  %405 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %406 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %405, i32 0, i32 12
  store %struct.constraint_data* %404, %struct.constraint_data** %406, align 8
  %407 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %408 = load %struct.constraint_data**, %struct.constraint_data*** %15, align 8
  store %struct.constraint_data* %407, %struct.constraint_data** %408, align 8
  %409 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %410 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %409, i32 0, i32 11
  store %struct.constraint_data* null, %struct.constraint_data** %410, align 8
  %411 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %412 = load %struct.constraint_data**, %struct.constraint_data*** @last_constraint_ptr, align 8
  store %struct.constraint_data* %411, %struct.constraint_data** %412, align 8
  %413 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %414 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %413, i32 0, i32 11
  store %struct.constraint_data** %414, %struct.constraint_data*** @last_constraint_ptr, align 8
  %415 = load i32, i32* @constraint_max_namelen, align 4
  %416 = load i8*, i8** %7, align 8
  %417 = call i64 @strlen(i8* %416)
  %418 = call i32 @MAX(i32 %415, i64 %417)
  store i32 %418, i32* @constraint_max_namelen, align 4
  %419 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %420 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* @have_register_constraints, align 4
  %423 = or i32 %422, %421
  store i32 %423, i32* @have_register_constraints, align 4
  %424 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %425 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %424, i32 0, i32 6
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @have_const_int_constraints, align 4
  %428 = or i32 %427, %426
  store i32 %428, i32* @have_const_int_constraints, align 4
  %429 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %430 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %429, i32 0, i32 7
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @have_const_dbl_constraints, align 4
  %433 = or i32 %432, %431
  store i32 %433, i32* @have_const_dbl_constraints, align 4
  %434 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %435 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %434, i32 0, i32 8
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @have_extra_constraints, align 4
  %438 = or i32 %437, %436
  store i32 %438, i32* @have_extra_constraints, align 4
  %439 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %440 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %439, i32 0, i32 9
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @have_memory_constraints, align 4
  %443 = or i32 %442, %441
  store i32 %443, i32* @have_memory_constraints, align 4
  %444 = load %struct.constraint_data*, %struct.constraint_data** %13, align 8
  %445 = getelementptr inbounds %struct.constraint_data, %struct.constraint_data* %444, i32 0, i32 10
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @have_address_constraints, align 4
  %448 = or i32 %447, %446
  store i32 %448, i32* @have_address_constraints, align 4
  br label %449

449:                                              ; preds = %391, %340, %315, %290, %195, %173, %152, %119, %85, %57, %30
  ret void
}

declare dso_local i64 @validate_exp(i64, i8*, i32) #1

declare dso_local i32 @ISALPHA(i8 signext) #1

declare dso_local i32 @message_with_line(i32, i8*, ...) #1

declare dso_local i32 @ISALNUM(i8 signext) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i8* @XSTR(i64, i32) #1

declare dso_local i8* @GET_RTX_NAME(i32) #1

declare dso_local %struct.constraint_data* @obstack_alloc(i32, i32) #1

declare dso_local i8* @mangle(i8*) #1

declare dso_local i32 @MAX(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
