; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_event__comm_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_event__comm_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, i32)* @perf_event__comm_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event__comm_swap(%union.perf_event* %0, i32 %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %union.perf_event*, %union.perf_event** %3, align 8
  %7 = bitcast %union.perf_event* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @bswap_32(i8* %9)
  %11 = load %union.perf_event*, %union.perf_event** %3, align 8
  %12 = bitcast %union.perf_event* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i8* %10, i8** %13, align 8
  %14 = load %union.perf_event*, %union.perf_event** %3, align 8
  %15 = bitcast %union.perf_event* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @bswap_32(i8* %17)
  %19 = load %union.perf_event*, %union.perf_event** %3, align 8
  %20 = bitcast %union.perf_event* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %union.perf_event*, %union.perf_event** %3, align 8
  %26 = bitcast %union.perf_event* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %30, 1
  %32 = call i32 @PERF_ALIGN(i64 %31, i32 4)
  %33 = load i8*, i8** %5, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr i8, i8* %33, i64 %34
  store i8* %35, i8** %5, align 8
  %36 = load %union.perf_event*, %union.perf_event** %3, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @swap_sample_id_all(%union.perf_event* %36, i8* %37)
  br label %39

39:                                               ; preds = %24, %2
  ret void
}

declare dso_local i8* @bswap_32(i8*) #1

declare dso_local i32 @PERF_ALIGN(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @swap_sample_id_all(%union.perf_event*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
