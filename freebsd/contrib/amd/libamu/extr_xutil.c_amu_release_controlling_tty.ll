; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_amu_release_controlling_tty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_amu_release_controlling_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not open /dev/null for rw: %m\00", align 1
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to release controlling tty\00", align 1
@ENOTTY = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@TIOCNOTTY = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amu_release_controlling_tty() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @O_RDWR, align 4
  %3 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @XLOG_WARNING, align 4
  %8 = call i32 @plog(i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %27

9:                                                ; preds = %0
  %10 = load i32, i32* @stdin, align 4
  %11 = call i32 @fflush(i32 %10)
  %12 = call i32 @close(i32 0)
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @dup2(i32 %13, i32 0)
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @fflush(i32 %15)
  %17 = call i32 @close(i32 1)
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @dup2(i32 %18, i32 1)
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fflush(i32 %20)
  %22 = call i32 @close(i32 2)
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @dup2(i32 %23, i32 2)
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @close(i32 %25)
  br label %27

27:                                               ; preds = %9, %6
  %28 = load i32, i32* @XLOG_ERROR, align 4
  %29 = call i32 @plog(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @plog(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
