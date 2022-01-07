; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_thread_takeover_sc_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_thread_takeover_sc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@THREAD_BASIC_INFO_COUNT = common dso_local global i32 0, align 4
@THREAD_BASIC_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Suspend count was %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @thread_takeover_sc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_takeover_sc_cmd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call %struct.proc* (...) @cur_thread()
  store %struct.proc* %10, %struct.proc** %5, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %7, align 8
  %11 = load i32, i32* @THREAD_BASIC_INFO_COUNT, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.proc*, %struct.proc** %5, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @THREAD_BASIC_INFO, align 4
  %16 = bitcast %struct.TYPE_3__** %7 to i32*
  %17 = call i64 @thread_info(i32 %14, i32 %15, i32* %16, i32* %8)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @safe_strerror(i64 %21)
  %23 = call i32 @error(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.proc*, %struct.proc** %5, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.proc*, %struct.proc** %5, align 8
  %34 = getelementptr inbounds %struct.proc, %struct.proc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, %6
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = call i32 (...) @mach_task_self()
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = ptrtoint %struct.TYPE_3__* %42 to i32
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @vm_deallocate(i32 %41, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %40, %37
  ret void
}

declare dso_local %struct.proc* @cur_thread(...) #1

declare dso_local i64 @thread_info(i32, i32, i32*, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @safe_strerror(i64) #1

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i32 @vm_deallocate(i32, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
