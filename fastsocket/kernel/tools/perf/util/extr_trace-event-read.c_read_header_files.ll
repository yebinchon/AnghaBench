; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_read_header_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_read_header_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"header_page\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"did not read header page\00", align 1
@header_page_size_size = common dso_local global i32 0, align 4
@long_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"header_event\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"did not read header event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pevent*)* @read_header_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_header_files(%struct.pevent* %0) #0 {
  %2 = alloca %struct.pevent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.pevent* %0, %struct.pevent** %2, align 8
  %7 = load i32, i32* @BUFSIZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = call i32 @read_or_die(i8* %10, i64 12)
  %12 = call i64 @memcmp(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 12)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.pevent*, %struct.pevent** %2, align 8
  %18 = call i64 @read8(%struct.pevent* %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @skip(i64 %19)
  %21 = load i32, i32* @header_page_size_size, align 4
  store i32 %21, i32* @long_size, align 4
  %22 = call i32 @read_or_die(i8* %10, i64 13)
  %23 = call i64 @memcmp(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 13)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %16
  %28 = load %struct.pevent*, %struct.pevent** %2, align 8
  %29 = call i64 @read8(%struct.pevent* %28)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i8* @malloc_or_die(i64 %30)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @read_or_die(i8* %32, i64 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %37)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_or_die(i8*, i64) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i64 @read8(%struct.pevent*) #2

declare dso_local i32 @skip(i64) #2

declare dso_local i8* @malloc_or_die(i64) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
