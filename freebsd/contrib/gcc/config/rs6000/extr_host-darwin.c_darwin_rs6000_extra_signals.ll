; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_host-darwin.c_darwin_rs6000_extra_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_host-darwin.c_darwin_rs6000_extra_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@SIGSTKSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"While setting up signal stack: %m\00", align 1
@SA_ONSTACK = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@segv_handler = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"While setting up signal handler: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @darwin_rs6000_extra_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darwin_rs6000_extra_signals() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = load i32, i32* @SIGSTKSZ, align 4
  %4 = call i32 @xmalloc(i32 %3)
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @SIGSTKSZ, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = call i64 @sigaltstack(%struct.TYPE_3__* %2, i32* null)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @fatal_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  %15 = call i32 @sigemptyset(i32* %14)
  %16 = load i32, i32* @SA_ONSTACK, align 4
  %17 = load i32, i32* @SA_SIGINFO, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @segv_handler, align 4
  %21 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @SIGSEGV, align 4
  %23 = call i64 @sigaction(i32 %22, %struct.sigaction* %1, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = call i32 @fatal_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %13
  ret void
}

declare dso_local i32 @xmalloc(i32) #1

declare dso_local i64 @sigaltstack(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @fatal_error(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
