; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/threadproc/unix/extr_signals.c_apr_signal_description_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/threadproc/unix/extr_signals.c_apr_signal_description_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_NUMSIG = common dso_local global i32 0, align 4
@signal_description = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [24 x i8] c"unknown signal (number)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @apr_signal_description_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @APR_NUMSIG, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i8**, i8*** @signal_description, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  br label %16

15:                                               ; preds = %5, %1
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i8* [ %14, %9 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %15 ]
  ret i8* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
