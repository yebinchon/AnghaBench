; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_file_header__read_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_file_header__read_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pipe_file_header = type { i32, i32 }
%struct.perf_header = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"endian/magic failed\0A\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_pipe_file_header*, %struct.perf_header*, i32, i32)* @perf_file_header__read_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_file_header__read_pipe(%struct.perf_pipe_file_header* %0, %struct.perf_header* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_pipe_file_header*, align 8
  %7 = alloca %struct.perf_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_pipe_file_header* %0, %struct.perf_pipe_file_header** %6, align 8
  store %struct.perf_header* %1, %struct.perf_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %13 = call i32 @readn(i32 %11, %struct.perf_pipe_file_header* %12, i32 8)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %51

17:                                               ; preds = %4
  %18 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %19 = getelementptr inbounds %struct.perf_pipe_file_header, %struct.perf_pipe_file_header* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %22 = getelementptr inbounds %struct.perf_pipe_file_header, %struct.perf_pipe_file_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.perf_header*, %struct.perf_header** %7, align 8
  %25 = call i64 @check_magic_endian(i32 %20, i32 %23, i32 1, %struct.perf_header* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %51

29:                                               ; preds = %17
  %30 = load %struct.perf_header*, %struct.perf_header** %7, align 8
  %31 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %36 = getelementptr inbounds %struct.perf_pipe_file_header, %struct.perf_pipe_file_header* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bswap_64(i32 %37)
  %39 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %40 = getelementptr inbounds %struct.perf_pipe_file_header, %struct.perf_pipe_file_header* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* @STDOUT_FILENO, align 4
  %46 = load %struct.perf_pipe_file_header*, %struct.perf_pipe_file_header** %6, align 8
  %47 = call i64 @do_write(i32 %45, %struct.perf_pipe_file_header* %46, i32 8)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %51

50:                                               ; preds = %44, %41
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %49, %27, %16
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @readn(i32, %struct.perf_pipe_file_header*, i32) #1

declare dso_local i64 @check_magic_endian(i32, i32, i32, %struct.perf_header*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @bswap_64(i32) #1

declare dso_local i64 @do_write(i32, %struct.perf_pipe_file_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
