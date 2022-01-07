; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c__initialize_gnu_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c__initialize_gnu_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_server = common dso_local global i32 0, align 4
@gnu_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"gnu-debug\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4
@gnu_debug_flag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Set debugging output for the gnu backend.\00", align 1
@maintenancelist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_gnu_nat() #0 {
  %1 = call i32 (...) @getproc()
  store i32 %1, i32* @proc_server, align 4
  %2 = call i32 (...) @init_gnu_ops()
  %3 = call i32 @add_target(i32* @gnu_ops)
  %4 = call i32 (...) @add_task_commands()
  %5 = call i32 (...) @add_thread_commands()
  %6 = load i32, i32* @class_maintenance, align 4
  %7 = load i32, i32* @var_boolean, align 4
  %8 = call i32 @add_set_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i8* bitcast (i32* @gnu_debug_flag to i8*), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32* @maintenancelist)
  ret void
}

declare dso_local i32 @getproc(...) #1

declare dso_local i32 @init_gnu_ops(...) #1

declare dso_local i32 @add_target(i32*) #1

declare dso_local i32 @add_task_commands(...) #1

declare dso_local i32 @add_thread_commands(...) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
