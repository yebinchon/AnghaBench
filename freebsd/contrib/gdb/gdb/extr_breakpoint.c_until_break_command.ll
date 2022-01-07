; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_until_break_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_until_break_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.symtab = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.symtab_and_line = type { i32 }
%struct.breakpoint = type { i32 }
%struct.cleanup = type { i32 }
%struct.continuation_arg = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.cleanup* }

@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8
@default_breakpoint_valid = common dso_local global i64 0, align 8
@default_breakpoint_symtab = common dso_local global %struct.symtab* null, align 8
@default_breakpoint_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Couldn't get information on specified line.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Junk at end of arguments.\00", align 1
@null_frame_id = common dso_local global i32 0, align 4
@bp_until = common dso_local global i32 0, align 4
@event_loop_p = common dso_local global i64 0, align 8
@until_break_command_continuation = common dso_local global i32 0, align 4
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @until_break_command(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.symtabs_and_lines, align 8
  %8 = alloca %struct.symtab_and_line, align 4
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca %struct.breakpoint*, align 8
  %11 = alloca %struct.cleanup*, align 8
  %12 = alloca %struct.continuation_arg*, align 8
  %13 = alloca %struct.symtabs_and_lines, align 8
  %14 = alloca %struct.symtabs_and_lines, align 8
  %15 = alloca %struct.symtab_and_line, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %17 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %16)
  store %struct.frame_info* %17, %struct.frame_info** %9, align 8
  %18 = call i32 (...) @clear_proceed_status()
  %19 = load i64, i64* @default_breakpoint_valid, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.symtab*, %struct.symtab** @default_breakpoint_symtab, align 8
  %23 = load i32, i32* @default_breakpoint_line, align 4
  %24 = call { i32, %struct.symtab_and_line* } @decode_line_1(i8** %4, i32 1, %struct.symtab* %22, i32 %23, i8*** null, i32* null)
  %25 = bitcast %struct.symtabs_and_lines* %13 to { i32, %struct.symtab_and_line* }*
  %26 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %25, i32 0, i32 0
  %27 = extractvalue { i32, %struct.symtab_and_line* } %24, 0
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %25, i32 0, i32 1
  %29 = extractvalue { i32, %struct.symtab_and_line* } %24, 1
  store %struct.symtab_and_line* %29, %struct.symtab_and_line** %28, align 8
  %30 = bitcast %struct.symtabs_and_lines* %7 to i8*
  %31 = bitcast %struct.symtabs_and_lines* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  br label %41

32:                                               ; preds = %3
  %33 = call { i32, %struct.symtab_and_line* } @decode_line_1(i8** %4, i32 1, %struct.symtab* null, i32 0, i8*** null, i32* null)
  %34 = bitcast %struct.symtabs_and_lines* %14 to { i32, %struct.symtab_and_line* }*
  %35 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %34, i32 0, i32 0
  %36 = extractvalue { i32, %struct.symtab_and_line* } %33, 0
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %34, i32 0, i32 1
  %38 = extractvalue { i32, %struct.symtab_and_line* } %33, 1
  store %struct.symtab_and_line* %38, %struct.symtab_and_line** %37, align 8
  %39 = bitcast %struct.symtabs_and_lines* %7 to i8*
  %40 = bitcast %struct.symtabs_and_lines* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  br label %41

41:                                               ; preds = %32, %21
  %42 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %49 = load %struct.symtab_and_line*, %struct.symtab_and_line** %48, align 8
  %50 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %49, i64 0
  %51 = bitcast %struct.symtab_and_line* %8 to i8*
  %52 = bitcast %struct.symtab_and_line* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %7, i32 0, i32 1
  %54 = load %struct.symtab_and_line*, %struct.symtab_and_line** %53, align 8
  %55 = call i32 @xfree(%struct.symtab_and_line* %54)
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %47
  %62 = call i32 @resolve_sal_pc(%struct.symtab_and_line* %8)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @null_frame_id, align 4
  %67 = load i32, i32* @bp_until, align 4
  %68 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.breakpoint* @set_momentary_breakpoint(i32 %69, i32 %66, i32 %67)
  store %struct.breakpoint* %70, %struct.breakpoint** %10, align 8
  br label %78

71:                                               ; preds = %61
  %72 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %73 = call i32 @get_frame_id(%struct.frame_info* %72)
  %74 = load i32, i32* @bp_until, align 4
  %75 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.breakpoint* @set_momentary_breakpoint(i32 %76, i32 %73, i32 %74)
  store %struct.breakpoint* %77, %struct.breakpoint** %10, align 8
  br label %78

78:                                               ; preds = %71, %65
  %79 = load i64, i64* @event_loop_p, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = call i64 (...) @target_can_async_p()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.breakpoint*, %struct.breakpoint** %10, align 8
  %86 = call %struct.cleanup* @make_cleanup_delete_breakpoint(%struct.breakpoint* %85)
  store %struct.cleanup* %86, %struct.cleanup** %11, align 8
  br label %90

87:                                               ; preds = %81
  %88 = load %struct.breakpoint*, %struct.breakpoint** %10, align 8
  %89 = call %struct.cleanup* @make_exec_cleanup_delete_breakpoint(%struct.breakpoint* %88)
  store %struct.cleanup* %89, %struct.cleanup** %11, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i64, i64* @event_loop_p, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = call i64 (...) @target_can_async_p()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = call i64 @xmalloc(i32 16)
  %98 = inttoptr i64 %97 to %struct.continuation_arg*
  store %struct.continuation_arg* %98, %struct.continuation_arg** %12, align 8
  %99 = load %struct.continuation_arg*, %struct.continuation_arg** %12, align 8
  %100 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  %101 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %102 = load %struct.continuation_arg*, %struct.continuation_arg** %12, align 8
  %103 = getelementptr inbounds %struct.continuation_arg, %struct.continuation_arg* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store %struct.cleanup* %101, %struct.cleanup** %104, align 8
  %105 = load i32, i32* @until_break_command_continuation, align 4
  %106 = load %struct.continuation_arg*, %struct.continuation_arg** %12, align 8
  %107 = call i32 @add_continuation(i32 %105, %struct.continuation_arg* %106)
  br label %108

108:                                              ; preds = %96, %93, %90
  %109 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %110 = icmp ne %struct.frame_info* %109, null
  br i1 %110, label %111, label %139

111:                                              ; preds = %108
  %112 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %113 = call i32 @get_frame_pc(%struct.frame_info* %112)
  %114 = call i32 @find_pc_line(i32 %113, i32 0)
  %115 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %15, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = bitcast %struct.symtab_and_line* %8 to i8*
  %117 = bitcast %struct.symtab_and_line* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  %118 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %119 = call i32 @get_frame_pc(%struct.frame_info* %118)
  %120 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %122 = call i32 @get_frame_id(%struct.frame_info* %121)
  %123 = load i32, i32* @bp_until, align 4
  %124 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %8, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.breakpoint* @set_momentary_breakpoint(i32 %125, i32 %122, i32 %123)
  store %struct.breakpoint* %126, %struct.breakpoint** %10, align 8
  %127 = load i64, i64* @event_loop_p, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %111
  %130 = call i64 (...) @target_can_async_p()
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129, %111
  %133 = load %struct.breakpoint*, %struct.breakpoint** %10, align 8
  %134 = call %struct.cleanup* @make_cleanup_delete_breakpoint(%struct.breakpoint* %133)
  br label %138

135:                                              ; preds = %129
  %136 = load %struct.breakpoint*, %struct.breakpoint** %10, align 8
  %137 = call %struct.cleanup* @make_exec_cleanup_delete_breakpoint(%struct.breakpoint* %136)
  br label %138

138:                                              ; preds = %135, %132
  br label %139

139:                                              ; preds = %138, %108
  %140 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %141 = call i32 @proceed(i32 -1, i32 %140, i32 0)
  %142 = load i64, i64* @event_loop_p, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = call i64 (...) @target_can_async_p()
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144, %139
  %148 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %149 = call i32 @do_cleanups(%struct.cleanup* %148)
  br label %150

150:                                              ; preds = %147, %144
  ret void
}

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local { i32, %struct.symtab_and_line* } @decode_line_1(i8**, i32, %struct.symtab*, i32, i8***, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @xfree(%struct.symtab_and_line*) #1

declare dso_local i32 @resolve_sal_pc(%struct.symtab_and_line*) #1

declare dso_local %struct.breakpoint* @set_momentary_breakpoint(i32, i32, i32) #1

declare dso_local i32 @get_frame_id(%struct.frame_info*) #1

declare dso_local i64 @target_can_async_p(...) #1

declare dso_local %struct.cleanup* @make_cleanup_delete_breakpoint(%struct.breakpoint*) #1

declare dso_local %struct.cleanup* @make_exec_cleanup_delete_breakpoint(%struct.breakpoint*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @add_continuation(i32, %struct.continuation_arg*) #1

declare dso_local i32 @find_pc_line(i32, i32) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @proceed(i32, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
