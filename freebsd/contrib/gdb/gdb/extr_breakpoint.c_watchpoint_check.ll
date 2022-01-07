; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_watchpoint_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_watchpoint_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.breakpoint*, %struct.value* }
%struct.breakpoint = type { i8*, %struct.TYPE_3__*, i32, %struct.value*, i32, i32, i32* }
%struct.TYPE_3__ = type { i8* }
%struct.value = type { i32 }
%struct.frame_info = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@WP_VALUE_NOT_CHANGED = common dso_local global i32 0, align 4
@WP_VALUE_CHANGED = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"watchpoint-scope\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\0AWatchpoint \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"wpnum\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c" deleted because the program has left the block in\0Awhich its expression is valid.\0A\00", align 1
@disp_del_at_next_stop = common dso_local global i8* null, align 8
@WP_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @watchpoint_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchpoint_check(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.breakpoint*, align 8
  %6 = alloca %struct.frame_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.value*, align 8
  %9 = alloca %struct.value*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  store %struct.breakpoint* %14, %struct.breakpoint** %5, align 8
  %15 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %16 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %52

20:                                               ; preds = %1
  %21 = call i32 (...) @reinit_frame_cache()
  %22 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %23 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.frame_info* @frame_find_by_id(i32 %24)
  store %struct.frame_info* %25, %struct.frame_info** %6, align 8
  %26 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %27 = icmp ne %struct.frame_info* %26, null
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %33 = call %struct.frame_info* (...) @get_current_frame()
  %34 = icmp eq %struct.frame_info* %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31, %20
  %36 = load i32, i32* @current_gdbarch, align 4
  %37 = call i32 (...) @read_pc()
  %38 = call i64 @gdbarch_in_function_epilogue_p(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @WP_VALUE_NOT_CHANGED, align 4
  store i32 %41, i32* %2, align 4
  br label %121

42:                                               ; preds = %35, %31
  %43 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %44 = icmp ne %struct.frame_info* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %50 = call i32 @select_frame(%struct.frame_info* %49)
  br label %51

51:                                               ; preds = %48, %45, %42
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %52
  %56 = call %struct.value* (...) @value_mark()
  store %struct.value* %56, %struct.value** %8, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.breakpoint*, %struct.breakpoint** %58, align 8
  %60 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.value* @evaluate_expression(i32 %61)
  store %struct.value* %62, %struct.value** %9, align 8
  %63 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %64 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %63, i32 0, i32 3
  %65 = load %struct.value*, %struct.value** %64, align 8
  %66 = load %struct.value*, %struct.value** %9, align 8
  %67 = call i32 @value_equal(%struct.value* %65, %struct.value* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %55
  %70 = load %struct.value*, %struct.value** %9, align 8
  %71 = call i32 @release_value(%struct.value* %70)
  %72 = load %struct.value*, %struct.value** %8, align 8
  %73 = call i32 @value_free_to_mark(%struct.value* %72)
  %74 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %75 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %74, i32 0, i32 3
  %76 = load %struct.value*, %struct.value** %75, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store %struct.value* %76, %struct.value** %78, align 8
  %79 = load %struct.value*, %struct.value** %9, align 8
  %80 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %81 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %80, i32 0, i32 3
  store %struct.value* %79, %struct.value** %81, align 8
  %82 = load i32, i32* @WP_VALUE_CHANGED, align 4
  store i32 %82, i32* %2, align 4
  br label %121

83:                                               ; preds = %55
  %84 = load %struct.value*, %struct.value** %8, align 8
  %85 = call i32 @value_free_to_mark(%struct.value* %84)
  %86 = load i32, i32* @WP_VALUE_NOT_CHANGED, align 4
  store i32 %86, i32* %2, align 4
  br label %121

87:                                               ; preds = %52
  %88 = load i32, i32* @uiout, align 4
  %89 = call i64 @ui_out_is_mi_like_p(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @uiout, align 4
  %93 = call i32 @ui_out_field_string(i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i32, i32* @uiout, align 4
  %96 = call i32 @ui_out_text(i32 %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @uiout, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.breakpoint*, %struct.breakpoint** %99, align 8
  %101 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ui_out_field_int(i32 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @uiout, align 4
  %105 = call i32 @ui_out_text(i32 %104, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %107 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = icmp ne %struct.TYPE_3__* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %94
  %111 = load i8*, i8** @disp_del_at_next_stop, align 8
  %112 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %113 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i8* %111, i8** %115, align 8
  br label %116

116:                                              ; preds = %110, %94
  %117 = load i8*, i8** @disp_del_at_next_stop, align 8
  %118 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %119 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* @WP_DELETED, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %116, %83, %69, %40
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @reinit_frame_cache(...) #1

declare dso_local %struct.frame_info* @frame_find_by_id(i32) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i64 @gdbarch_in_function_epilogue_p(i32, i32) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @select_frame(%struct.frame_info*) #1

declare dso_local %struct.value* @value_mark(...) #1

declare dso_local %struct.value* @evaluate_expression(i32) #1

declare dso_local i32 @value_equal(%struct.value*, %struct.value*) #1

declare dso_local i32 @release_value(%struct.value*) #1

declare dso_local i32 @value_free_to_mark(%struct.value*) #1

declare dso_local i64 @ui_out_is_mi_like_p(i32) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
