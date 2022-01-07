; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__fprintf_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__fprintf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"# ========\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"# captured on: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"# ========\0A#\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_session__fprintf_info(%struct.perf_session* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %10 = icmp eq %struct.perf_session* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %36

15:                                               ; preds = %11
  %16 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %17 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fstat(i32 %18, %struct.stat* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %36

23:                                               ; preds = %15
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %28 = call i8* @ctime(i32* %27)
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @perf_header__fprintf_info(%struct.perf_session* %30, i32* %31, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %23, %22, %14
  ret void
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @perf_header__fprintf_info(%struct.perf_session*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
