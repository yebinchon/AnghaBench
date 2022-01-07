; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_coredump.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_coredump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }
%struct.rlimit = type { i8*, i8* }

@__const.dt_coredump.msg = private unnamed_addr constant [39 x i8] c"libdtrace DEBUG: [ forcing coredump ]\0A\00", align 16
@STDERR_FILENO = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i8* null, align 8
@RLIMIT_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dt_coredump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_coredump() #0 {
  %1 = alloca [39 x i8], align 16
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca %struct.rlimit, align 8
  %4 = bitcast [39 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([39 x i8], [39 x i8]* @__const.dt_coredump.msg, i32 0, i32 0), i64 39, i1 false)
  %5 = load i32, i32* @STDERR_FILENO, align 4
  %6 = getelementptr inbounds [39 x i8], [39 x i8]* %1, i64 0, i64 0
  %7 = call i32 @write(i32 %5, i8* %6, i32 38)
  %8 = load i32, i32* @SIG_DFL, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %12 = call i32 @sigemptyset(i32* %11)
  %13 = load i32, i32* @SIGABRT, align 4
  %14 = call i32 @sigaction(i32 %13, %struct.sigaction* %2, i32* null)
  %15 = load i8*, i8** @RLIM_INFINITY, align 8
  %16 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @RLIM_INFINITY, align 8
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @RLIMIT_CORE, align 4
  %20 = call i32 @setrlimit(i32 %19, %struct.rlimit* %3)
  %21 = call i32 (...) @abort() #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
