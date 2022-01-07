; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_symbol.c_sym_check_print_recursive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_symbol.c_sym_check_print_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dep_stack = type { %struct.property*, i64, %struct.symbol*, %struct.dep_stack*, %struct.dep_stack* }
%struct.property = type { i32, %struct.TYPE_4__*, i32, %struct.menu*, %struct.property* }
%struct.TYPE_4__ = type { i8* }
%struct.menu = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.symbol = type { i8*, %struct.property* }

@check_top = common dso_local global %struct.dep_stack* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unexpected recursive dependency error\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s:%d:error: recursive dependency detected!\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s:%d:\09symbol %s %s value contains %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s:%d:\09symbol %s depends on %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s:%d:\09choice %s contains symbol %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s:%d:\09symbol %s is part of choice %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s:%d:\09symbol %s is selected by %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*)* @sym_check_print_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_check_print_recursive(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.dep_stack*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.menu*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca %struct.dep_stack, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  store %struct.menu* null, %struct.menu** %6, align 8
  %9 = load %struct.symbol*, %struct.symbol** %2, align 8
  %10 = call i64 @sym_is_choice_value(%struct.symbol* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.symbol*, %struct.symbol** %2, align 8
  %14 = call i32 @dep_stack_insert(%struct.dep_stack* %8, %struct.symbol* %13)
  %15 = load %struct.symbol*, %struct.symbol** %2, align 8
  %16 = call i32 @sym_get_choice_prop(%struct.symbol* %15)
  %17 = call %struct.symbol* @prop_get_symbol(i32 %16)
  store %struct.symbol* %17, %struct.symbol** %2, align 8
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.dep_stack*, %struct.dep_stack** @check_top, align 8
  store %struct.dep_stack* %19, %struct.dep_stack** %3, align 8
  br label %20

20:                                               ; preds = %31, %18
  %21 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %22 = icmp ne %struct.dep_stack* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %25 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %24, i32 0, i32 2
  %26 = load %struct.symbol*, %struct.symbol** %25, align 8
  %27 = load %struct.symbol*, %struct.symbol** %2, align 8
  %28 = icmp eq %struct.symbol* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %33 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %32, i32 0, i32 4
  %34 = load %struct.dep_stack*, %struct.dep_stack** %33, align 8
  store %struct.dep_stack* %34, %struct.dep_stack** %3, align 8
  br label %20

35:                                               ; preds = %29, %20
  %36 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %37 = icmp ne %struct.dep_stack* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %321

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %312, %41
  %43 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %44 = icmp ne %struct.dep_stack* %43, null
  br i1 %44, label %45, label %316

45:                                               ; preds = %42
  %46 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %47 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %46, i32 0, i32 2
  %48 = load %struct.symbol*, %struct.symbol** %47, align 8
  store %struct.symbol* %48, %struct.symbol** %4, align 8
  %49 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %50 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %49, i32 0, i32 3
  %51 = load %struct.dep_stack*, %struct.dep_stack** %50, align 8
  %52 = icmp ne %struct.dep_stack* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %55 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %54, i32 0, i32 3
  %56 = load %struct.dep_stack*, %struct.dep_stack** %55, align 8
  %57 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %56, i32 0, i32 2
  %58 = load %struct.symbol*, %struct.symbol** %57, align 8
  br label %61

59:                                               ; preds = %45
  %60 = load %struct.symbol*, %struct.symbol** %2, align 8
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi %struct.symbol* [ %58, %53 ], [ %60, %59 ]
  store %struct.symbol* %62, %struct.symbol** %5, align 8
  %63 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %64 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %63, i32 0, i32 0
  %65 = load %struct.property*, %struct.property** %64, align 8
  store %struct.property* %65, %struct.property** %7, align 8
  %66 = load %struct.property*, %struct.property** %7, align 8
  %67 = icmp eq %struct.property* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %70 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %69, i32 0, i32 2
  %71 = load %struct.symbol*, %struct.symbol** %70, align 8
  %72 = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 1
  %73 = load %struct.property*, %struct.property** %72, align 8
  store %struct.property* %73, %struct.property** %7, align 8
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.symbol*, %struct.symbol** %4, align 8
  %76 = call i64 @sym_is_choice(%struct.symbol* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.symbol*, %struct.symbol** %4, align 8
  %80 = call i64 @sym_is_choice_value(%struct.symbol* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %78, %74
  %83 = load %struct.symbol*, %struct.symbol** %4, align 8
  %84 = getelementptr inbounds %struct.symbol, %struct.symbol* %83, i32 0, i32 1
  %85 = load %struct.property*, %struct.property** %84, align 8
  store %struct.property* %85, %struct.property** %7, align 8
  br label %86

86:                                               ; preds = %99, %82
  %87 = load %struct.property*, %struct.property** %7, align 8
  %88 = icmp ne %struct.property* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load %struct.property*, %struct.property** %7, align 8
  %91 = getelementptr inbounds %struct.property, %struct.property* %90, i32 0, i32 3
  %92 = load %struct.menu*, %struct.menu** %91, align 8
  store %struct.menu* %92, %struct.menu** %6, align 8
  %93 = load %struct.property*, %struct.property** %7, align 8
  %94 = getelementptr inbounds %struct.property, %struct.property* %93, i32 0, i32 3
  %95 = load %struct.menu*, %struct.menu** %94, align 8
  %96 = icmp ne %struct.menu* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %103

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.property*, %struct.property** %7, align 8
  %101 = getelementptr inbounds %struct.property, %struct.property* %100, i32 0, i32 4
  %102 = load %struct.property*, %struct.property** %101, align 8
  store %struct.property* %102, %struct.property** %7, align 8
  br label %86

103:                                              ; preds = %97, %86
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %106 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %105, i32 0, i32 2
  %107 = load %struct.symbol*, %struct.symbol** %106, align 8
  %108 = load %struct.symbol*, %struct.symbol** %2, align 8
  %109 = icmp eq %struct.symbol* %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i32, i32* @stderr, align 4
  %112 = load %struct.property*, %struct.property** %7, align 8
  %113 = getelementptr inbounds %struct.property, %struct.property* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.property*, %struct.property** %7, align 8
  %118 = getelementptr inbounds %struct.property, %struct.property* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %116, i32 %119)
  br label %121

121:                                              ; preds = %110, %104
  %122 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %123 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %163

126:                                              ; preds = %121
  %127 = load i32, i32* @stderr, align 4
  %128 = load %struct.property*, %struct.property** %7, align 8
  %129 = getelementptr inbounds %struct.property, %struct.property* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.property*, %struct.property** %7, align 8
  %134 = getelementptr inbounds %struct.property, %struct.property* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.symbol*, %struct.symbol** %4, align 8
  %137 = getelementptr inbounds %struct.symbol, %struct.symbol* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %126
  %141 = load %struct.symbol*, %struct.symbol** %4, align 8
  %142 = getelementptr inbounds %struct.symbol, %struct.symbol* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  br label %145

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144, %140
  %146 = phi i8* [ %143, %140 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %144 ]
  %147 = load %struct.property*, %struct.property** %7, align 8
  %148 = getelementptr inbounds %struct.property, %struct.property* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @prop_get_type_name(i32 %149)
  %151 = load %struct.symbol*, %struct.symbol** %5, align 8
  %152 = getelementptr inbounds %struct.symbol, %struct.symbol* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %145
  %156 = load %struct.symbol*, %struct.symbol** %5, align 8
  %157 = getelementptr inbounds %struct.symbol, %struct.symbol* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  br label %160

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %155
  %161 = phi i8* [ %158, %155 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %159 ]
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %132, i32 %135, i8* %146, i8* %150, i8* %161)
  br label %311

163:                                              ; preds = %121
  %164 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %165 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %164, i32 0, i32 0
  %166 = load %struct.property*, %struct.property** %165, align 8
  %167 = icmp ne %struct.property* %166, null
  br i1 %167, label %168, label %201

168:                                              ; preds = %163
  %169 = load i32, i32* @stderr, align 4
  %170 = load %struct.property*, %struct.property** %7, align 8
  %171 = getelementptr inbounds %struct.property, %struct.property* %170, i32 0, i32 1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.property*, %struct.property** %7, align 8
  %176 = getelementptr inbounds %struct.property, %struct.property* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.symbol*, %struct.symbol** %4, align 8
  %179 = getelementptr inbounds %struct.symbol, %struct.symbol* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %168
  %183 = load %struct.symbol*, %struct.symbol** %4, align 8
  %184 = getelementptr inbounds %struct.symbol, %struct.symbol* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  br label %187

186:                                              ; preds = %168
  br label %187

187:                                              ; preds = %186, %182
  %188 = phi i8* [ %185, %182 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %186 ]
  %189 = load %struct.symbol*, %struct.symbol** %5, align 8
  %190 = getelementptr inbounds %struct.symbol, %struct.symbol* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load %struct.symbol*, %struct.symbol** %5, align 8
  %195 = getelementptr inbounds %struct.symbol, %struct.symbol* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  br label %198

197:                                              ; preds = %187
  br label %198

198:                                              ; preds = %197, %193
  %199 = phi i8* [ %196, %193 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %197 ]
  %200 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %174, i32 %177, i8* %188, i8* %199)
  br label %310

201:                                              ; preds = %163
  %202 = load %struct.symbol*, %struct.symbol** %4, align 8
  %203 = call i64 @sym_is_choice(%struct.symbol* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %238

205:                                              ; preds = %201
  %206 = load i32, i32* @stderr, align 4
  %207 = load %struct.menu*, %struct.menu** %6, align 8
  %208 = getelementptr inbounds %struct.menu, %struct.menu* %207, i32 0, i32 1
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.menu*, %struct.menu** %6, align 8
  %213 = getelementptr inbounds %struct.menu, %struct.menu* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.symbol*, %struct.symbol** %4, align 8
  %216 = getelementptr inbounds %struct.symbol, %struct.symbol* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %205
  %220 = load %struct.symbol*, %struct.symbol** %4, align 8
  %221 = getelementptr inbounds %struct.symbol, %struct.symbol* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  br label %224

223:                                              ; preds = %205
  br label %224

224:                                              ; preds = %223, %219
  %225 = phi i8* [ %222, %219 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %223 ]
  %226 = load %struct.symbol*, %struct.symbol** %5, align 8
  %227 = getelementptr inbounds %struct.symbol, %struct.symbol* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %234

230:                                              ; preds = %224
  %231 = load %struct.symbol*, %struct.symbol** %5, align 8
  %232 = getelementptr inbounds %struct.symbol, %struct.symbol* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  br label %235

234:                                              ; preds = %224
  br label %235

235:                                              ; preds = %234, %230
  %236 = phi i8* [ %233, %230 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %234 ]
  %237 = call i32 (i32, i8*, ...) @fprintf(i32 %206, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %211, i32 %214, i8* %225, i8* %236)
  br label %309

238:                                              ; preds = %201
  %239 = load %struct.symbol*, %struct.symbol** %4, align 8
  %240 = call i64 @sym_is_choice_value(%struct.symbol* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %275

242:                                              ; preds = %238
  %243 = load i32, i32* @stderr, align 4
  %244 = load %struct.menu*, %struct.menu** %6, align 8
  %245 = getelementptr inbounds %struct.menu, %struct.menu* %244, i32 0, i32 1
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.menu*, %struct.menu** %6, align 8
  %250 = getelementptr inbounds %struct.menu, %struct.menu* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.symbol*, %struct.symbol** %4, align 8
  %253 = getelementptr inbounds %struct.symbol, %struct.symbol* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %242
  %257 = load %struct.symbol*, %struct.symbol** %4, align 8
  %258 = getelementptr inbounds %struct.symbol, %struct.symbol* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  br label %261

260:                                              ; preds = %242
  br label %261

261:                                              ; preds = %260, %256
  %262 = phi i8* [ %259, %256 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %260 ]
  %263 = load %struct.symbol*, %struct.symbol** %5, align 8
  %264 = getelementptr inbounds %struct.symbol, %struct.symbol* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %271

267:                                              ; preds = %261
  %268 = load %struct.symbol*, %struct.symbol** %5, align 8
  %269 = getelementptr inbounds %struct.symbol, %struct.symbol* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  br label %272

271:                                              ; preds = %261
  br label %272

272:                                              ; preds = %271, %267
  %273 = phi i8* [ %270, %267 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %271 ]
  %274 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %248, i32 %251, i8* %262, i8* %273)
  br label %308

275:                                              ; preds = %238
  %276 = load i32, i32* @stderr, align 4
  %277 = load %struct.property*, %struct.property** %7, align 8
  %278 = getelementptr inbounds %struct.property, %struct.property* %277, i32 0, i32 1
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.property*, %struct.property** %7, align 8
  %283 = getelementptr inbounds %struct.property, %struct.property* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.symbol*, %struct.symbol** %4, align 8
  %286 = getelementptr inbounds %struct.symbol, %struct.symbol* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %293

289:                                              ; preds = %275
  %290 = load %struct.symbol*, %struct.symbol** %4, align 8
  %291 = getelementptr inbounds %struct.symbol, %struct.symbol* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  br label %294

293:                                              ; preds = %275
  br label %294

294:                                              ; preds = %293, %289
  %295 = phi i8* [ %292, %289 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %293 ]
  %296 = load %struct.symbol*, %struct.symbol** %5, align 8
  %297 = getelementptr inbounds %struct.symbol, %struct.symbol* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %304

300:                                              ; preds = %294
  %301 = load %struct.symbol*, %struct.symbol** %5, align 8
  %302 = getelementptr inbounds %struct.symbol, %struct.symbol* %301, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  br label %305

304:                                              ; preds = %294
  br label %305

305:                                              ; preds = %304, %300
  %306 = phi i8* [ %303, %300 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %304 ]
  %307 = call i32 (i32, i8*, ...) @fprintf(i32 %276, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %281, i32 %284, i8* %295, i8* %306)
  br label %308

308:                                              ; preds = %305, %272
  br label %309

309:                                              ; preds = %308, %235
  br label %310

310:                                              ; preds = %309, %198
  br label %311

311:                                              ; preds = %310, %160
  br label %312

312:                                              ; preds = %311
  %313 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %314 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %313, i32 0, i32 3
  %315 = load %struct.dep_stack*, %struct.dep_stack** %314, align 8
  store %struct.dep_stack* %315, %struct.dep_stack** %3, align 8
  br label %42

316:                                              ; preds = %42
  %317 = load %struct.dep_stack*, %struct.dep_stack** @check_top, align 8
  %318 = icmp eq %struct.dep_stack* %317, %8
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = call i32 (...) @dep_stack_remove()
  br label %321

321:                                              ; preds = %38, %319, %316
  ret void
}

declare dso_local i64 @sym_is_choice_value(%struct.symbol*) #1

declare dso_local i32 @dep_stack_insert(%struct.dep_stack*, %struct.symbol*) #1

declare dso_local %struct.symbol* @prop_get_symbol(i32) #1

declare dso_local i32 @sym_get_choice_prop(%struct.symbol*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local i8* @prop_get_type_name(i32) #1

declare dso_local i32 @dep_stack_remove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
