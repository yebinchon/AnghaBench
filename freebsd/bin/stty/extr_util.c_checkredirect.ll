; ModuleID = '/home/carl/AnghaBench/freebsd/bin/stty/extr_util.c_checkredirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/stty/extr_util.c_checkredirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"stdout appears redirected, but stdin is the control descriptor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkredirect() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca %struct.stat, align 8
  %3 = load i32, i32* @STDOUT_FILENO, align 4
  %4 = call i64 @isatty(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %0
  %7 = load i32, i32* @STDERR_FILENO, align 4
  %8 = call i64 @isatty(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i32, i32* @STDOUT_FILENO, align 4
  %12 = call i32 @fstat(i32 %11, %struct.stat* %1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @STDERR_FILENO, align 4
  %16 = call i32 @fstat(i32 %15, %struct.stat* %2)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @warnx(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18, %14, %10, %6, %0
  ret void
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
