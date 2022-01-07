; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-record.c_perf_record__exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-record.c_perf_record__exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_record = type { i32, %struct.TYPE_7__*, i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @perf_record__exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_record__exit(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_record*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.perf_record*
  store %struct.perf_record* %7, %struct.perf_record** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %57

11:                                               ; preds = %2
  %12 = load %struct.perf_record*, %struct.perf_record** %5, align 8
  %13 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %11
  %18 = load %struct.perf_record*, %struct.perf_record** %5, align 8
  %19 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.perf_record*, %struct.perf_record** %5, align 8
  %22 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %20
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load %struct.perf_record*, %struct.perf_record** %5, align 8
  %31 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %17
  %35 = load %struct.perf_record*, %struct.perf_record** %5, align 8
  %36 = call i32 @process_buildids(%struct.perf_record* %35)
  br label %37

37:                                               ; preds = %34, %17
  %38 = load %struct.perf_record*, %struct.perf_record** %5, align 8
  %39 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.perf_record*, %struct.perf_record** %5, align 8
  %42 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.perf_record*, %struct.perf_record** %5, align 8
  %45 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @perf_session__write_header(%struct.TYPE_7__* %40, i32 %43, i32 %46, i32 1)
  %48 = load %struct.perf_record*, %struct.perf_record** %5, align 8
  %49 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @perf_session__delete(%struct.TYPE_7__* %50)
  %52 = load %struct.perf_record*, %struct.perf_record** %5, align 8
  %53 = getelementptr inbounds %struct.perf_record, %struct.perf_record* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @perf_evlist__delete(i32 %54)
  %56 = call i32 (...) @symbol__exit()
  br label %57

57:                                               ; preds = %10, %37, %11
  ret void
}

declare dso_local i32 @process_buildids(%struct.perf_record*) #1

declare dso_local i32 @perf_session__write_header(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @perf_session__delete(%struct.TYPE_7__*) #1

declare dso_local i32 @perf_evlist__delete(i32) #1

declare dso_local i32 @symbol__exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
