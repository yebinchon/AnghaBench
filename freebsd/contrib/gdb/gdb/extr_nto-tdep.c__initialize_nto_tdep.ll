; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-tdep.c__initialize_nto_tdep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-tdep.c__initialize_nto_tdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"nto-debug\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@nto_internal_debugging = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [151 x i8] c"Set QNX NTO internal debugging.\0AWhen non-zero, nto specific debug info is\0Adisplayed. Different information is displayed\0Afor different positive values.\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Show QNX NTO internal debugging.\0A\00", align 1
@setdebuglist = common dso_local global i32 0, align 4
@showdebuglist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"SIG45\00", align 1
@regset_core_fns = common dso_local global i32 0, align 4
@SIGPHOTON = common dso_local global i32 0, align 4
@SIGSELECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_nto_tdep() #0 {
  %1 = load i32, i32* @class_maintenance, align 4
  %2 = load i32, i32* @var_zinteger, align 4
  %3 = call i32 @add_setshow_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32* @nto_internal_debugging, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* @setdebuglist, i32* @showdebuglist)
  %4 = call i32 @target_signal_from_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @signal_stop_update(i32 %4, i32 0)
  %6 = call i32 @target_signal_from_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %7 = call i32 @signal_print_update(i32 %6, i32 0)
  %8 = call i32 @target_signal_from_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @signal_pass_update(i32 %8, i32 1)
  %10 = call i32 @add_core_fns(i32* @regset_core_fns)
  ret void
}

declare dso_local i32 @add_setshow_cmd(i8*, i32, i32, i32*, i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @signal_stop_update(i32, i32) #1

declare dso_local i32 @target_signal_from_name(i8*) #1

declare dso_local i32 @signal_print_update(i32, i32) #1

declare dso_local i32 @signal_pass_update(i32, i32) #1

declare dso_local i32 @add_core_fns(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
