; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_dprog_compile.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_dprog_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_Vflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"lockstat: vvvv D program vvvv\0A\00", align 1
@g_prog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"lockstat: ^^^^ D program ^^^^\0A\00", align 1
@g_dtp = common dso_local global i32 0, align 4
@DTRACE_PROBESPEC_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to compile program\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to enable probes\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"couldn't start tracing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dprog_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dprog_compile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @g_Vflag, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @g_prog, align 4
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fputs(i32 %8, i32 %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %5, %0
  %14 = load i32, i32* @g_dtp, align 4
  %15 = load i32, i32* @g_prog, align 4
  %16 = load i32, i32* @DTRACE_PROBESPEC_NAME, align 4
  %17 = call i32* @dtrace_program_strcompile(i32 %14, i32 %15, i32 %16, i32 0, i32 0, i32* null)
  store i32* %17, i32** %1, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @dfail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32, i32* @g_dtp, align 4
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @dtrace_program_exec(i32 %22, i32* %23, i32* %2)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @dfail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* @g_dtp, align 4
  %30 = call i64 @dtrace_go(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @dfail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32* @dtrace_program_strcompile(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dfail(i8*) #1

declare dso_local i32 @dtrace_program_exec(i32, i32*, i32*) #1

declare dso_local i64 @dtrace_go(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
