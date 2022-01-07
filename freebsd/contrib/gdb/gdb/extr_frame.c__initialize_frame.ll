; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c__initialize_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c__initialize_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frame_cache_obstack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"backtrace\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@set_backtrace_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"Set backtrace specific variables.\0AConfigure backtrace variables such as the backtrace limit\00", align 1
@set_backtrace_cmdlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"set backtrace \00", align 1
@setlist = common dso_local global i32 0, align 4
@show_backtrace_cmd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [87 x i8] c"Show backtrace specific variables\0AShow backtrace variables such as the backtrace limit\00", align 1
@show_backtrace_cmdlist = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"show backtrace \00", align 1
@showlist = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"past-main\00", align 1
@class_obscure = common dso_local global i32 0, align 4
@backtrace_past_main = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [216 x i8] c"Set whether backtraces should continue past \22main\22.\0ANormally the caller of \22main\22 is not of interest, so GDB will terminate\0Athe backtrace at \22main\22.  Set this variable if you need to see the rest\0Aof the stack trace.\00", align 1
@.str.7 = private unnamed_addr constant [217 x i8] c"Show whether backtraces should continue past \22main\22.\0ANormally the caller of \22main\22 is not of interest, so GDB will terminate\0Athe backtrace at \22main\22.  Set this variable if you need to see the rest\0Aof the stack trace.\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@backtrace_limit = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [147 x i8] c"Set an upper bound on the number of backtrace levels.\0ANo more than the specified number of frames can be displayed or examined.\0AZero is unlimited.\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Show the upper bound on the number of backtrace levels.\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@var_zinteger = common dso_local global i32 0, align 4
@frame_debug = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [82 x i8] c"Set frame debugging.\0AWhen non-zero, frame specific internal debugging is enabled.\00", align 1
@setdebuglist = common dso_local global i32 0, align 4
@showdebuglist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_frame() #0 {
  %1 = call i32 @obstack_init(i32* @frame_cache_obstack)
  %2 = load i32, i32* @class_maintenance, align 4
  %3 = load i32, i32* @set_backtrace_cmd, align 4
  %4 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32* @set_backtrace_cmdlist, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @setlist)
  %5 = load i32, i32* @class_maintenance, align 4
  %6 = load i32, i32* @show_backtrace_cmd, align 4
  %7 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32* @show_backtrace_cmdlist, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* @showlist)
  %8 = load i32, i32* @class_obscure, align 4
  %9 = call i32 @add_setshow_boolean_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %8, i32* @backtrace_past_main, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([217 x i8], [217 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null, i32* @set_backtrace_cmdlist, i32* @show_backtrace_cmdlist)
  %10 = load i32, i32* @class_obscure, align 4
  %11 = call i32 @add_setshow_uinteger_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %10, i32* @backtrace_limit, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32* null, i32* null, i32* @set_backtrace_cmdlist, i32* @show_backtrace_cmdlist)
  %12 = load i32, i32* @class_maintenance, align 4
  %13 = load i32, i32* @var_zinteger, align 4
  %14 = call i32 @add_set_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %12, i32 %13, i32* @frame_debug, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0), i32* @setdebuglist)
  %15 = call i32 @add_show_from_set(i32 %14, i32* @showdebuglist)
  ret void
}

declare dso_local i32 @obstack_init(i32*) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_setshow_boolean_cmd(i8*, i32, i32*, i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @add_setshow_uinteger_cmd(i8*, i32, i32*, i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
