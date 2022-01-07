; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_insert_bp_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_insert_bp_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.bp_location = type { i32, i64, %struct.TYPE_9__*, i64, i32, i32*, i64 }
%struct.TYPE_9__ = type { i64, i64, i8*, i32, %struct.TYPE_7__*, %struct.value*, i32, i32, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.value = type { %struct.value* }
%struct.ui_file = type { i32 }
%struct.type = type { i32 }
%struct.cleanup = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@bp_loc_software_breakpoint = common dso_local global i64 0, align 8
@bp_loc_hardware_breakpoint = common dso_local global i64 0, align 8
@overlay_debugging = common dso_local global i64 0, align 8
@ovly_off = common dso_local global i64 0, align 8
@overlay_events_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"hardware breakpoint %d not supported in overlay!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Overlay breakpoint %d failed: in ROM?\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot insert hardware breakpoint %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot insert breakpoint %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error accessing memory address \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c": %s.\0A\00", align 1
@bp_loc_hardware_watchpoint = common dso_local global i64 0, align 8
@disp_del_at_next_stop = common dso_local global i64 0, align 8
@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@lval_memory = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@hw_write = common dso_local global i32 0, align 4
@bp_read_watchpoint = common dso_local global i64 0, align 8
@hw_read = common dso_local global i32 0, align 4
@bp_access_watchpoint = common dso_local global i64 0, align 8
@hw_access = common dso_local global i32 0, align 4
@mark_uninserted = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Could not insert hardware watchpoint %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Hardware watchpoint %d deleted \00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"because the program has left the block \0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"in which its expression is valid.\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Cannot insert catchpoint %d; disabling it.\0A\00", align 1
@bp_disabled = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"Error inserting catchpoint %d:\0A\00", align 1
@xfree = common dso_local global i32 0, align 4
@bp_catch_catch = common dso_local global i64 0, align 8
@EX_EVENT_CATCH = common dso_local global i32 0, align 4
@EX_EVENT_THROW = common dso_local global i32 0, align 4
@cover_target_enable_exception_callback = common dso_local global i32 0, align 4
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@bp_catch_fork = common dso_local global i64 0, align 8
@bp_catch_vfork = common dso_local global i64 0, align 8
@bp_catch_exec = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [35 x i8] c"warning: inserting catchpoint %d: \00", align 1
@uiout = common dso_local global i32 0, align 4
@insert_catchpoint = common dso_local global i32 0, align 4
@RETURN_MASK_ERROR = common dso_local global i32 0, align 4
@bp_shlib_disabled = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bp_location*, %struct.ui_file*, i32*, i32*, i32*)* @insert_bp_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_bp_location(%struct.bp_location* %0, %struct.ui_file* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bp_location*, align 8
  %8 = alloca %struct.ui_file*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.frame_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.value*, align 8
  %18 = alloca %struct.value*, align 8
  %19 = alloca %struct.frame_info*, align 8
  %20 = alloca %struct.type*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.cleanup*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_8__, align 4
  %28 = alloca i8*, align 8
  %29 = alloca %struct.cleanup*, align 8
  store %struct.bp_location* %0, %struct.bp_location** %7, align 8
  store %struct.ui_file* %1, %struct.ui_file** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %30 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %31 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call i32 @breakpoint_enabled(%struct.TYPE_9__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %574

36:                                               ; preds = %5
  %37 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %38 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %43 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %36
  store i32 0, i32* %6, align 4
  br label %574

47:                                               ; preds = %41
  %48 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %49 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @bp_loc_software_breakpoint, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %55 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @bp_loc_hardware_breakpoint, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %212

59:                                               ; preds = %53, %47
  %60 = load i64, i64* @overlay_debugging, align 8
  %61 = load i64, i64* @ovly_off, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %74, label %63

63:                                               ; preds = %59
  %64 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %65 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %70 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @section_is_overlay(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %97, label %74

74:                                               ; preds = %68, %63, %59
  %75 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %76 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @bp_loc_hardware_breakpoint, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %82 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %85 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @target_insert_hw_breakpoint(i64 %83, i32 %86)
  store i32 %87, i32* %12, align 4
  br label %96

88:                                               ; preds = %74
  %89 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %90 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %93 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @target_insert_breakpoint(i64 %91, i32 %94)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %88, %80
  br label %169

97:                                               ; preds = %68
  %98 = load i32, i32* @overlay_events_enabled, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %138, label %100

100:                                              ; preds = %97
  %101 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %102 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @bp_loc_hardware_breakpoint, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %108 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %107, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %137

113:                                              ; preds = %100
  %114 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %115 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %118 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @overlay_unmapped_address(i64 %116, i32* %119)
  store i64 %120, i64* %13, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %123 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @target_insert_breakpoint(i64 %121, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %113
  %129 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %130 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %131 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %130, i32 0, i32 2
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %128, %113
  br label %137

137:                                              ; preds = %136, %106
  br label %138

138:                                              ; preds = %137, %97
  %139 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %140 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = call i64 @section_is_mapped(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %138
  %145 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %146 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @bp_loc_hardware_breakpoint, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %152 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %155 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @target_insert_hw_breakpoint(i64 %153, i32 %156)
  store i32 %157, i32* %12, align 4
  br label %166

158:                                              ; preds = %144
  %159 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %160 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %163 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @target_insert_breakpoint(i64 %161, i32 %164)
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %158, %150
  br label %168

167:                                              ; preds = %138
  store i32 0, i32* %6, align 4
  br label %574

168:                                              ; preds = %166
  br label %169

169:                                              ; preds = %168, %96
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %207

172:                                              ; preds = %169
  %173 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %174 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @bp_loc_hardware_breakpoint, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %172
  %179 = load i32*, i32** %11, align 8
  store i32 1, i32* %179, align 4
  %180 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %181 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %182 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %181, i32 0, i32 2
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %180, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  br label %206

187:                                              ; preds = %172
  %188 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %189 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %190 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %189, i32 0, i32 2
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %188, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  %195 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %196 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %197 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %198 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %201 = call i32 @print_address_numeric(i64 %199, i32 1, %struct.ui_file* %200)
  %202 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @safe_strerror(i32 %203)
  %205 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %187, %178
  br label %210

207:                                              ; preds = %169
  %208 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %209 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %206
  %211 = load i32, i32* %12, align 4
  store i32 %211, i32* %6, align 4
  br label %574

212:                                              ; preds = %53
  %213 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %214 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @bp_loc_hardware_watchpoint, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %416

218:                                              ; preds = %212
  %219 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %220 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %219, i32 0, i32 2
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @disp_del_at_next_stop, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %416

226:                                              ; preds = %218
  %227 = call %struct.value* (...) @value_mark()
  store %struct.value* %227, %struct.value** %17, align 8
  %228 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  store %struct.frame_info* %228, %struct.frame_info** %14, align 8
  %229 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %230 = call i32 @frame_relative_level(%struct.frame_info* %229)
  store i32 %230, i32* %15, align 4
  %231 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %232 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %231, i32 0, i32 2
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 8
  %235 = load i32*, i32** %234, align 8
  %236 = icmp eq i32* %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %226
  store i32 1, i32* %16, align 4
  br label %254

238:                                              ; preds = %226
  %239 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %240 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %239, i32 0, i32 2
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 4
  %244 = call %struct.frame_info* @frame_find_by_id(i32 %243)
  store %struct.frame_info* %244, %struct.frame_info** %19, align 8
  %245 = load %struct.frame_info*, %struct.frame_info** %19, align 8
  %246 = icmp ne %struct.frame_info* %245, null
  %247 = zext i1 %246 to i32
  store i32 %247, i32* %16, align 4
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %238
  %251 = load %struct.frame_info*, %struct.frame_info** %19, align 8
  %252 = call i32 @select_frame(%struct.frame_info* %251)
  br label %253

253:                                              ; preds = %250, %238
  br label %254

254:                                              ; preds = %253, %237
  %255 = load i32, i32* %16, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %373

257:                                              ; preds = %254
  %258 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %259 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %258, i32 0, i32 2
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  %263 = call %struct.value* @evaluate_expression(i32 %262)
  store %struct.value* %263, %struct.value** %18, align 8
  %264 = load %struct.value*, %struct.value** %18, align 8
  %265 = call i32 @VALUE_CONTENTS(%struct.value* %264)
  %266 = load %struct.value*, %struct.value** %17, align 8
  %267 = call i32 @value_release_to_mark(%struct.value* %266)
  %268 = load %struct.value*, %struct.value** %18, align 8
  %269 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %270 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %269, i32 0, i32 2
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 5
  store %struct.value* %268, %struct.value** %272, align 8
  %273 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %274 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %273, i32 0, i32 0
  store i32 1, i32* %274, align 8
  br label %275

275:                                              ; preds = %351, %257
  %276 = load %struct.value*, %struct.value** %18, align 8
  %277 = icmp ne %struct.value* %276, null
  br i1 %277, label %278, label %355

278:                                              ; preds = %275
  %279 = load %struct.value*, %struct.value** %18, align 8
  %280 = call i64 @VALUE_LVAL(%struct.value* %279)
  %281 = load i64, i64* @lval_memory, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %350

283:                                              ; preds = %278
  %284 = load %struct.value*, %struct.value** %18, align 8
  %285 = call i32 @VALUE_LAZY(%struct.value* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %350, label %287

287:                                              ; preds = %283
  %288 = load %struct.value*, %struct.value** %18, align 8
  %289 = call i32 @VALUE_TYPE(%struct.value* %288)
  %290 = call %struct.type* @check_typedef(i32 %289)
  store %struct.type* %290, %struct.type** %20, align 8
  %291 = load %struct.value*, %struct.value** %18, align 8
  %292 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %293 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %292, i32 0, i32 2
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 5
  %296 = load %struct.value*, %struct.value** %295, align 8
  %297 = icmp eq %struct.value* %291, %296
  br i1 %297, label %308, label %298

298:                                              ; preds = %287
  %299 = load %struct.type*, %struct.type** %20, align 8
  %300 = call i64 @TYPE_CODE(%struct.type* %299)
  %301 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %349

303:                                              ; preds = %298
  %304 = load %struct.type*, %struct.type** %20, align 8
  %305 = call i64 @TYPE_CODE(%struct.type* %304)
  %306 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %349

308:                                              ; preds = %303, %287
  %309 = load %struct.value*, %struct.value** %18, align 8
  %310 = call i64 @VALUE_ADDRESS(%struct.value* %309)
  %311 = load %struct.value*, %struct.value** %18, align 8
  %312 = call i64 @VALUE_OFFSET(%struct.value* %311)
  %313 = add nsw i64 %310, %312
  store i64 %313, i64* %21, align 8
  %314 = load %struct.value*, %struct.value** %18, align 8
  %315 = call i32 @VALUE_TYPE(%struct.value* %314)
  %316 = call i32 @TYPE_LENGTH(i32 %315)
  store i32 %316, i32* %22, align 4
  %317 = load i32, i32* @hw_write, align 4
  store i32 %317, i32* %23, align 4
  %318 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %319 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %318, i32 0, i32 2
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @bp_read_watchpoint, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %308
  %326 = load i32, i32* @hw_read, align 4
  store i32 %326, i32* %23, align 4
  br label %338

327:                                              ; preds = %308
  %328 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %329 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %328, i32 0, i32 2
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @bp_access_watchpoint, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %327
  %336 = load i32, i32* @hw_access, align 4
  store i32 %336, i32* %23, align 4
  br label %337

337:                                              ; preds = %335, %327
  br label %338

338:                                              ; preds = %337, %325
  %339 = load i64, i64* %21, align 8
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* %23, align 4
  %342 = call i32 @target_insert_watchpoint(i64 %339, i32 %340, i32 %341)
  store i32 %342, i32* %12, align 4
  %343 = load i32, i32* %12, align 4
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %345, label %348

345:                                              ; preds = %338
  %346 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %347 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %346, i32 0, i32 0
  store i32 0, i32* %347, align 8
  br label %348

348:                                              ; preds = %345, %338
  store i32 0, i32* %12, align 4
  br label %349

349:                                              ; preds = %348, %303, %298
  br label %350

350:                                              ; preds = %349, %283, %278
  br label %351

351:                                              ; preds = %350
  %352 = load %struct.value*, %struct.value** %18, align 8
  %353 = getelementptr inbounds %struct.value, %struct.value* %352, i32 0, i32 0
  %354 = load %struct.value*, %struct.value** %353, align 8
  store %struct.value* %354, %struct.value** %18, align 8
  br label %275

355:                                              ; preds = %275
  %356 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %357 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %372, label %360

360:                                              ; preds = %355
  %361 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %362 = load i32, i32* @mark_uninserted, align 4
  %363 = call i32 @remove_breakpoint(%struct.bp_location* %361, i32 %362)
  %364 = load i32*, i32** %11, align 8
  store i32 1, i32* %364, align 4
  %365 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %366 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %367 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %366, i32 0, i32 2
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %365, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %370)
  store i32 -1, i32* %12, align 4
  br label %372

372:                                              ; preds = %360, %355
  br label %402

373:                                              ; preds = %254
  %374 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %375 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %374, i32 0, i32 2
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %378)
  %380 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %381 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %382 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %383 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %382, i32 0, i32 2
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 4
  %386 = load %struct.TYPE_7__*, %struct.TYPE_7__** %385, align 8
  %387 = icmp ne %struct.TYPE_7__* %386, null
  br i1 %387, label %388, label %396

388:                                              ; preds = %373
  %389 = load i64, i64* @disp_del_at_next_stop, align 8
  %390 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %391 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %390, i32 0, i32 2
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 4
  %394 = load %struct.TYPE_7__*, %struct.TYPE_7__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  store i64 %389, i64* %395, align 8
  br label %396

396:                                              ; preds = %388, %373
  %397 = load i64, i64* @disp_del_at_next_stop, align 8
  %398 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %399 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %398, i32 0, i32 2
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 0
  store i64 %397, i64* %401, align 8
  br label %402

402:                                              ; preds = %396, %372
  %403 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %404 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %405 = icmp ne %struct.frame_info* %403, %404
  br i1 %405, label %411, label %406

406:                                              ; preds = %402
  %407 = load i32, i32* %15, align 4
  %408 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %409 = call i32 @frame_relative_level(%struct.frame_info* %408)
  %410 = icmp ne i32 %407, %409
  br i1 %410, label %411, label %414

411:                                              ; preds = %406, %402
  %412 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %413 = call i32 @select_frame(%struct.frame_info* %412)
  br label %414

414:                                              ; preds = %411, %406
  %415 = load i32, i32* %12, align 4
  store i32 %415, i32* %6, align 4
  br label %574

416:                                              ; preds = %218, %212
  %417 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %418 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %417, i32 0, i32 2
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %418, align 8
  %420 = call i64 @ep_is_exception_catchpoint(%struct.TYPE_9__* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %514

422:                                              ; preds = %416
  %423 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %424 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %423, i32 0, i32 3
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %427 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @target_insert_breakpoint(i64 %425, i32 %428)
  store i32 %429, i32* %12, align 4
  %430 = load i32, i32* %12, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %456

432:                                              ; preds = %422
  %433 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %434 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %435 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %434, i32 0, i32 2
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 8
  %439 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %433, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %438)
  %440 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %441 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %440, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %442 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %443 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %442, i32 0, i32 3
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %446 = call i32 @print_address_numeric(i64 %444, i32 1, %struct.ui_file* %445)
  %447 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %448 = load i32, i32* %12, align 4
  %449 = call i32 @safe_strerror(i32 %448)
  %450 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %447, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %449)
  %451 = load i8*, i8** @bp_disabled, align 8
  %452 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %453 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %452, i32 0, i32 2
  %454 = load %struct.TYPE_9__*, %struct.TYPE_9__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 2
  store i8* %451, i8** %455, align 8
  br label %512

456:                                              ; preds = %422
  %457 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %458 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %457, i32 0, i32 2
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 8
  %462 = call i8* @xstrprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %461)
  store i8* %462, i8** %24, align 8
  %463 = load i32, i32* @xfree, align 4
  %464 = load i8*, i8** %24, align 8
  %465 = call %struct.cleanup* @make_cleanup(i32 %463, i8* %464)
  store %struct.cleanup* %465, %struct.cleanup** %25, align 8
  %466 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %467 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %466, i32 0, i32 2
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 1
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @bp_catch_catch, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %456
  %474 = load i32, i32* @EX_EVENT_CATCH, align 4
  br label %477

475:                                              ; preds = %456
  %476 = load i32, i32* @EX_EVENT_THROW, align 4
  br label %477

477:                                              ; preds = %475, %473
  %478 = phi i32 [ %474, %473 ], [ %476, %475 ]
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %478, i32* %479, align 4
  %480 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 1, i32* %480, align 4
  %481 = load i32, i32* @cover_target_enable_exception_callback, align 4
  %482 = load i8*, i8** %24, align 8
  %483 = load i32, i32* @RETURN_MASK_ALL, align 4
  %484 = call i32 @catch_errors(i32 %481, %struct.TYPE_8__* %27, i8* %482, i32 %483)
  store i32 %484, i32* %26, align 4
  %485 = load %struct.cleanup*, %struct.cleanup** %25, align 8
  %486 = call i32 @do_cleanups(%struct.cleanup* %485)
  %487 = load i32, i32* %26, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %495

489:                                              ; preds = %477
  %490 = load i32, i32* %26, align 4
  %491 = icmp ne i32 %490, -1
  br i1 %491, label %492, label %495

492:                                              ; preds = %489
  %493 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %494 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %493, i32 0, i32 0
  store i32 1, i32* %494, align 8
  br label %495

495:                                              ; preds = %492, %489, %477
  %496 = load i32, i32* %26, align 4
  %497 = icmp eq i32 %496, -1
  br i1 %497, label %498, label %511

498:                                              ; preds = %495
  %499 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %500 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %501 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %500, i32 0, i32 2
  %502 = load %struct.TYPE_9__*, %struct.TYPE_9__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 8
  %505 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %499, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %504)
  %506 = load i8*, i8** @bp_disabled, align 8
  %507 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %508 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %507, i32 0, i32 2
  %509 = load %struct.TYPE_9__*, %struct.TYPE_9__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %509, i32 0, i32 2
  store i8* %506, i8** %510, align 8
  br label %511

511:                                              ; preds = %498, %495
  br label %512

512:                                              ; preds = %511, %432
  %513 = load i32, i32* %12, align 4
  store i32 %513, i32* %6, align 4
  br label %574

514:                                              ; preds = %416
  %515 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %516 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %515, i32 0, i32 2
  %517 = load %struct.TYPE_9__*, %struct.TYPE_9__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %517, i32 0, i32 1
  %519 = load i64, i64* %518, align 8
  %520 = load i64, i64* @bp_catch_fork, align 8
  %521 = icmp eq i64 %519, %520
  br i1 %521, label %538, label %522

522:                                              ; preds = %514
  %523 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %524 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %523, i32 0, i32 2
  %525 = load %struct.TYPE_9__*, %struct.TYPE_9__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 1
  %527 = load i64, i64* %526, align 8
  %528 = load i64, i64* @bp_catch_vfork, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %538, label %530

530:                                              ; preds = %522
  %531 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %532 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %531, i32 0, i32 2
  %533 = load %struct.TYPE_9__*, %struct.TYPE_9__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %533, i32 0, i32 1
  %535 = load i64, i64* %534, align 8
  %536 = load i64, i64* @bp_catch_exec, align 8
  %537 = icmp eq i64 %535, %536
  br i1 %537, label %538, label %570

538:                                              ; preds = %530, %522, %514
  %539 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %540 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %539, i32 0, i32 2
  %541 = load %struct.TYPE_9__*, %struct.TYPE_9__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 3
  %543 = load i32, i32* %542, align 8
  %544 = call i8* @xstrprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %543)
  store i8* %544, i8** %28, align 8
  %545 = load i32, i32* @xfree, align 4
  %546 = load i8*, i8** %28, align 8
  %547 = call %struct.cleanup* @make_cleanup(i32 %545, i8* %546)
  store %struct.cleanup* %547, %struct.cleanup** %29, align 8
  %548 = load i32, i32* @uiout, align 4
  %549 = load i32, i32* @insert_catchpoint, align 4
  %550 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %551 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %550, i32 0, i32 2
  %552 = load %struct.TYPE_9__*, %struct.TYPE_9__** %551, align 8
  %553 = load i8*, i8** %28, align 8
  %554 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %555 = call i32 @catch_exceptions(i32 %548, i32 %549, %struct.TYPE_9__* %552, i8* %553, i32 %554)
  store i32 %555, i32* %12, align 4
  %556 = load %struct.cleanup*, %struct.cleanup** %29, align 8
  %557 = call i32 @do_cleanups(%struct.cleanup* %556)
  %558 = load i32, i32* %12, align 4
  %559 = icmp slt i32 %558, 0
  br i1 %559, label %560, label %566

560:                                              ; preds = %538
  %561 = load i8*, i8** @bp_disabled, align 8
  %562 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %563 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %562, i32 0, i32 2
  %564 = load %struct.TYPE_9__*, %struct.TYPE_9__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %564, i32 0, i32 2
  store i8* %561, i8** %565, align 8
  br label %569

566:                                              ; preds = %538
  %567 = load %struct.bp_location*, %struct.bp_location** %7, align 8
  %568 = getelementptr inbounds %struct.bp_location, %struct.bp_location* %567, i32 0, i32 0
  store i32 1, i32* %568, align 8
  br label %569

569:                                              ; preds = %566, %560
  store i32 0, i32* %6, align 4
  br label %574

570:                                              ; preds = %530
  br label %571

571:                                              ; preds = %570
  br label %572

572:                                              ; preds = %571
  br label %573

573:                                              ; preds = %572
  store i32 0, i32* %6, align 4
  br label %574

574:                                              ; preds = %573, %569, %512, %414, %210, %167, %46, %35
  %575 = load i32, i32* %6, align 4
  ret i32 %575
}

declare dso_local i32 @breakpoint_enabled(%struct.TYPE_9__*) #1

declare dso_local i32 @section_is_overlay(i32*) #1

declare dso_local i32 @target_insert_hw_breakpoint(i64, i32) #1

declare dso_local i32 @target_insert_breakpoint(i64, i32) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i64 @overlay_unmapped_address(i64, i32*) #1

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*, ...) #1

declare dso_local i64 @section_is_mapped(i32*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @print_address_numeric(i64, i32, %struct.ui_file*) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local %struct.value* @value_mark(...) #1

declare dso_local i32 @frame_relative_level(%struct.frame_info*) #1

declare dso_local %struct.frame_info* @frame_find_by_id(i32) #1

declare dso_local i32 @select_frame(%struct.frame_info*) #1

declare dso_local %struct.value* @evaluate_expression(i32) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @value_release_to_mark(%struct.value*) #1

declare dso_local i64 @VALUE_LVAL(%struct.value*) #1

declare dso_local i32 @VALUE_LAZY(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @target_insert_watchpoint(i64, i32, i32) #1

declare dso_local i32 @remove_breakpoint(%struct.bp_location*, i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i64 @ep_is_exception_catchpoint(%struct.TYPE_9__*) #1

declare dso_local i8* @xstrprintf(i8*, i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @catch_errors(i32, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @catch_exceptions(i32, i32, %struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
