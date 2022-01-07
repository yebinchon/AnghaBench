; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_inherit_stream_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_inherit_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inherit_stream = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @inherit_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inherit_stream_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.inherit_stream*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.inherit_stream*
  store %struct.inherit_stream* %6, %struct.inherit_stream** %3, align 8
  %7 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %8 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %11 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32* %9, i32** %12, align 8
  %13 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %14 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @atf_process_stream_init_inherit(i32* %15)
  %17 = call i32 @RE(i32 %16)
  %18 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %19 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %30 [
    i32 128, label %22
    i32 129, label %26
  ]

22:                                               ; preds = %1
  %23 = load i32, i32* @STDOUT_FILENO, align 4
  %24 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %25 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @STDERR_FILENO, align 4
  %28 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %29 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @UNREACHABLE, align 4
  store i8* null, i8** %4, align 8
  br label %32

32:                                               ; preds = %30, %26, %22
  %33 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %34 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dup(i32 %35)
  %37 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %38 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %40 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @ATF_REQUIRE(i32 %43)
  %45 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %46 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @close(i32 %47)
  %49 = icmp ne i32 %48, -1
  %50 = zext i1 %49 to i32
  %51 = call i32 @ATF_REQUIRE(i32 %50)
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* @O_WRONLY, align 4
  %54 = load i32, i32* @O_CREAT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @O_TRUNC, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @open(i8* %52, i32 %57, i32 420)
  %59 = load %struct.inherit_stream*, %struct.inherit_stream** %3, align 8
  %60 = getelementptr inbounds %struct.inherit_stream, %struct.inherit_stream* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ATF_REQUIRE_EQ(i32 %58, i32 %61)
  ret void
}

declare dso_local i32 @RE(i32) #1

declare dso_local i32 @atf_process_stream_init_inherit(i32*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
