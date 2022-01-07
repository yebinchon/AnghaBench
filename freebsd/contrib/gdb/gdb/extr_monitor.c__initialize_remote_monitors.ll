; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c__initialize_remote_monitors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c__initialize_remote_monitors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4
@hashmark = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [93 x i8] c"Set display of activity while downloading a file.\0AWhen enabled, a hashmark '#' is displayed.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@var_zinteger = common dso_local global i32 0, align 4
@monitor_debug_p = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [124 x i8] c"Set debugging of remote monitor communication.\0AWhen enabled, communication between GDB and the remote monitor\0Ais displayed.\00", align 1
@setdebuglist = common dso_local global i32 0, align 4
@showdebuglist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_remote_monitors() #0 {
  %1 = call i32 (...) @init_base_monitor_ops()
  %2 = load i32, i32* @no_class, align 4
  %3 = load i32, i32* @var_boolean, align 4
  %4 = call i32 @add_set_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* bitcast (i32* @hashmark to i8*), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  %5 = call i32 @add_show_from_set(i32 %4, i32* @showlist)
  %6 = load i32, i32* @no_class, align 4
  %7 = load i32, i32* @var_zinteger, align 4
  %8 = call i32 @add_set_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %6, i32 %7, i8* bitcast (i32* @monitor_debug_p to i8*), i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0), i32* @setdebuglist)
  %9 = call i32 @add_show_from_set(i32 %8, i32* @showdebuglist)
  ret void
}

declare dso_local i32 @init_base_monitor_ops(...) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
