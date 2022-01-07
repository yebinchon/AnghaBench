; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_display_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_display_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }
%struct.termios = type { i32, i64* }
%struct.perf_top = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @display_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @display_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pollfd, align 4
  %4 = alloca %struct.termios, align 8
  %5 = alloca %struct.termios, align 8
  %6 = alloca %struct.perf_top*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 0
  %10 = load i32, i32* @POLLIN, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.perf_top*
  store %struct.perf_top* %13, %struct.perf_top** %6, align 8
  %14 = call i32 @tcgetattr(i32 0, %struct.termios* %5)
  %15 = bitcast %struct.termios* %4 to i8*
  %16 = bitcast %struct.termios* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = load i32, i32* @ICANON, align 4
  %18 = load i32, i32* @ECHO, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @VMIN, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @VTIME, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 0, i64* %31, align 8
  %32 = call i32 (...) @pthread__unblock_sigwinch()
  br label %33

33:                                               ; preds = %55, %1
  %34 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %35 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1000
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @TCSANOW, align 4
  %39 = call i32 @tcsetattr(i32 0, i32 %38, %struct.termios* %4)
  %40 = load i32, i32* @stdin, align 4
  %41 = call i32 @getc(i32 %40)
  br label %42

42:                                               ; preds = %33, %47, %52
  %43 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %44 = call i32 @perf_top__print_sym_table(%struct.perf_top* %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @poll(%struct.pollfd* %3, i32 1, i32 %45)
  switch i32 %46, label %54 [
    i32 0, label %47
    i32 -1, label %48
  ]

47:                                               ; preds = %42
  br label %42

48:                                               ; preds = %42
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @EINTR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %42

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %42, %53
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* @stdin, align 4
  %57 = call i32 @getc(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @TCSAFLUSH, align 4
  %59 = call i32 @tcsetattr(i32 0, i32 %58, %struct.termios* %5)
  %60 = load %struct.perf_top*, %struct.perf_top** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @perf_top__handle_keypress(%struct.perf_top* %60, i32 %61)
  br label %33
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pthread__unblock_sigwinch(...) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @perf_top__print_sym_table(%struct.perf_top*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @perf_top__handle_keypress(%struct.perf_top*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
