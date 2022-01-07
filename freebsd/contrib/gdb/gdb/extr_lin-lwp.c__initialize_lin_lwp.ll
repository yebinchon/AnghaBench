; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c__initialize_lin_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c__initialize_lin_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }
%struct.sigaction = type { i64, i32, i32 }

@lin_lwp_ops = common dso_local global %struct.target_ops zeroinitializer, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@normal_mask = common dso_local global i32 0, align 4
@sigchld_handler = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@suspend_mask = common dso_local global i32 0, align 4
@blocked_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"lin-lwp\00", align 1
@no_class = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@debug_lin_lwp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Set debugging of GNU/Linux lwp module.\0AEnables printf debugging output.\0A\00", align 1
@setdebuglist = common dso_local global i32 0, align 4
@showdebuglist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_lin_lwp() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = call i32 (...) @init_lin_lwp_ops()
  %3 = call i32 @add_target(%struct.target_ops* @lin_lwp_ops)
  call void @thread_db_init(%struct.target_ops* @lin_lwp_ops)
  %4 = load i32, i32* @SIG_SETMASK, align 4
  %5 = call i32 @sigprocmask(i32 %4, i32* null, i32* @normal_mask)
  %6 = load i32, i32* @sigchld_handler, align 4
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %9 = call i32 @sigemptyset(i32* %8)
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @SIGCHLD, align 4
  %12 = call i32 @sigaction(i32 %11, %struct.sigaction* %1, i32* null)
  %13 = load i32, i32* @SIG_SETMASK, align 4
  %14 = call i32 @sigprocmask(i32 %13, i32* null, i32* @suspend_mask)
  %15 = load i32, i32* @SIGCHLD, align 4
  %16 = call i32 @sigdelset(i32* @suspend_mask, i32 %15)
  %17 = call i32 @sigemptyset(i32* @blocked_mask)
  %18 = load i32, i32* @no_class, align 4
  %19 = load i32, i32* @var_zinteger, align 4
  %20 = call i32 @add_set_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i8* bitcast (i32* @debug_lin_lwp to i8*), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32* @setdebuglist)
  %21 = call i32 @add_show_from_set(i32 %20, i32* @showdebuglist)
  ret void
}

declare dso_local i32 @init_lin_lwp_ops(...) #1

declare dso_local i32 @add_target(%struct.target_ops*) #1

declare dso_local void @thread_db_init(%struct.target_ops*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
