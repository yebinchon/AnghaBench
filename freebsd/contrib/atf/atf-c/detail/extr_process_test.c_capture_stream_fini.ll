; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_capture_stream_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_capture_stream_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capture_stream = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"stdout: msg\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stderr: msg\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @capture_stream_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capture_stream_fini(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.capture_stream*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.capture_stream*
  store %struct.capture_stream* %5, %struct.capture_stream** %3, align 8
  %6 = load %struct.capture_stream*, %struct.capture_stream** %3, align 8
  %7 = getelementptr inbounds %struct.capture_stream, %struct.capture_stream* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %38 [
    i32 128, label %10
    i32 129, label %24
  ]

10:                                               ; preds = %1
  %11 = load %struct.capture_stream*, %struct.capture_stream** %3, align 8
  %12 = getelementptr inbounds %struct.capture_stream, %struct.capture_stream* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @atf_utils_grep_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @ATF_CHECK(i32 %14)
  %16 = load %struct.capture_stream*, %struct.capture_stream** %3, align 8
  %17 = getelementptr inbounds %struct.capture_stream, %struct.capture_stream* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @atf_utils_grep_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @ATF_CHECK(i32 %22)
  br label %40

24:                                               ; preds = %1
  %25 = load %struct.capture_stream*, %struct.capture_stream** %3, align 8
  %26 = getelementptr inbounds %struct.capture_stream, %struct.capture_stream* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @atf_utils_grep_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @ATF_CHECK(i32 %31)
  %33 = load %struct.capture_stream*, %struct.capture_stream** %3, align 8
  %34 = getelementptr inbounds %struct.capture_stream, %struct.capture_stream* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @atf_utils_grep_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @ATF_CHECK(i32 %36)
  br label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @UNREACHABLE, align 4
  br label %40

40:                                               ; preds = %38, %24, %10
  %41 = load %struct.capture_stream*, %struct.capture_stream** %3, align 8
  %42 = getelementptr inbounds %struct.capture_stream, %struct.capture_stream* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @free(i32 %43)
  %45 = load %struct.capture_stream*, %struct.capture_stream** %3, align 8
  %46 = getelementptr inbounds %struct.capture_stream, %struct.capture_stream* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @atf_process_stream_fini(i32* %47)
  ret void
}

declare dso_local i32 @ATF_CHECK(i32) #1

declare dso_local i32 @atf_utils_grep_string(i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @atf_process_stream_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
