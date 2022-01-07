; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_redirect_fd_stream_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_redirect_fd_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redirect_fd_stream = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @redirect_fd_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redirect_fd_stream_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.redirect_fd_stream*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.redirect_fd_stream*
  store %struct.redirect_fd_stream* %5, %struct.redirect_fd_stream** %3, align 8
  %6 = load %struct.redirect_fd_stream*, %struct.redirect_fd_stream** %3, align 8
  %7 = getelementptr inbounds %struct.redirect_fd_stream, %struct.redirect_fd_stream* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %30 [
    i32 128, label %10
    i32 129, label %20
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @O_WRONLY, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_TRUNC, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15, i32 420)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.redirect_fd_stream*, %struct.redirect_fd_stream** %3, align 8
  %19 = getelementptr inbounds %struct.redirect_fd_stream, %struct.redirect_fd_stream* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %32

20:                                               ; preds = %1
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = load i32, i32* @O_CREAT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @O_TRUNC, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 420)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.redirect_fd_stream*, %struct.redirect_fd_stream** %3, align 8
  %29 = getelementptr inbounds %struct.redirect_fd_stream, %struct.redirect_fd_stream* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @UNREACHABLE, align 4
  br label %32

32:                                               ; preds = %30, %20, %10
  %33 = load %struct.redirect_fd_stream*, %struct.redirect_fd_stream** %3, align 8
  %34 = getelementptr inbounds %struct.redirect_fd_stream, %struct.redirect_fd_stream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, -1
  %37 = zext i1 %36 to i32
  %38 = call i32 @ATF_REQUIRE(i32 %37)
  %39 = load %struct.redirect_fd_stream*, %struct.redirect_fd_stream** %3, align 8
  %40 = getelementptr inbounds %struct.redirect_fd_stream, %struct.redirect_fd_stream* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.redirect_fd_stream*, %struct.redirect_fd_stream** %3, align 8
  %43 = getelementptr inbounds %struct.redirect_fd_stream, %struct.redirect_fd_stream* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32* %41, i32** %44, align 8
  %45 = load %struct.redirect_fd_stream*, %struct.redirect_fd_stream** %3, align 8
  %46 = getelementptr inbounds %struct.redirect_fd_stream, %struct.redirect_fd_stream* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.redirect_fd_stream*, %struct.redirect_fd_stream** %3, align 8
  %49 = getelementptr inbounds %struct.redirect_fd_stream, %struct.redirect_fd_stream* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @atf_process_stream_init_redirect_fd(i32* %47, i32 %50)
  %52 = call i32 @RE(i32 %51)
  ret void
}

declare dso_local i8* @open(i8*, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @RE(i32) #1

declare dso_local i32 @atf_process_stream_init_redirect_fd(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
