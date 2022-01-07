; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_util.c_bmake_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_util.c_bmake_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { void (i32)*, i32, i32 }

@SA_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void (i32)* @bmake_signal(i32 %0, void (i32)* %1) #0 {
  %3 = alloca void (i32)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca void (i32)*, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %4, align 4
  store void (i32)* %1, void (i32)** %5, align 8
  %8 = load void (i32)*, void (i32)** %5, align 8
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store void (i32)* %8, void (i32)** %9, align 8
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  %11 = call i32 @sigemptyset(i32* %10)
  %12 = load i32, i32* @SA_RESTART, align 4
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @sigaction(i32 %14, %struct.sigaction* %6, %struct.sigaction* %7)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store void (i32)* @SIG_ERR, void (i32)** %3, align 8
  br label %21

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  %20 = load void (i32)*, void (i32)** %19, align 8
  store void (i32)* %20, void (i32)** %3, align 8
  br label %21

21:                                               ; preds = %18, %17
  %22 = load void (i32)*, void (i32)** %3, align 8
  ret void (i32)* %22
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local void @SIG_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
