; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_finalize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.property*, %struct.menu*, %struct.menu*, %struct.menu*, %struct.symbol*, %struct.expr* }
%struct.property = type { i64, %struct.TYPE_8__, i32, %struct.expr*, %struct.menu*, %struct.property* }
%struct.TYPE_8__ = type { %struct.expr* }
%struct.symbol = type { i64, i32, %struct.TYPE_7__, %struct.property* }
%struct.TYPE_7__ = type { i8* }
%struct.expr = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.symbol* }
%struct.TYPE_5__ = type { %struct.expr* }

@S_UNKNOWN = common dso_local global i64 0, align 8
@current_entry = common dso_local global %struct.menu* null, align 8
@S_TRISTATE = common dso_local global i64 0, align 8
@P_SELECT = common dso_local global i64 0, align 8
@E_UNEQUAL = common dso_local global i32 0, align 4
@symbol_no = common dso_local global i32 0, align 4
@SYMBOL_CHOICEVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"choice value must have a prompt\00", align 1
@P_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"defaults for choice values not supported\00", align 1
@P_PROMPT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"choice value used outside its choice group\00", align 1
@E_EQUAL = common dso_local global i32 0, align 4
@symbol_yes = common dso_local global i32 0, align 4
@P_CHOICE = common dso_local global i32 0, align 4
@E_LIST = common dso_local global i32 0, align 4
@SYMBOL_WARNED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"config symbol defined without type\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"choice must have a prompt\00", align 1
@symbol_mod = common dso_local global %struct.symbol zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_finalize(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca %struct.menu*, align 8
  %4 = alloca %struct.menu*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.property*, align 8
  %7 = alloca %struct.expr*, align 8
  %8 = alloca %struct.expr*, align 8
  %9 = alloca %struct.expr*, align 8
  %10 = alloca %struct.expr*, align 8
  %11 = alloca %struct.expr**, align 8
  %12 = alloca %struct.symbol*, align 8
  store %struct.menu* %0, %struct.menu** %2, align 8
  %13 = load %struct.menu*, %struct.menu** %2, align 8
  %14 = getelementptr inbounds %struct.menu, %struct.menu* %13, i32 0, i32 4
  %15 = load %struct.symbol*, %struct.symbol** %14, align 8
  store %struct.symbol* %15, %struct.symbol** %5, align 8
  %16 = load %struct.menu*, %struct.menu** %2, align 8
  %17 = getelementptr inbounds %struct.menu, %struct.menu* %16, i32 0, i32 1
  %18 = load %struct.menu*, %struct.menu** %17, align 8
  %19 = icmp ne %struct.menu* %18, null
  br i1 %19, label %20, label %245

20:                                               ; preds = %1
  %21 = load %struct.symbol*, %struct.symbol** %5, align 8
  %22 = icmp ne %struct.symbol* %21, null
  br i1 %22, label %23, label %101

23:                                               ; preds = %20
  %24 = load %struct.symbol*, %struct.symbol** %5, align 8
  %25 = call i64 @sym_is_choice(%struct.symbol* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %101

27:                                               ; preds = %23
  %28 = load %struct.symbol*, %struct.symbol** %5, align 8
  %29 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @S_UNKNOWN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load %struct.menu*, %struct.menu** %2, align 8
  store %struct.menu* %34, %struct.menu** @current_entry, align 8
  %35 = load %struct.menu*, %struct.menu** %2, align 8
  %36 = getelementptr inbounds %struct.menu, %struct.menu* %35, i32 0, i32 1
  %37 = load %struct.menu*, %struct.menu** %36, align 8
  store %struct.menu* %37, %struct.menu** %3, align 8
  br label %38

38:                                               ; preds = %62, %33
  %39 = load %struct.menu*, %struct.menu** %3, align 8
  %40 = icmp ne %struct.menu* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load %struct.menu*, %struct.menu** %3, align 8
  %43 = getelementptr inbounds %struct.menu, %struct.menu* %42, i32 0, i32 4
  %44 = load %struct.symbol*, %struct.symbol** %43, align 8
  %45 = icmp ne %struct.symbol* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.menu*, %struct.menu** %3, align 8
  %48 = getelementptr inbounds %struct.menu, %struct.menu* %47, i32 0, i32 4
  %49 = load %struct.symbol*, %struct.symbol** %48, align 8
  %50 = getelementptr inbounds %struct.symbol, %struct.symbol* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @S_UNKNOWN, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.menu*, %struct.menu** %3, align 8
  %56 = getelementptr inbounds %struct.menu, %struct.menu* %55, i32 0, i32 4
  %57 = load %struct.symbol*, %struct.symbol** %56, align 8
  %58 = getelementptr inbounds %struct.symbol, %struct.symbol* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @menu_set_type(i64 %59)
  br label %66

61:                                               ; preds = %46, %41
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.menu*, %struct.menu** %3, align 8
  %64 = getelementptr inbounds %struct.menu, %struct.menu* %63, i32 0, i32 2
  %65 = load %struct.menu*, %struct.menu** %64, align 8
  store %struct.menu* %65, %struct.menu** %3, align 8
  br label %38

66:                                               ; preds = %54, %38
  br label %67

67:                                               ; preds = %66, %27
  %68 = load %struct.menu*, %struct.menu** %2, align 8
  %69 = getelementptr inbounds %struct.menu, %struct.menu* %68, i32 0, i32 1
  %70 = load %struct.menu*, %struct.menu** %69, align 8
  store %struct.menu* %70, %struct.menu** %3, align 8
  br label %71

71:                                               ; preds = %94, %67
  %72 = load %struct.menu*, %struct.menu** %3, align 8
  %73 = icmp ne %struct.menu* %72, null
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load %struct.menu*, %struct.menu** %3, align 8
  store %struct.menu* %75, %struct.menu** @current_entry, align 8
  %76 = load %struct.menu*, %struct.menu** %3, align 8
  %77 = getelementptr inbounds %struct.menu, %struct.menu* %76, i32 0, i32 4
  %78 = load %struct.symbol*, %struct.symbol** %77, align 8
  %79 = icmp ne %struct.symbol* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load %struct.menu*, %struct.menu** %3, align 8
  %82 = getelementptr inbounds %struct.menu, %struct.menu* %81, i32 0, i32 4
  %83 = load %struct.symbol*, %struct.symbol** %82, align 8
  %84 = getelementptr inbounds %struct.symbol, %struct.symbol* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @S_UNKNOWN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.symbol*, %struct.symbol** %5, align 8
  %90 = getelementptr inbounds %struct.symbol, %struct.symbol* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @menu_set_type(i64 %91)
  br label %93

93:                                               ; preds = %88, %80, %74
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.menu*, %struct.menu** %3, align 8
  %96 = getelementptr inbounds %struct.menu, %struct.menu* %95, i32 0, i32 2
  %97 = load %struct.menu*, %struct.menu** %96, align 8
  store %struct.menu* %97, %struct.menu** %3, align 8
  br label %71

98:                                               ; preds = %71
  %99 = load %struct.symbol*, %struct.symbol** %5, align 8
  %100 = call %struct.expr* @expr_alloc_symbol(%struct.symbol* %99)
  store %struct.expr* %100, %struct.expr** %7, align 8
  br label %118

101:                                              ; preds = %23, %20
  %102 = load %struct.menu*, %struct.menu** %2, align 8
  %103 = getelementptr inbounds %struct.menu, %struct.menu* %102, i32 0, i32 0
  %104 = load %struct.property*, %struct.property** %103, align 8
  %105 = icmp ne %struct.property* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.menu*, %struct.menu** %2, align 8
  %108 = getelementptr inbounds %struct.menu, %struct.menu* %107, i32 0, i32 0
  %109 = load %struct.property*, %struct.property** %108, align 8
  %110 = getelementptr inbounds %struct.property, %struct.property* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.expr*, %struct.expr** %111, align 8
  store %struct.expr* %112, %struct.expr** %7, align 8
  br label %117

113:                                              ; preds = %101
  %114 = load %struct.menu*, %struct.menu** %2, align 8
  %115 = getelementptr inbounds %struct.menu, %struct.menu* %114, i32 0, i32 5
  %116 = load %struct.expr*, %struct.expr** %115, align 8
  store %struct.expr* %116, %struct.expr** %7, align 8
  br label %117

117:                                              ; preds = %113, %106
  br label %118

118:                                              ; preds = %117, %98
  %119 = load %struct.menu*, %struct.menu** %2, align 8
  %120 = getelementptr inbounds %struct.menu, %struct.menu* %119, i32 0, i32 1
  %121 = load %struct.menu*, %struct.menu** %120, align 8
  store %struct.menu* %121, %struct.menu** %3, align 8
  br label %122

122:                                              ; preds = %227, %118
  %123 = load %struct.menu*, %struct.menu** %3, align 8
  %124 = icmp ne %struct.menu* %123, null
  br i1 %124, label %125, label %231

125:                                              ; preds = %122
  %126 = load %struct.menu*, %struct.menu** %3, align 8
  %127 = getelementptr inbounds %struct.menu, %struct.menu* %126, i32 0, i32 5
  %128 = load %struct.expr*, %struct.expr** %127, align 8
  %129 = call %struct.expr* @expr_transform(%struct.expr* %128)
  store %struct.expr* %129, %struct.expr** %8, align 8
  %130 = load %struct.expr*, %struct.expr** %7, align 8
  %131 = call %struct.expr* @expr_copy(%struct.expr* %130)
  %132 = load %struct.expr*, %struct.expr** %8, align 8
  %133 = call i8* @expr_alloc_and(%struct.expr* %131, %struct.expr* %132)
  %134 = bitcast i8* %133 to %struct.expr*
  store %struct.expr* %134, %struct.expr** %8, align 8
  %135 = load %struct.expr*, %struct.expr** %8, align 8
  %136 = call %struct.expr* @expr_eliminate_dups(%struct.expr* %135)
  store %struct.expr* %136, %struct.expr** %8, align 8
  %137 = load %struct.expr*, %struct.expr** %8, align 8
  %138 = load %struct.menu*, %struct.menu** %3, align 8
  %139 = getelementptr inbounds %struct.menu, %struct.menu* %138, i32 0, i32 5
  store %struct.expr* %137, %struct.expr** %139, align 8
  %140 = load %struct.menu*, %struct.menu** %3, align 8
  %141 = getelementptr inbounds %struct.menu, %struct.menu* %140, i32 0, i32 4
  %142 = load %struct.symbol*, %struct.symbol** %141, align 8
  %143 = icmp ne %struct.symbol* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %125
  %145 = load %struct.menu*, %struct.menu** %3, align 8
  %146 = getelementptr inbounds %struct.menu, %struct.menu* %145, i32 0, i32 4
  %147 = load %struct.symbol*, %struct.symbol** %146, align 8
  %148 = getelementptr inbounds %struct.symbol, %struct.symbol* %147, i32 0, i32 3
  %149 = load %struct.property*, %struct.property** %148, align 8
  store %struct.property* %149, %struct.property** %6, align 8
  br label %154

150:                                              ; preds = %125
  %151 = load %struct.menu*, %struct.menu** %3, align 8
  %152 = getelementptr inbounds %struct.menu, %struct.menu* %151, i32 0, i32 0
  %153 = load %struct.property*, %struct.property** %152, align 8
  store %struct.property* %153, %struct.property** %6, align 8
  br label %154

154:                                              ; preds = %150, %144
  br label %155

155:                                              ; preds = %222, %154
  %156 = load %struct.property*, %struct.property** %6, align 8
  %157 = icmp ne %struct.property* %156, null
  br i1 %157, label %158, label %226

158:                                              ; preds = %155
  %159 = load %struct.property*, %struct.property** %6, align 8
  %160 = getelementptr inbounds %struct.property, %struct.property* %159, i32 0, i32 4
  %161 = load %struct.menu*, %struct.menu** %160, align 8
  %162 = load %struct.menu*, %struct.menu** %3, align 8
  %163 = icmp ne %struct.menu* %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %222

165:                                              ; preds = %158
  %166 = load %struct.property*, %struct.property** %6, align 8
  %167 = getelementptr inbounds %struct.property, %struct.property* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load %struct.expr*, %struct.expr** %168, align 8
  %170 = call %struct.expr* @expr_transform(%struct.expr* %169)
  store %struct.expr* %170, %struct.expr** %9, align 8
  %171 = load %struct.expr*, %struct.expr** %8, align 8
  %172 = call %struct.expr* @expr_copy(%struct.expr* %171)
  %173 = load %struct.expr*, %struct.expr** %9, align 8
  %174 = call i8* @expr_alloc_and(%struct.expr* %172, %struct.expr* %173)
  %175 = bitcast i8* %174 to %struct.expr*
  store %struct.expr* %175, %struct.expr** %9, align 8
  %176 = load %struct.expr*, %struct.expr** %9, align 8
  %177 = call %struct.expr* @expr_eliminate_dups(%struct.expr* %176)
  store %struct.expr* %177, %struct.expr** %9, align 8
  %178 = load %struct.menu*, %struct.menu** %3, align 8
  %179 = getelementptr inbounds %struct.menu, %struct.menu* %178, i32 0, i32 4
  %180 = load %struct.symbol*, %struct.symbol** %179, align 8
  %181 = icmp ne %struct.symbol* %180, null
  br i1 %181, label %182, label %193

182:                                              ; preds = %165
  %183 = load %struct.menu*, %struct.menu** %3, align 8
  %184 = getelementptr inbounds %struct.menu, %struct.menu* %183, i32 0, i32 4
  %185 = load %struct.symbol*, %struct.symbol** %184, align 8
  %186 = getelementptr inbounds %struct.symbol, %struct.symbol* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @S_TRISTATE, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = load %struct.expr*, %struct.expr** %9, align 8
  %192 = call %struct.expr* @expr_trans_bool(%struct.expr* %191)
  store %struct.expr* %192, %struct.expr** %9, align 8
  br label %193

193:                                              ; preds = %190, %182, %165
  %194 = load %struct.expr*, %struct.expr** %9, align 8
  %195 = load %struct.property*, %struct.property** %6, align 8
  %196 = getelementptr inbounds %struct.property, %struct.property* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  store %struct.expr* %194, %struct.expr** %197, align 8
  %198 = load %struct.property*, %struct.property** %6, align 8
  %199 = getelementptr inbounds %struct.property, %struct.property* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @P_SELECT, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %221

203:                                              ; preds = %193
  %204 = load %struct.property*, %struct.property** %6, align 8
  %205 = call %struct.symbol* @prop_get_symbol(%struct.property* %204)
  store %struct.symbol* %205, %struct.symbol** %12, align 8
  %206 = load %struct.symbol*, %struct.symbol** %12, align 8
  %207 = getelementptr inbounds %struct.symbol, %struct.symbol* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.menu*, %struct.menu** %3, align 8
  %211 = getelementptr inbounds %struct.menu, %struct.menu* %210, i32 0, i32 4
  %212 = load %struct.symbol*, %struct.symbol** %211, align 8
  %213 = call %struct.expr* @expr_alloc_symbol(%struct.symbol* %212)
  %214 = load %struct.expr*, %struct.expr** %9, align 8
  %215 = call %struct.expr* @expr_copy(%struct.expr* %214)
  %216 = call i8* @expr_alloc_and(%struct.expr* %213, %struct.expr* %215)
  %217 = call i8* @expr_alloc_or(i8* %209, i8* %216)
  %218 = load %struct.symbol*, %struct.symbol** %12, align 8
  %219 = getelementptr inbounds %struct.symbol, %struct.symbol* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store i8* %217, i8** %220, align 8
  br label %221

221:                                              ; preds = %203, %193
  br label %222

222:                                              ; preds = %221, %164
  %223 = load %struct.property*, %struct.property** %6, align 8
  %224 = getelementptr inbounds %struct.property, %struct.property* %223, i32 0, i32 5
  %225 = load %struct.property*, %struct.property** %224, align 8
  store %struct.property* %225, %struct.property** %6, align 8
  br label %155

226:                                              ; preds = %155
  br label %227

227:                                              ; preds = %226
  %228 = load %struct.menu*, %struct.menu** %3, align 8
  %229 = getelementptr inbounds %struct.menu, %struct.menu* %228, i32 0, i32 2
  %230 = load %struct.menu*, %struct.menu** %229, align 8
  store %struct.menu* %230, %struct.menu** %3, align 8
  br label %122

231:                                              ; preds = %122
  %232 = load %struct.menu*, %struct.menu** %2, align 8
  %233 = getelementptr inbounds %struct.menu, %struct.menu* %232, i32 0, i32 1
  %234 = load %struct.menu*, %struct.menu** %233, align 8
  store %struct.menu* %234, %struct.menu** %3, align 8
  br label %235

235:                                              ; preds = %240, %231
  %236 = load %struct.menu*, %struct.menu** %3, align 8
  %237 = icmp ne %struct.menu* %236, null
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load %struct.menu*, %struct.menu** %3, align 8
  call void @menu_finalize(%struct.menu* %239)
  br label %240

240:                                              ; preds = %238
  %241 = load %struct.menu*, %struct.menu** %3, align 8
  %242 = getelementptr inbounds %struct.menu, %struct.menu* %241, i32 0, i32 2
  %243 = load %struct.menu*, %struct.menu** %242, align 8
  store %struct.menu* %243, %struct.menu** %3, align 8
  br label %235

244:                                              ; preds = %235
  br label %353

245:                                              ; preds = %1
  %246 = load %struct.symbol*, %struct.symbol** %5, align 8
  %247 = icmp ne %struct.symbol* %246, null
  br i1 %247, label %248, label %352

248:                                              ; preds = %245
  %249 = load %struct.menu*, %struct.menu** %2, align 8
  %250 = getelementptr inbounds %struct.menu, %struct.menu* %249, i32 0, i32 0
  %251 = load %struct.property*, %struct.property** %250, align 8
  %252 = icmp ne %struct.property* %251, null
  br i1 %252, label %253, label %260

253:                                              ; preds = %248
  %254 = load %struct.menu*, %struct.menu** %2, align 8
  %255 = getelementptr inbounds %struct.menu, %struct.menu* %254, i32 0, i32 0
  %256 = load %struct.property*, %struct.property** %255, align 8
  %257 = getelementptr inbounds %struct.property, %struct.property* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load %struct.expr*, %struct.expr** %258, align 8
  br label %261

260:                                              ; preds = %248
  br label %261

261:                                              ; preds = %260, %253
  %262 = phi %struct.expr* [ %259, %253 ], [ null, %260 ]
  store %struct.expr* %262, %struct.expr** %8, align 8
  %263 = load %struct.expr*, %struct.expr** %8, align 8
  %264 = load i32, i32* @E_UNEQUAL, align 4
  %265 = call %struct.expr* @expr_trans_compare(%struct.expr* %263, i32 %264, i32* @symbol_no)
  store %struct.expr* %265, %struct.expr** %8, align 8
  %266 = load %struct.expr*, %struct.expr** %8, align 8
  %267 = call %struct.expr* @expr_transform(%struct.expr* %266)
  %268 = call %struct.expr* @expr_eliminate_dups(%struct.expr* %267)
  store %struct.expr* %268, %struct.expr** %8, align 8
  store %struct.menu* null, %struct.menu** %4, align 8
  %269 = load %struct.menu*, %struct.menu** %2, align 8
  %270 = getelementptr inbounds %struct.menu, %struct.menu* %269, i32 0, i32 2
  %271 = load %struct.menu*, %struct.menu** %270, align 8
  store %struct.menu* %271, %struct.menu** %3, align 8
  br label %272

272:                                              ; preds = %331, %261
  %273 = load %struct.menu*, %struct.menu** %3, align 8
  %274 = icmp ne %struct.menu* %273, null
  br i1 %274, label %275, label %335

275:                                              ; preds = %272
  %276 = load %struct.menu*, %struct.menu** %3, align 8
  %277 = getelementptr inbounds %struct.menu, %struct.menu* %276, i32 0, i32 0
  %278 = load %struct.property*, %struct.property** %277, align 8
  %279 = icmp ne %struct.property* %278, null
  br i1 %279, label %280, label %287

280:                                              ; preds = %275
  %281 = load %struct.menu*, %struct.menu** %3, align 8
  %282 = getelementptr inbounds %struct.menu, %struct.menu* %281, i32 0, i32 0
  %283 = load %struct.property*, %struct.property** %282, align 8
  %284 = getelementptr inbounds %struct.property, %struct.property* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = load %struct.expr*, %struct.expr** %285, align 8
  br label %291

287:                                              ; preds = %275
  %288 = load %struct.menu*, %struct.menu** %3, align 8
  %289 = getelementptr inbounds %struct.menu, %struct.menu* %288, i32 0, i32 5
  %290 = load %struct.expr*, %struct.expr** %289, align 8
  br label %291

291:                                              ; preds = %287, %280
  %292 = phi %struct.expr* [ %286, %280 ], [ %290, %287 ]
  store %struct.expr* %292, %struct.expr** %9, align 8
  %293 = load %struct.expr*, %struct.expr** %9, align 8
  %294 = load %struct.symbol*, %struct.symbol** %5, align 8
  %295 = call i32 @expr_contains_symbol(%struct.expr* %293, %struct.symbol* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %291
  br label %335

298:                                              ; preds = %291
  %299 = load %struct.expr*, %struct.expr** %9, align 8
  %300 = load %struct.symbol*, %struct.symbol** %5, align 8
  %301 = call i64 @expr_depends_symbol(%struct.expr* %299, %struct.symbol* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  br label %325

304:                                              ; preds = %298
  %305 = load %struct.expr*, %struct.expr** %9, align 8
  %306 = load i32, i32* @E_UNEQUAL, align 4
  %307 = call %struct.expr* @expr_trans_compare(%struct.expr* %305, i32 %306, i32* @symbol_no)
  store %struct.expr* %307, %struct.expr** %9, align 8
  %308 = load %struct.expr*, %struct.expr** %9, align 8
  %309 = call %struct.expr* @expr_transform(%struct.expr* %308)
  %310 = call %struct.expr* @expr_eliminate_dups(%struct.expr* %309)
  store %struct.expr* %310, %struct.expr** %9, align 8
  %311 = load %struct.expr*, %struct.expr** %8, align 8
  %312 = call %struct.expr* @expr_copy(%struct.expr* %311)
  store %struct.expr* %312, %struct.expr** %10, align 8
  %313 = call i32 @expr_eliminate_eq(%struct.expr** %9, %struct.expr** %10)
  %314 = load %struct.expr*, %struct.expr** %9, align 8
  %315 = call i32 @expr_free(%struct.expr* %314)
  %316 = load %struct.expr*, %struct.expr** %10, align 8
  %317 = call i32 @expr_is_yes(%struct.expr* %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %304
  %320 = load %struct.expr*, %struct.expr** %10, align 8
  %321 = call i32 @expr_free(%struct.expr* %320)
  br label %335

322:                                              ; preds = %304
  %323 = load %struct.expr*, %struct.expr** %10, align 8
  %324 = call i32 @expr_free(%struct.expr* %323)
  br label %325

325:                                              ; preds = %322, %303
  %326 = load %struct.menu*, %struct.menu** %3, align 8
  call void @menu_finalize(%struct.menu* %326)
  %327 = load %struct.menu*, %struct.menu** %2, align 8
  %328 = load %struct.menu*, %struct.menu** %3, align 8
  %329 = getelementptr inbounds %struct.menu, %struct.menu* %328, i32 0, i32 3
  store %struct.menu* %327, %struct.menu** %329, align 8
  %330 = load %struct.menu*, %struct.menu** %3, align 8
  store %struct.menu* %330, %struct.menu** %4, align 8
  br label %331

331:                                              ; preds = %325
  %332 = load %struct.menu*, %struct.menu** %3, align 8
  %333 = getelementptr inbounds %struct.menu, %struct.menu* %332, i32 0, i32 2
  %334 = load %struct.menu*, %struct.menu** %333, align 8
  store %struct.menu* %334, %struct.menu** %3, align 8
  br label %272

335:                                              ; preds = %319, %297, %272
  %336 = load %struct.menu*, %struct.menu** %4, align 8
  %337 = icmp ne %struct.menu* %336, null
  br i1 %337, label %338, label %351

338:                                              ; preds = %335
  %339 = load %struct.menu*, %struct.menu** %2, align 8
  %340 = getelementptr inbounds %struct.menu, %struct.menu* %339, i32 0, i32 2
  %341 = load %struct.menu*, %struct.menu** %340, align 8
  %342 = load %struct.menu*, %struct.menu** %2, align 8
  %343 = getelementptr inbounds %struct.menu, %struct.menu* %342, i32 0, i32 1
  store %struct.menu* %341, %struct.menu** %343, align 8
  %344 = load %struct.menu*, %struct.menu** %4, align 8
  %345 = getelementptr inbounds %struct.menu, %struct.menu* %344, i32 0, i32 2
  %346 = load %struct.menu*, %struct.menu** %345, align 8
  %347 = load %struct.menu*, %struct.menu** %2, align 8
  %348 = getelementptr inbounds %struct.menu, %struct.menu* %347, i32 0, i32 2
  store %struct.menu* %346, %struct.menu** %348, align 8
  %349 = load %struct.menu*, %struct.menu** %4, align 8
  %350 = getelementptr inbounds %struct.menu, %struct.menu* %349, i32 0, i32 2
  store %struct.menu* null, %struct.menu** %350, align 8
  br label %351

351:                                              ; preds = %338, %335
  br label %352

352:                                              ; preds = %351, %245
  br label %353

353:                                              ; preds = %352, %244
  %354 = load %struct.menu*, %struct.menu** %2, align 8
  %355 = getelementptr inbounds %struct.menu, %struct.menu* %354, i32 0, i32 1
  %356 = load %struct.menu*, %struct.menu** %355, align 8
  store %struct.menu* %356, %struct.menu** %3, align 8
  br label %357

357:                                              ; preds = %579, %353
  %358 = load %struct.menu*, %struct.menu** %3, align 8
  %359 = icmp ne %struct.menu* %358, null
  br i1 %359, label %360, label %583

360:                                              ; preds = %357
  %361 = load %struct.symbol*, %struct.symbol** %5, align 8
  %362 = icmp ne %struct.symbol* %361, null
  br i1 %362, label %363, label %530

363:                                              ; preds = %360
  %364 = load %struct.symbol*, %struct.symbol** %5, align 8
  %365 = call i64 @sym_is_choice(%struct.symbol* %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %530

367:                                              ; preds = %363
  %368 = load %struct.menu*, %struct.menu** %3, align 8
  %369 = getelementptr inbounds %struct.menu, %struct.menu* %368, i32 0, i32 4
  %370 = load %struct.symbol*, %struct.symbol** %369, align 8
  %371 = icmp ne %struct.symbol* %370, null
  br i1 %371, label %372, label %530

372:                                              ; preds = %367
  %373 = load %struct.menu*, %struct.menu** %3, align 8
  %374 = getelementptr inbounds %struct.menu, %struct.menu* %373, i32 0, i32 4
  %375 = load %struct.symbol*, %struct.symbol** %374, align 8
  %376 = call i32 @sym_is_choice_value(%struct.symbol* %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %530, label %378

378:                                              ; preds = %372
  %379 = load %struct.menu*, %struct.menu** %3, align 8
  store %struct.menu* %379, %struct.menu** @current_entry, align 8
  %380 = load i32, i32* @SYMBOL_CHOICEVAL, align 4
  %381 = load %struct.menu*, %struct.menu** %3, align 8
  %382 = getelementptr inbounds %struct.menu, %struct.menu* %381, i32 0, i32 4
  %383 = load %struct.symbol*, %struct.symbol** %382, align 8
  %384 = getelementptr inbounds %struct.symbol, %struct.symbol* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = or i32 %385, %380
  store i32 %386, i32* %384, align 8
  %387 = load %struct.menu*, %struct.menu** %3, align 8
  %388 = getelementptr inbounds %struct.menu, %struct.menu* %387, i32 0, i32 0
  %389 = load %struct.property*, %struct.property** %388, align 8
  %390 = icmp ne %struct.property* %389, null
  br i1 %390, label %394, label %391

391:                                              ; preds = %378
  %392 = load %struct.menu*, %struct.menu** %3, align 8
  %393 = call i32 @menu_warn(%struct.menu* %392, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %394

394:                                              ; preds = %391, %378
  %395 = load %struct.menu*, %struct.menu** %3, align 8
  %396 = getelementptr inbounds %struct.menu, %struct.menu* %395, i32 0, i32 4
  %397 = load %struct.symbol*, %struct.symbol** %396, align 8
  %398 = getelementptr inbounds %struct.symbol, %struct.symbol* %397, i32 0, i32 3
  %399 = load %struct.property*, %struct.property** %398, align 8
  store %struct.property* %399, %struct.property** %6, align 8
  br label %400

400:                                              ; preds = %439, %394
  %401 = load %struct.property*, %struct.property** %6, align 8
  %402 = icmp ne %struct.property* %401, null
  br i1 %402, label %403, label %443

403:                                              ; preds = %400
  %404 = load %struct.property*, %struct.property** %6, align 8
  %405 = getelementptr inbounds %struct.property, %struct.property* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @P_DEFAULT, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %412

409:                                              ; preds = %403
  %410 = load %struct.property*, %struct.property** %6, align 8
  %411 = call i32 @prop_warn(%struct.property* %410, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %412

412:                                              ; preds = %409, %403
  %413 = load %struct.property*, %struct.property** %6, align 8
  %414 = getelementptr inbounds %struct.property, %struct.property* %413, i32 0, i32 4
  %415 = load %struct.menu*, %struct.menu** %414, align 8
  %416 = load %struct.menu*, %struct.menu** %3, align 8
  %417 = icmp eq %struct.menu* %415, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %412
  br label %439

419:                                              ; preds = %412
  %420 = load %struct.property*, %struct.property** %6, align 8
  %421 = getelementptr inbounds %struct.property, %struct.property* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @P_PROMPT, align 8
  %424 = icmp eq i64 %422, %423
  br i1 %424, label %425, label %438

425:                                              ; preds = %419
  %426 = load %struct.property*, %struct.property** %6, align 8
  %427 = getelementptr inbounds %struct.property, %struct.property* %426, i32 0, i32 4
  %428 = load %struct.menu*, %struct.menu** %427, align 8
  %429 = getelementptr inbounds %struct.menu, %struct.menu* %428, i32 0, i32 3
  %430 = load %struct.menu*, %struct.menu** %429, align 8
  %431 = getelementptr inbounds %struct.menu, %struct.menu* %430, i32 0, i32 4
  %432 = load %struct.symbol*, %struct.symbol** %431, align 8
  %433 = load %struct.symbol*, %struct.symbol** %5, align 8
  %434 = icmp ne %struct.symbol* %432, %433
  br i1 %434, label %435, label %438

435:                                              ; preds = %425
  %436 = load %struct.property*, %struct.property** %6, align 8
  %437 = call i32 @prop_warn(%struct.property* %436, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %438

438:                                              ; preds = %435, %425, %419
  br label %439

439:                                              ; preds = %438, %418
  %440 = load %struct.property*, %struct.property** %6, align 8
  %441 = getelementptr inbounds %struct.property, %struct.property* %440, i32 0, i32 5
  %442 = load %struct.property*, %struct.property** %441, align 8
  store %struct.property* %442, %struct.property** %6, align 8
  br label %400

443:                                              ; preds = %400
  %444 = load %struct.symbol*, %struct.symbol** %5, align 8
  %445 = getelementptr inbounds %struct.symbol, %struct.symbol* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @S_TRISTATE, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %501

449:                                              ; preds = %443
  %450 = load %struct.menu*, %struct.menu** %3, align 8
  %451 = getelementptr inbounds %struct.menu, %struct.menu* %450, i32 0, i32 4
  %452 = load %struct.symbol*, %struct.symbol** %451, align 8
  %453 = getelementptr inbounds %struct.symbol, %struct.symbol* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @S_TRISTATE, align 8
  %456 = icmp ne i64 %454, %455
  br i1 %456, label %457, label %501

457:                                              ; preds = %449
  %458 = load i32, i32* @E_EQUAL, align 4
  %459 = load %struct.symbol*, %struct.symbol** %5, align 8
  %460 = call %struct.expr* @expr_alloc_comp(i32 %458, %struct.symbol* %459, i32* @symbol_yes)
  store %struct.expr* %460, %struct.expr** %8, align 8
  %461 = load %struct.expr*, %struct.expr** %8, align 8
  %462 = load %struct.menu*, %struct.menu** %3, align 8
  %463 = getelementptr inbounds %struct.menu, %struct.menu* %462, i32 0, i32 5
  %464 = load %struct.expr*, %struct.expr** %463, align 8
  %465 = call i8* @expr_alloc_and(%struct.expr* %461, %struct.expr* %464)
  %466 = bitcast i8* %465 to %struct.expr*
  %467 = load %struct.menu*, %struct.menu** %3, align 8
  %468 = getelementptr inbounds %struct.menu, %struct.menu* %467, i32 0, i32 5
  store %struct.expr* %466, %struct.expr** %468, align 8
  %469 = load %struct.menu*, %struct.menu** %3, align 8
  %470 = getelementptr inbounds %struct.menu, %struct.menu* %469, i32 0, i32 4
  %471 = load %struct.symbol*, %struct.symbol** %470, align 8
  %472 = getelementptr inbounds %struct.symbol, %struct.symbol* %471, i32 0, i32 3
  %473 = load %struct.property*, %struct.property** %472, align 8
  store %struct.property* %473, %struct.property** %6, align 8
  br label %474

474:                                              ; preds = %496, %457
  %475 = load %struct.property*, %struct.property** %6, align 8
  %476 = icmp ne %struct.property* %475, null
  br i1 %476, label %477, label %500

477:                                              ; preds = %474
  %478 = load %struct.property*, %struct.property** %6, align 8
  %479 = getelementptr inbounds %struct.property, %struct.property* %478, i32 0, i32 4
  %480 = load %struct.menu*, %struct.menu** %479, align 8
  %481 = load %struct.menu*, %struct.menu** %3, align 8
  %482 = icmp ne %struct.menu* %480, %481
  br i1 %482, label %483, label %484

483:                                              ; preds = %477
  br label %496

484:                                              ; preds = %477
  %485 = load %struct.expr*, %struct.expr** %8, align 8
  %486 = call %struct.expr* @expr_copy(%struct.expr* %485)
  %487 = load %struct.property*, %struct.property** %6, align 8
  %488 = getelementptr inbounds %struct.property, %struct.property* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 0
  %490 = load %struct.expr*, %struct.expr** %489, align 8
  %491 = call i8* @expr_alloc_and(%struct.expr* %486, %struct.expr* %490)
  %492 = bitcast i8* %491 to %struct.expr*
  %493 = load %struct.property*, %struct.property** %6, align 8
  %494 = getelementptr inbounds %struct.property, %struct.property* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 0
  store %struct.expr* %492, %struct.expr** %495, align 8
  br label %496

496:                                              ; preds = %484, %483
  %497 = load %struct.property*, %struct.property** %6, align 8
  %498 = getelementptr inbounds %struct.property, %struct.property* %497, i32 0, i32 5
  %499 = load %struct.property*, %struct.property** %498, align 8
  store %struct.property* %499, %struct.property** %6, align 8
  br label %474

500:                                              ; preds = %474
  br label %501

501:                                              ; preds = %500, %449, %443
  %502 = load i32, i32* @P_CHOICE, align 4
  %503 = load %struct.symbol*, %struct.symbol** %5, align 8
  %504 = call i32 @menu_add_symbol(i32 %502, %struct.symbol* %503, i32* null)
  %505 = load %struct.symbol*, %struct.symbol** %5, align 8
  %506 = call %struct.property* @sym_get_choice_prop(%struct.symbol* %505)
  store %struct.property* %506, %struct.property** %6, align 8
  %507 = load %struct.property*, %struct.property** %6, align 8
  %508 = getelementptr inbounds %struct.property, %struct.property* %507, i32 0, i32 3
  store %struct.expr** %508, %struct.expr*** %11, align 8
  br label %509

509:                                              ; preds = %514, %501
  %510 = load %struct.expr**, %struct.expr*** %11, align 8
  %511 = load %struct.expr*, %struct.expr** %510, align 8
  %512 = icmp ne %struct.expr* %511, null
  br i1 %512, label %513, label %519

513:                                              ; preds = %509
  br label %514

514:                                              ; preds = %513
  %515 = load %struct.expr**, %struct.expr*** %11, align 8
  %516 = load %struct.expr*, %struct.expr** %515, align 8
  %517 = getelementptr inbounds %struct.expr, %struct.expr* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %517, i32 0, i32 0
  store %struct.expr** %518, %struct.expr*** %11, align 8
  br label %509

519:                                              ; preds = %509
  %520 = load i32, i32* @E_LIST, align 4
  %521 = call %struct.expr* @expr_alloc_one(i32 %520, i32* null)
  %522 = load %struct.expr**, %struct.expr*** %11, align 8
  store %struct.expr* %521, %struct.expr** %522, align 8
  %523 = load %struct.menu*, %struct.menu** %3, align 8
  %524 = getelementptr inbounds %struct.menu, %struct.menu* %523, i32 0, i32 4
  %525 = load %struct.symbol*, %struct.symbol** %524, align 8
  %526 = load %struct.expr**, %struct.expr*** %11, align 8
  %527 = load %struct.expr*, %struct.expr** %526, align 8
  %528 = getelementptr inbounds %struct.expr, %struct.expr* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i32 0, i32 0
  store %struct.symbol* %525, %struct.symbol** %529, align 8
  br label %530

530:                                              ; preds = %519, %372, %367, %363, %360
  %531 = load %struct.menu*, %struct.menu** %3, align 8
  %532 = getelementptr inbounds %struct.menu, %struct.menu* %531, i32 0, i32 1
  %533 = load %struct.menu*, %struct.menu** %532, align 8
  %534 = icmp ne %struct.menu* %533, null
  br i1 %534, label %535, label %578

535:                                              ; preds = %530
  %536 = load %struct.menu*, %struct.menu** %3, align 8
  %537 = getelementptr inbounds %struct.menu, %struct.menu* %536, i32 0, i32 0
  %538 = load %struct.property*, %struct.property** %537, align 8
  %539 = icmp ne %struct.property* %538, null
  br i1 %539, label %540, label %547

540:                                              ; preds = %535
  %541 = load %struct.menu*, %struct.menu** %3, align 8
  %542 = getelementptr inbounds %struct.menu, %struct.menu* %541, i32 0, i32 0
  %543 = load %struct.property*, %struct.property** %542, align 8
  %544 = getelementptr inbounds %struct.property, %struct.property* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 8
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %578, label %547

547:                                              ; preds = %540, %535
  %548 = load %struct.menu*, %struct.menu** %3, align 8
  %549 = getelementptr inbounds %struct.menu, %struct.menu* %548, i32 0, i32 1
  %550 = load %struct.menu*, %struct.menu** %549, align 8
  store %struct.menu* %550, %struct.menu** %4, align 8
  br label %551

551:                                              ; preds = %561, %547
  %552 = load %struct.menu*, %struct.menu** %2, align 8
  %553 = load %struct.menu*, %struct.menu** %4, align 8
  %554 = getelementptr inbounds %struct.menu, %struct.menu* %553, i32 0, i32 3
  store %struct.menu* %552, %struct.menu** %554, align 8
  %555 = load %struct.menu*, %struct.menu** %4, align 8
  %556 = getelementptr inbounds %struct.menu, %struct.menu* %555, i32 0, i32 2
  %557 = load %struct.menu*, %struct.menu** %556, align 8
  %558 = icmp ne %struct.menu* %557, null
  br i1 %558, label %560, label %559

559:                                              ; preds = %551
  br label %565

560:                                              ; preds = %551
  br label %561

561:                                              ; preds = %560
  %562 = load %struct.menu*, %struct.menu** %4, align 8
  %563 = getelementptr inbounds %struct.menu, %struct.menu* %562, i32 0, i32 2
  %564 = load %struct.menu*, %struct.menu** %563, align 8
  store %struct.menu* %564, %struct.menu** %4, align 8
  br label %551

565:                                              ; preds = %559
  %566 = load %struct.menu*, %struct.menu** %3, align 8
  %567 = getelementptr inbounds %struct.menu, %struct.menu* %566, i32 0, i32 2
  %568 = load %struct.menu*, %struct.menu** %567, align 8
  %569 = load %struct.menu*, %struct.menu** %4, align 8
  %570 = getelementptr inbounds %struct.menu, %struct.menu* %569, i32 0, i32 2
  store %struct.menu* %568, %struct.menu** %570, align 8
  %571 = load %struct.menu*, %struct.menu** %3, align 8
  %572 = getelementptr inbounds %struct.menu, %struct.menu* %571, i32 0, i32 1
  %573 = load %struct.menu*, %struct.menu** %572, align 8
  %574 = load %struct.menu*, %struct.menu** %3, align 8
  %575 = getelementptr inbounds %struct.menu, %struct.menu* %574, i32 0, i32 2
  store %struct.menu* %573, %struct.menu** %575, align 8
  %576 = load %struct.menu*, %struct.menu** %3, align 8
  %577 = getelementptr inbounds %struct.menu, %struct.menu* %576, i32 0, i32 1
  store %struct.menu* null, %struct.menu** %577, align 8
  br label %578

578:                                              ; preds = %565, %540, %530
  br label %579

579:                                              ; preds = %578
  %580 = load %struct.menu*, %struct.menu** %3, align 8
  %581 = getelementptr inbounds %struct.menu, %struct.menu* %580, i32 0, i32 2
  %582 = load %struct.menu*, %struct.menu** %581, align 8
  store %struct.menu* %582, %struct.menu** %3, align 8
  br label %357

583:                                              ; preds = %357
  %584 = load %struct.symbol*, %struct.symbol** %5, align 8
  %585 = icmp ne %struct.symbol* %584, null
  br i1 %585, label %586, label %622

586:                                              ; preds = %583
  %587 = load %struct.symbol*, %struct.symbol** %5, align 8
  %588 = getelementptr inbounds %struct.symbol, %struct.symbol* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 8
  %590 = load i32, i32* @SYMBOL_WARNED, align 4
  %591 = and i32 %589, %590
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %622, label %593

593:                                              ; preds = %586
  %594 = load %struct.symbol*, %struct.symbol** %5, align 8
  %595 = getelementptr inbounds %struct.symbol, %struct.symbol* %594, i32 0, i32 0
  %596 = load i64, i64* %595, align 8
  %597 = load i64, i64* @S_UNKNOWN, align 8
  %598 = icmp eq i64 %596, %597
  br i1 %598, label %599, label %602

599:                                              ; preds = %593
  %600 = load %struct.menu*, %struct.menu** %2, align 8
  %601 = call i32 @menu_warn(%struct.menu* %600, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %602

602:                                              ; preds = %599, %593
  %603 = load %struct.symbol*, %struct.symbol** %5, align 8
  %604 = call i64 @sym_is_choice(%struct.symbol* %603)
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %606, label %614

606:                                              ; preds = %602
  %607 = load %struct.menu*, %struct.menu** %2, align 8
  %608 = getelementptr inbounds %struct.menu, %struct.menu* %607, i32 0, i32 0
  %609 = load %struct.property*, %struct.property** %608, align 8
  %610 = icmp ne %struct.property* %609, null
  br i1 %610, label %614, label %611

611:                                              ; preds = %606
  %612 = load %struct.menu*, %struct.menu** %2, align 8
  %613 = call i32 @menu_warn(%struct.menu* %612, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %614

614:                                              ; preds = %611, %606, %602
  %615 = load %struct.symbol*, %struct.symbol** %5, align 8
  %616 = call i32 @sym_check_prop(%struct.symbol* %615)
  %617 = load i32, i32* @SYMBOL_WARNED, align 4
  %618 = load %struct.symbol*, %struct.symbol** %5, align 8
  %619 = getelementptr inbounds %struct.symbol, %struct.symbol* %618, i32 0, i32 1
  %620 = load i32, i32* %619, align 8
  %621 = or i32 %620, %617
  store i32 %621, i32* %619, align 8
  br label %622

622:                                              ; preds = %614, %586, %583
  %623 = load %struct.symbol*, %struct.symbol** %5, align 8
  %624 = icmp ne %struct.symbol* %623, null
  br i1 %624, label %625, label %651

625:                                              ; preds = %622
  %626 = load %struct.symbol*, %struct.symbol** %5, align 8
  %627 = call i32 @sym_is_optional(%struct.symbol* %626)
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %651, label %629

629:                                              ; preds = %625
  %630 = load %struct.menu*, %struct.menu** %2, align 8
  %631 = getelementptr inbounds %struct.menu, %struct.menu* %630, i32 0, i32 0
  %632 = load %struct.property*, %struct.property** %631, align 8
  %633 = icmp ne %struct.property* %632, null
  br i1 %633, label %634, label %651

634:                                              ; preds = %629
  %635 = load %struct.symbol*, %struct.symbol** %5, align 8
  %636 = getelementptr inbounds %struct.symbol, %struct.symbol* %635, i32 0, i32 2
  %637 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %636, i32 0, i32 0
  %638 = load i8*, i8** %637, align 8
  %639 = load %struct.menu*, %struct.menu** %2, align 8
  %640 = getelementptr inbounds %struct.menu, %struct.menu* %639, i32 0, i32 0
  %641 = load %struct.property*, %struct.property** %640, align 8
  %642 = getelementptr inbounds %struct.property, %struct.property* %641, i32 0, i32 1
  %643 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %642, i32 0, i32 0
  %644 = load %struct.expr*, %struct.expr** %643, align 8
  %645 = call %struct.expr* @expr_alloc_symbol(%struct.symbol* @symbol_mod)
  %646 = call i8* @expr_alloc_and(%struct.expr* %644, %struct.expr* %645)
  %647 = call i8* @expr_alloc_or(i8* %638, i8* %646)
  %648 = load %struct.symbol*, %struct.symbol** %5, align 8
  %649 = getelementptr inbounds %struct.symbol, %struct.symbol* %648, i32 0, i32 2
  %650 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %649, i32 0, i32 0
  store i8* %647, i8** %650, align 8
  br label %651

651:                                              ; preds = %634, %629, %625, %622
  ret void
}

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local i32 @menu_set_type(i64) #1

declare dso_local %struct.expr* @expr_alloc_symbol(%struct.symbol*) #1

declare dso_local %struct.expr* @expr_transform(%struct.expr*) #1

declare dso_local i8* @expr_alloc_and(%struct.expr*, %struct.expr*) #1

declare dso_local %struct.expr* @expr_copy(%struct.expr*) #1

declare dso_local %struct.expr* @expr_eliminate_dups(%struct.expr*) #1

declare dso_local %struct.expr* @expr_trans_bool(%struct.expr*) #1

declare dso_local %struct.symbol* @prop_get_symbol(%struct.property*) #1

declare dso_local i8* @expr_alloc_or(i8*, i8*) #1

declare dso_local %struct.expr* @expr_trans_compare(%struct.expr*, i32, i32*) #1

declare dso_local i32 @expr_contains_symbol(%struct.expr*, %struct.symbol*) #1

declare dso_local i64 @expr_depends_symbol(%struct.expr*, %struct.symbol*) #1

declare dso_local i32 @expr_eliminate_eq(%struct.expr**, %struct.expr**) #1

declare dso_local i32 @expr_free(%struct.expr*) #1

declare dso_local i32 @expr_is_yes(%struct.expr*) #1

declare dso_local i32 @sym_is_choice_value(%struct.symbol*) #1

declare dso_local i32 @menu_warn(%struct.menu*, i8*) #1

declare dso_local i32 @prop_warn(%struct.property*, i8*) #1

declare dso_local %struct.expr* @expr_alloc_comp(i32, %struct.symbol*, i32*) #1

declare dso_local i32 @menu_add_symbol(i32, %struct.symbol*, i32*) #1

declare dso_local %struct.property* @sym_get_choice_prop(%struct.symbol*) #1

declare dso_local %struct.expr* @expr_alloc_one(i32, i32*) #1

declare dso_local i32 @sym_check_prop(%struct.symbol*) #1

declare dso_local i32 @sym_is_optional(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
