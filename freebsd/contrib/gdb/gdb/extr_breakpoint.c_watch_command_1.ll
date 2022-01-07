; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_watch_command_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_watch_command_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.breakpoint = type { %struct.breakpoint*, %struct.TYPE_2__*, i8*, i32, i32, i8*, i8*, %struct.expression*, %struct.value*, i8*, %struct.block*, %struct.expression*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.value = type { i32 }
%struct.expression = type { i32 }
%struct.symtab_and_line = type { i32 }
%struct.frame_info = type { i32 }

@innermost_block = common dso_local global %struct.block* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Junk at end of command.\00", align 1
@hw_read = common dso_local global i32 0, align 4
@bp_read_watchpoint = common dso_local global i32 0, align 4
@hw_access = common dso_local global i32 0, align 4
@bp_access_watchpoint = common dso_local global i32 0, align 4
@bp_hardware_watchpoint = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Expression cannot be implemented with read/access watchpoint.\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Target does not support this type of hardware watchpoint.\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Target can only support one kind of HW watchpoint at a time.\00", align 1
@bp_watchpoint = common dso_local global i32 0, align 4
@breakpoint_count = common dso_local global i64 0, align 8
@disp_donttouch = common dso_local global i32 0, align 4
@bp_watchpoint_scope = common dso_local global i32 0, align 4
@bp_enabled = common dso_local global i32 0, align 4
@disp_del = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @watch_command_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watch_command_1(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.breakpoint*, align 8
  %8 = alloca %struct.symtab_and_line, align 4
  %9 = alloca %struct.expression*, align 8
  %10 = alloca %struct.block*, align 8
  %11 = alloca %struct.value*, align 8
  %12 = alloca %struct.value*, align 8
  %13 = alloca %struct.frame_info*, align 8
  %14 = alloca %struct.frame_info*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.expression*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.breakpoint*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.frame_info* null, %struct.frame_info** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store %struct.expression* null, %struct.expression** %22, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %29 = call i32 @init_sal(%struct.symtab_and_line* %8)
  store %struct.block* null, %struct.block** @innermost_block, align 8
  %30 = load i8*, i8** %4, align 8
  store i8* %30, i8** %15, align 8
  %31 = call %struct.expression* @parse_exp_1(i8** %4, i32 0, i32 0)
  store %struct.expression* %31, %struct.expression** %9, align 8
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %16, align 8
  %33 = load %struct.block*, %struct.block** @innermost_block, align 8
  store %struct.block* %33, %struct.block** %10, align 8
  %34 = call %struct.value* (...) @value_mark()
  store %struct.value* %34, %struct.value** %12, align 8
  %35 = load %struct.expression*, %struct.expression** %9, align 8
  %36 = call %struct.value* @evaluate_expression(%struct.expression* %35)
  store %struct.value* %36, %struct.value** %11, align 8
  %37 = load %struct.value*, %struct.value** %11, align 8
  %38 = call i32 @release_value(%struct.value* %37)
  %39 = load %struct.value*, %struct.value** %11, align 8
  %40 = call i64 @VALUE_LAZY(%struct.value* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load %struct.value*, %struct.value** %11, align 8
  %44 = call i32 @value_fetch_lazy(%struct.value* %43)
  br label %45

45:                                               ; preds = %42, %3
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** %17, align 8
  br label %47

47:                                               ; preds = %59, %45
  %48 = load i8*, i8** %17, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %17, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 9
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ true, %47 ], [ %56, %52 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i8*, i8** %17, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %17, align 8
  br label %47

62:                                               ; preds = %57
  %63 = load i8*, i8** %17, align 8
  store i8* %63, i8** %18, align 8
  br label %64

64:                                               ; preds = %81, %62
  %65 = load i8*, i8** %18, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 32
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i8*, i8** %18, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 9
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %18, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %74, %69, %64
  %80 = phi i1 [ false, %69 ], [ false, %64 ], [ %78, %74 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i8*, i8** %18, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %18, align 8
  br label %64

84:                                               ; preds = %79
  %85 = load i8*, i8** %18, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp sge i32 %91, 1
  br i1 %92, label %93, label %103

93:                                               ; preds = %84
  %94 = load i8*, i8** %17, align 8
  %95 = load i32, i32* %19, align 4
  %96 = call i64 @strncmp(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i8*, i8** %18, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %100, i8** %20, align 8
  store i8* %100, i8** %17, align 8
  %101 = call %struct.expression* @parse_exp_1(i8** %17, i32 0, i32 0)
  store %struct.expression* %101, %struct.expression** %22, align 8
  %102 = load i8*, i8** %17, align 8
  store i8* %102, i8** %21, align 8
  br label %103

103:                                              ; preds = %98, %93, %84
  %104 = load i8*, i8** %17, align 8
  %105 = load i8, i8* %104, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @hw_read, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @bp_read_watchpoint, align 4
  store i32 %114, i32* %26, align 4
  br label %124

115:                                              ; preds = %109
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @hw_access, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @bp_access_watchpoint, align 4
  store i32 %120, i32* %26, align 4
  br label %123

121:                                              ; preds = %115
  %122 = load i32, i32* @bp_hardware_watchpoint, align 4
  store i32 %122, i32* %26, align 4
  br label %123

123:                                              ; preds = %121, %119
  br label %124

124:                                              ; preds = %123, %113
  %125 = load %struct.value*, %struct.value** %11, align 8
  %126 = call i32 @can_use_hardware_watchpoint(%struct.value* %125)
  store i32 %126, i32* %27, align 4
  %127 = load i32, i32* %27, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* @bp_hardware_watchpoint, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129, %124
  %136 = load i32, i32* %27, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %165

138:                                              ; preds = %135
  %139 = load i32, i32* %26, align 4
  %140 = call i32 @hw_watchpoint_used_count(i32 %139, i32* %24)
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %26, align 4
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* %27, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %24, align 4
  %146 = call i32 @TARGET_CAN_USE_HARDWARE_WATCHPOINT(i32 %141, i32 %144, i32 %145)
  store i32 %146, i32* %25, align 4
  %147 = load i32, i32* %25, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %138
  %150 = load i32, i32* %26, align 4
  %151 = load i32, i32* @bp_hardware_watchpoint, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %149, %138
  %156 = load i32, i32* %25, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i32, i32* %26, align 4
  %160 = load i32, i32* @bp_hardware_watchpoint, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %158, %155
  br label %165

165:                                              ; preds = %164, %135
  %166 = load i32, i32* %27, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %25, align 4
  %170 = icmp sle i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168, %165
  %172 = load i32, i32* @bp_watchpoint, align 4
  store i32 %172, i32* %26, align 4
  br label %173

173:                                              ; preds = %171, %168
  %174 = load i32, i32* %26, align 4
  %175 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call %struct.breakpoint* @set_raw_breakpoint(i32 %176, i32 %174)
  store %struct.breakpoint* %177, %struct.breakpoint** %7, align 8
  %178 = load i64, i64* @breakpoint_count, align 8
  %179 = add nsw i64 %178, 1
  %180 = call i32 @set_breakpoint_count(i64 %179)
  %181 = load i64, i64* @breakpoint_count, align 8
  %182 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %183 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %182, i32 0, i32 12
  store i64 %181, i64* %183, align 8
  %184 = load i32, i32* @disp_donttouch, align 4
  %185 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %186 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  %187 = load %struct.expression*, %struct.expression** %9, align 8
  %188 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %189 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %188, i32 0, i32 11
  store %struct.expression* %187, %struct.expression** %189, align 8
  %190 = load %struct.block*, %struct.block** %10, align 8
  %191 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %192 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %191, i32 0, i32 10
  store %struct.block* %190, %struct.block** %192, align 8
  %193 = load i8*, i8** %15, align 8
  %194 = load i8*, i8** %16, align 8
  %195 = load i8*, i8** %15, align 8
  %196 = ptrtoint i8* %194 to i64
  %197 = ptrtoint i8* %195 to i64
  %198 = sub i64 %196, %197
  %199 = trunc i64 %198 to i32
  %200 = call i8* @savestring(i8* %193, i32 %199)
  %201 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %202 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %201, i32 0, i32 9
  store i8* %200, i8** %202, align 8
  %203 = load %struct.value*, %struct.value** %11, align 8
  %204 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %205 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %204, i32 0, i32 8
  store %struct.value* %203, %struct.value** %205, align 8
  %206 = load %struct.expression*, %struct.expression** %22, align 8
  %207 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %208 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %207, i32 0, i32 7
  store %struct.expression* %206, %struct.expression** %208, align 8
  %209 = load i8*, i8** %20, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %222

211:                                              ; preds = %173
  %212 = load i8*, i8** %20, align 8
  %213 = load i8*, i8** %21, align 8
  %214 = load i8*, i8** %20, align 8
  %215 = ptrtoint i8* %213 to i64
  %216 = ptrtoint i8* %214 to i64
  %217 = sub i64 %215, %216
  %218 = trunc i64 %217 to i32
  %219 = call i8* @savestring(i8* %212, i32 %218)
  %220 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %221 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %220, i32 0, i32 6
  store i8* %219, i8** %221, align 8
  br label %225

222:                                              ; preds = %173
  %223 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %224 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %223, i32 0, i32 6
  store i8* null, i8** %224, align 8
  br label %225

225:                                              ; preds = %222, %211
  %226 = load %struct.block*, %struct.block** %10, align 8
  %227 = call %struct.frame_info* @block_innermost_frame(%struct.block* %226)
  store %struct.frame_info* %227, %struct.frame_info** %13, align 8
  %228 = load %struct.frame_info*, %struct.frame_info** %13, align 8
  %229 = icmp ne %struct.frame_info* %228, null
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load %struct.frame_info*, %struct.frame_info** %13, align 8
  %232 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %231)
  store %struct.frame_info* %232, %struct.frame_info** %14, align 8
  %233 = load %struct.frame_info*, %struct.frame_info** %13, align 8
  %234 = call i8* @get_frame_id(%struct.frame_info* %233)
  %235 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %236 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %235, i32 0, i32 5
  store i8* %234, i8** %236, align 8
  br label %241

237:                                              ; preds = %225
  %238 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %239 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %238, i32 0, i32 5
  %240 = call i32 @memset(i8** %239, i32 0, i32 8)
  br label %241

241:                                              ; preds = %237, %230
  %242 = load %struct.block*, %struct.block** @innermost_block, align 8
  %243 = icmp ne %struct.block* %242, null
  br i1 %243, label %244, label %282

244:                                              ; preds = %241
  %245 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %246 = icmp ne %struct.frame_info* %245, null
  br i1 %246, label %247, label %281

247:                                              ; preds = %244
  %248 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %249 = call i32 @get_frame_pc(%struct.frame_info* %248)
  %250 = load i32, i32* @bp_watchpoint_scope, align 4
  %251 = call %struct.breakpoint* @create_internal_breakpoint(i32 %249, i32 %250)
  store %struct.breakpoint* %251, %struct.breakpoint** %28, align 8
  %252 = load i32, i32* @bp_enabled, align 4
  %253 = load %struct.breakpoint*, %struct.breakpoint** %28, align 8
  %254 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %253, i32 0, i32 4
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @disp_del, align 4
  %256 = load %struct.breakpoint*, %struct.breakpoint** %28, align 8
  %257 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 8
  %258 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %259 = call i8* @get_frame_id(%struct.frame_info* %258)
  %260 = load %struct.breakpoint*, %struct.breakpoint** %28, align 8
  %261 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %260, i32 0, i32 2
  store i8* %259, i8** %261, align 8
  %262 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %263 = call i32 @get_frame_pc(%struct.frame_info* %262)
  %264 = load %struct.breakpoint*, %struct.breakpoint** %28, align 8
  %265 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %264, i32 0, i32 1
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  store i32 %263, i32* %267, align 4
  %268 = load %struct.breakpoint*, %struct.breakpoint** %28, align 8
  %269 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %268, i32 0, i32 1
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @adjust_breakpoint_address(i32 %272)
  %274 = load %struct.breakpoint*, %struct.breakpoint** %28, align 8
  %275 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %274, i32 0, i32 1
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 1
  store i32 %273, i32* %277, align 4
  %278 = load %struct.breakpoint*, %struct.breakpoint** %28, align 8
  %279 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %280 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %279, i32 0, i32 0
  store %struct.breakpoint* %278, %struct.breakpoint** %280, align 8
  br label %281

281:                                              ; preds = %247, %244
  br label %282

282:                                              ; preds = %281, %241
  %283 = load %struct.value*, %struct.value** %12, align 8
  %284 = call i32 @value_free_to_mark(%struct.value* %283)
  %285 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %286 = call i32 @mention(%struct.breakpoint* %285)
  ret void
}

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local %struct.expression* @parse_exp_1(i8**, i32, i32) #1

declare dso_local %struct.value* @value_mark(...) #1

declare dso_local %struct.value* @evaluate_expression(%struct.expression*) #1

declare dso_local i32 @release_value(%struct.value*) #1

declare dso_local i64 @VALUE_LAZY(%struct.value*) #1

declare dso_local i32 @value_fetch_lazy(%struct.value*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @can_use_hardware_watchpoint(%struct.value*) #1

declare dso_local i32 @hw_watchpoint_used_count(i32, i32*) #1

declare dso_local i32 @TARGET_CAN_USE_HARDWARE_WATCHPOINT(i32, i32, i32) #1

declare dso_local %struct.breakpoint* @set_raw_breakpoint(i32, i32) #1

declare dso_local i32 @set_breakpoint_count(i64) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local %struct.frame_info* @block_innermost_frame(%struct.block*) #1

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

declare dso_local i8* @get_frame_id(%struct.frame_info*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local %struct.breakpoint* @create_internal_breakpoint(i32, i32) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @adjust_breakpoint_address(i32) #1

declare dso_local i32 @value_free_to_mark(%struct.value*) #1

declare dso_local i32 @mention(%struct.breakpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
