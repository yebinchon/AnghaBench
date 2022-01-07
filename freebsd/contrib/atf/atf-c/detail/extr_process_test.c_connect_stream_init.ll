; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_connect_stream_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_connect_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connect_stream = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @connect_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_stream_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.connect_stream*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.connect_stream*
  store %struct.connect_stream* %6, %struct.connect_stream** %3, align 8
  %7 = load %struct.connect_stream*, %struct.connect_stream** %3, align 8
  %8 = getelementptr inbounds %struct.connect_stream, %struct.connect_stream* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %33 [
    i32 128, label %11
    i32 129, label %22
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @O_WRONLY, align 4
  %14 = load i32, i32* @O_CREAT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_TRUNC, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17, i32 420)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.connect_stream*, %struct.connect_stream** %3, align 8
  %21 = getelementptr inbounds %struct.connect_stream, %struct.connect_stream* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %35

22:                                               ; preds = %1
  %23 = load i32, i32* @STDERR_FILENO, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @O_WRONLY, align 4
  %25 = load i32, i32* @O_CREAT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @O_TRUNC, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 420)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.connect_stream*, %struct.connect_stream** %3, align 8
  %32 = getelementptr inbounds %struct.connect_stream, %struct.connect_stream* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @UNREACHABLE, align 4
  store i32 -1, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %22, %11
  %36 = load %struct.connect_stream*, %struct.connect_stream** %3, align 8
  %37 = getelementptr inbounds %struct.connect_stream, %struct.connect_stream* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, -1
  %40 = zext i1 %39 to i32
  %41 = call i32 @ATF_REQUIRE(i32 %40)
  %42 = load %struct.connect_stream*, %struct.connect_stream** %3, align 8
  %43 = getelementptr inbounds %struct.connect_stream, %struct.connect_stream* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.connect_stream*, %struct.connect_stream** %3, align 8
  %46 = getelementptr inbounds %struct.connect_stream, %struct.connect_stream* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32* %44, i32** %47, align 8
  %48 = load %struct.connect_stream*, %struct.connect_stream** %3, align 8
  %49 = getelementptr inbounds %struct.connect_stream, %struct.connect_stream* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.connect_stream*, %struct.connect_stream** %3, align 8
  %53 = getelementptr inbounds %struct.connect_stream, %struct.connect_stream* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @atf_process_stream_init_connect(i32* %50, i32 %51, i32 %54)
  %56 = call i32 @RE(i32 %55)
  ret void
}

declare dso_local i8* @open(i8*, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @RE(i32) #1

declare dso_local i32 @atf_process_stream_init_connect(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
