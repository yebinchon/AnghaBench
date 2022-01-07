; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_flush_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_flush_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i32, i64, i32, i32* }

@lwp_list = common dso_local global %struct.lwp_info* null, align 8
@debug_lin_lwp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"FC: LP has pending status %06x\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@PTRACE_CONT = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"FC: Sent PTRACE_CONT, ret %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"FC: Wait finished; saved status is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @flush_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwp_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lwp_info* %0, %struct.lwp_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load %struct.lwp_info*, %struct.lwp_info** @lwp_list, align 8
  %17 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %18 = icmp eq %struct.lwp_info* %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %21 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %26 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @lin_lwp_thread_alive(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %102

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %19, %2
  %33 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %34 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %32
  %38 = load i64, i64* @debug_lin_lwp, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %42 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %47 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @WIFSTOPPED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %54 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @WSTOPSIG(i32 %55)
  %57 = call i64 @sigismember(i32* %52, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %61 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %51, %45
  br label %63

63:                                               ; preds = %62, %32
  br label %64

64:                                               ; preds = %100, %63
  %65 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %66 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @GET_LWP(i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i64 @lin_lwp_has_pending(i32 %68, i32* %7, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %64
  store i64 0, i64* @errno, align 8
  %73 = load i32, i32* @PTRACE_CONT, align 4
  %74 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %75 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @GET_LWP(i32 %76)
  %78 = call i32 @ptrace(i32 %73, i32 %77, i32 0, i32 0)
  store i32 %78, i32* %13, align 4
  %79 = load i64, i64* @debug_lin_lwp, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load i32, i32* @gdb_stderr, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i64, i64* @errno, align 8
  %85 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %81, %72
  %87 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %88 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @stop_wait_callback(%struct.lwp_info* %89, i32* %90)
  %92 = load i64, i64* @debug_lin_lwp, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i32, i32* @gdb_stderr, align 4
  %96 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %97 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i32, i8*, i32, ...) @fprintf_unfiltered(i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %86
  br label %64

101:                                              ; preds = %64
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %30
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @lin_lwp_thread_alive(i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i32 @WSTOPSIG(i32) #1

declare dso_local i64 @lin_lwp_has_pending(i32, i32*, i32*) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, ...) #1

declare dso_local i32 @stop_wait_callback(%struct.lwp_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
