; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_fetch_mmaped_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_fetch_mmaped_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.perf_session = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.perf_event* (%struct.perf_session*, i32, i64, i8*)* @fetch_mmaped_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.perf_event* @fetch_mmaped_event(%struct.perf_session* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %union.perf_event*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 4
  %14 = load i64, i64* %8, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %union.perf_event* null, %union.perf_event** %5, align 8
  br label %45

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = bitcast i8* %21 to %union.perf_event*
  store %union.perf_event* %22, %union.perf_event** %10, align 8
  %23 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %24 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load %union.perf_event*, %union.perf_event** %10, align 8
  %30 = bitcast %union.perf_event* %29 to %struct.TYPE_4__*
  %31 = call i32 @perf_event_header__bswap(%struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %28, %17
  %33 = load i32, i32* %7, align 4
  %34 = load %union.perf_event*, %union.perf_event** %10, align 8
  %35 = bitcast %union.perf_event* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %33, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store %union.perf_event* null, %union.perf_event** %5, align 8
  br label %45

43:                                               ; preds = %32
  %44 = load %union.perf_event*, %union.perf_event** %10, align 8
  store %union.perf_event* %44, %union.perf_event** %5, align 8
  br label %45

45:                                               ; preds = %43, %42, %16
  %46 = load %union.perf_event*, %union.perf_event** %5, align 8
  ret %union.perf_event* %46
}

declare dso_local i32 @perf_event_header__bswap(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
