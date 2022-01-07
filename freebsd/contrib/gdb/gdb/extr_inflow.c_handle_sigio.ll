; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_handle_sigio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_handle_sigio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGIO = common dso_local global i32 0, align 4
@target_activity_fd = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handle_sigio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sigio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @SIGIO, align 4
  %6 = call i32 @signal(i32 %5, void (i32)* @handle_sigio)
  %7 = call i32 @FD_ZERO(i32* %4)
  %8 = load i64, i64* @target_activity_fd, align 8
  %9 = call i32 @FD_SET(i64 %8, i32* %4)
  %10 = load i64, i64* @target_activity_fd, align 8
  %11 = add nsw i64 %10, 1
  %12 = call i32 @select(i64 %11, i32* %4, i32* null, i32* null, i32* null)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i64, i64* @target_activity_fd, align 8
  %17 = call i64 @FD_ISSET(i64 %16, i32* %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = call i64 (...) @target_activity_function()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @inferior_ptid, align 4
  %24 = call i32 @PIDGET(i32 %23)
  %25 = load i32, i32* @SIGINT, align 4
  %26 = call i32 @kill(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  br label %28

28:                                               ; preds = %27, %15, %1
  ret void
}

declare dso_local i32 @signal(i32, void (i32)*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i64 @target_activity_function(...) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
