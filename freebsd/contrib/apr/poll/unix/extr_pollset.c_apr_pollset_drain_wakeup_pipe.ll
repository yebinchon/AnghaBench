; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/poll/unix/extr_pollset.c_apr_pollset_drain_wakeup_pipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/poll/unix/extr_pollset.c_apr_pollset_drain_wakeup_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@APR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apr_pollset_drain_wakeup_pipe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 512, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %12 = call i64 @apr_file_read(i32 %10, i8* %11, i32* %4)
  %13 = load i64, i64* @APR_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 512
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %21

20:                                               ; preds = %15
  br label %5

21:                                               ; preds = %19, %5
  ret void
}

declare dso_local i64 @apr_file_read(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
