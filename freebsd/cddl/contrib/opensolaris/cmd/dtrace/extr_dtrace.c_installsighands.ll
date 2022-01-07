; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_installsighands.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_installsighands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i64, i32 }

@intr = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIGINFO = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@siginfo = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @installsighands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @installsighands() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = alloca %struct.sigaction, align 8
  %3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  %4 = call i32 @sigemptyset(i32* %3)
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* @intr, align 8
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = load i32, i32* @SIGINT, align 4
  %9 = call i64 @sigaction(i32 %8, %struct.sigaction* null, %struct.sigaction* %2)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SIG_IGN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @SIGINT, align 4
  %18 = call i64 @sigaction(i32 %17, %struct.sigaction* %1, %struct.sigaction* null)
  br label %19

19:                                               ; preds = %16, %11, %0
  %20 = load i32, i32* @SIGTERM, align 4
  %21 = call i64 @sigaction(i32 %20, %struct.sigaction* null, %struct.sigaction* %2)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SIG_IGN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @SIGTERM, align 4
  %30 = call i64 @sigaction(i32 %29, %struct.sigaction* %1, %struct.sigaction* null)
  br label %31

31:                                               ; preds = %28, %23, %19
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
