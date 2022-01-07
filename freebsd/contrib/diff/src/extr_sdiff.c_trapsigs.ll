; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_trapsigs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_trapsigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NUM_SIGS = common dso_local global i32 0, align 4
@sigs = common dso_local global i32* null, align 8
@SIG_IGN = common dso_local global i64 0, align 8
@initial_action = common dso_local global i32* null, align 8
@catchsig = common dso_local global i32 0, align 4
@sigs_trapped = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i64 0, align 8
@catchaction = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @trapsigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trapsigs() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %31, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @NUM_SIGS, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  %7 = load i32*, i32** @sigs, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* @SIG_IGN, align 8
  %13 = call i32 @signal(i32 %11, i64 %12)
  %14 = load i32*, i32** @initial_action, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @initial_handler(i32 %18)
  %20 = load i64, i64* @SIG_IGN, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load i32*, i32** @sigs, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @catchsig, align 4
  %29 = call i32 @signal_handler(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %6
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %2

34:                                               ; preds = %2
  store i32 1, i32* @sigs_trapped, align 4
  ret void
}

declare dso_local i32 @signal(i32, i64) #1

declare dso_local i64 @initial_handler(i32) #1

declare dso_local i32 @signal_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
