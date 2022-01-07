; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_do_enable_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_do_enable_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.breakpoint = type { i64, i64, i32, i32, i32, i32, i32, i32*, i64 }
%struct.value = type { i32 }

@bp_hardware_breakpoint = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"No hardware breakpoint support in the target.\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Hardware breakpoints used exceeds limit.\00", align 1
@bp_enabled = common dso_local global i64 0, align 8
@GDB_RC_OK = common dso_local global i64 0, align 8
@bp_permanent = common dso_local global i64 0, align 8
@bp_watchpoint = common dso_local global i64 0, align 8
@bp_hardware_watchpoint = common dso_local global i64 0, align 8
@bp_read_watchpoint = common dso_local global i64 0, align 8
@bp_access_watchpoint = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [107 x i8] c"Cannot enable watchpoint %d because the block in which its expression\0Ais valid is not currently in scope.\0A\00", align 1
@bp_disabled = common dso_local global i8* null, align 8
@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@.str.3 = private unnamed_addr constant [103 x i8] c"Cannot enable watchpoint %d because target watch resources\0Ahave been allocated for other watchpoints.\0A\00", align 1
@fr = common dso_local global %struct.frame_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.breakpoint*, i32)* @do_enable_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_enable_breakpoint(%struct.breakpoint* %0, i32 %1) #0 {
  %3 = alloca %struct.breakpoint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.value*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.frame_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.breakpoint* %0, %struct.breakpoint** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.frame_info* null, %struct.frame_info** %5, align 8
  store i32 -1, i32* %6, align 4
  %14 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %15 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @bp_hardware_breakpoint, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = call i32 (...) @hw_breakpoint_used_count()
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* @bp_hardware_breakpoint, align 8
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @TARGET_CAN_USE_HARDWARE_WATCHPOINT(i64 %21, i32 %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %35

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %38 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %43 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @bp_enabled, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = call i32 (...) @breakpoints_changed()
  %49 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %50 = call i64 @resolve_pending_breakpoint(%struct.breakpoint* %49)
  %51 = load i64, i64* @GDB_RC_OK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %55 = call i32 @delete_breakpoint(%struct.breakpoint* %54)
  br label %227

56:                                               ; preds = %47
  %57 = load i64, i64* @bp_enabled, align 8
  %58 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %59 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %62 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %56, %41
  br label %218

64:                                               ; preds = %36
  %65 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %66 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @bp_permanent, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i64, i64* @bp_enabled, align 8
  %72 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %73 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %77 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %79 = call i32 @check_duplicates(%struct.breakpoint* %78)
  %80 = call i32 (...) @breakpoints_changed()
  %81 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %82 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @bp_watchpoint, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %104, label %86

86:                                               ; preds = %74
  %87 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %88 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @bp_hardware_watchpoint, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %104, label %92

92:                                               ; preds = %86
  %93 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %94 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @bp_read_watchpoint, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %100 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @bp_access_watchpoint, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %217

104:                                              ; preds = %98, %92, %86, %74
  %105 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %106 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %105, i32 0, i32 7
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %104
  %110 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %111 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.frame_info* @frame_find_by_id(i32 %112)
  store %struct.frame_info* %113, %struct.frame_info** %11, align 8
  store %struct.frame_info* %113, %struct.frame_info** %11, align 8
  %114 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %115 = icmp eq %struct.frame_info* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %109
  %117 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %118 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @printf_filtered(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load i8*, i8** @bp_disabled, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %124 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %227

125:                                              ; preds = %109
  %126 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  store %struct.frame_info* %126, %struct.frame_info** %5, align 8
  %127 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %128 = call i32 @frame_relative_level(%struct.frame_info* %127)
  store i32 %128, i32* %6, align 4
  %129 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %130 = call i32 @select_frame(%struct.frame_info* %129)
  br label %131

131:                                              ; preds = %125, %104
  %132 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %133 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @value_free(i32 %134)
  %136 = call %struct.value* (...) @value_mark()
  store %struct.value* %136, %struct.value** %9, align 8
  %137 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %138 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @evaluate_expression(i32 %139)
  %141 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %142 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %144 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @release_value(i32 %145)
  %147 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %148 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @VALUE_LAZY(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %131
  %153 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %154 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @value_fetch_lazy(i32 %155)
  br label %157

157:                                              ; preds = %152, %131
  %158 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %159 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @bp_hardware_watchpoint, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %175, label %163

163:                                              ; preds = %157
  %164 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %165 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @bp_read_watchpoint, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %175, label %169

169:                                              ; preds = %163
  %170 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %171 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @bp_access_watchpoint, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %208

175:                                              ; preds = %169, %163, %157
  %176 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %177 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @hw_watchpoint_used_count(i64 %178, i32* %8)
  store i32 %179, i32* %12, align 4
  %180 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %181 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @can_use_hardware_watchpoint(i32 %182)
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %187 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %189, %190
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @TARGET_CAN_USE_HARDWARE_WATCHPOINT(i64 %188, i32 %191, i32 %192)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %175
  %197 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %198 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @printf_filtered(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  %201 = load i8*, i8** @bp_disabled, align 8
  %202 = ptrtoint i8* %201 to i64
  %203 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %204 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  %205 = load %struct.value*, %struct.value** %9, align 8
  %206 = call i32 @value_free_to_mark(%struct.value* %205)
  br label %227

207:                                              ; preds = %175
  br label %208

208:                                              ; preds = %207, %169
  %209 = load i32, i32* %6, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %213 = call i32 @select_frame(%struct.frame_info* %212)
  br label %214

214:                                              ; preds = %211, %208
  %215 = load %struct.value*, %struct.value** %9, align 8
  %216 = call i32 @value_free_to_mark(%struct.value* %215)
  br label %217

217:                                              ; preds = %214, %98
  br label %218

218:                                              ; preds = %217, %63
  br i1 true, label %219, label %222

219:                                              ; preds = %218
  %220 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %221 = call i32 @modify_breakpoint_hook(%struct.breakpoint* %220)
  br label %222

222:                                              ; preds = %219, %218
  %223 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %224 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @breakpoint_modify_event(i32 %225)
  br label %227

227:                                              ; preds = %222, %196, %116, %53
  ret void
}

declare dso_local i32 @hw_breakpoint_used_count(...) #1

declare dso_local i32 @TARGET_CAN_USE_HARDWARE_WATCHPOINT(i64, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @breakpoints_changed(...) #1

declare dso_local i64 @resolve_pending_breakpoint(%struct.breakpoint*) #1

declare dso_local i32 @delete_breakpoint(%struct.breakpoint*) #1

declare dso_local i32 @check_duplicates(%struct.breakpoint*) #1

declare dso_local %struct.frame_info* @frame_find_by_id(i32) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @frame_relative_level(%struct.frame_info*) #1

declare dso_local i32 @select_frame(%struct.frame_info*) #1

declare dso_local i32 @value_free(i32) #1

declare dso_local %struct.value* @value_mark(...) #1

declare dso_local i32 @evaluate_expression(i32) #1

declare dso_local i32 @release_value(i32) #1

declare dso_local i64 @VALUE_LAZY(i32) #1

declare dso_local i32 @value_fetch_lazy(i32) #1

declare dso_local i32 @hw_watchpoint_used_count(i64, i32*) #1

declare dso_local i32 @can_use_hardware_watchpoint(i32) #1

declare dso_local i32 @value_free_to_mark(%struct.value*) #1

declare dso_local i32 @modify_breakpoint_hook(%struct.breakpoint*) #1

declare dso_local i32 @breakpoint_modify_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
