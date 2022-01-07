; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/plockstat/extr_plockstat.c_dprog_compile.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/plockstat/extr_plockstat.c_dprog_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_opt_V = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: vvvv D program vvvv\0A\00", align 1
@g_pname = common dso_local global i8* null, align 8
@g_prog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: ^^^^ D program ^^^^\0A\00", align 1
@g_dtp = common dso_local global i32 0, align 4
@DTRACE_PROBESPEC_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to compile program\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to enable probes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dprog_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dprog_compile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @g_opt_V, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i32, i32* @stderr, align 4
  %7 = load i8*, i8** @g_pname, align 8
  %8 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @g_prog, align 4
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fputs(i32 %9, i32 %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** @g_pname, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %5, %0
  %16 = load i32, i32* @g_dtp, align 4
  %17 = load i32, i32* @g_prog, align 4
  %18 = load i32, i32* @DTRACE_PROBESPEC_NAME, align 4
  %19 = call i32* @dtrace_program_strcompile(i32 %16, i32 %17, i32 %18, i32 0, i32 0, i32* null)
  store i32* %19, i32** %1, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @dfatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i32, i32* @g_dtp, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @dtrace_program_exec(i32 %24, i32* %25, i32* %2)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @dfatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32* @dtrace_program_strcompile(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dfatal(i8*) #1

declare dso_local i32 @dtrace_program_exec(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
