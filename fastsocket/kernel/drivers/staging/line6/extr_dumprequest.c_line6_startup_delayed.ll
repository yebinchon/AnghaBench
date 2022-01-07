; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_dumprequest.c_line6_startup_delayed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_dumprequest.c_line6_startup_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line6_dump_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { void (i64)*, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @line6_startup_delayed(%struct.line6_dump_request* %0, i32 %1, void (i64)* %2, i8* %3) #0 {
  %5 = alloca %struct.line6_dump_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i64)*, align 8
  %8 = alloca i8*, align 8
  store %struct.line6_dump_request* %0, %struct.line6_dump_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (i64)* %2, void (i64)** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = load %struct.line6_dump_request*, %struct.line6_dump_request** %5, align 8
  %16 = getelementptr inbounds %struct.line6_dump_request, %struct.line6_dump_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i64 %14, i64* %17, align 8
  %18 = load void (i64)*, void (i64)** %7, align 8
  %19 = load %struct.line6_dump_request*, %struct.line6_dump_request** %5, align 8
  %20 = getelementptr inbounds %struct.line6_dump_request, %struct.line6_dump_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store void (i64)* %18, void (i64)** %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.line6_dump_request*, %struct.line6_dump_request** %5, align 8
  %25 = getelementptr inbounds %struct.line6_dump_request, %struct.line6_dump_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i64 %23, i64* %26, align 8
  %27 = load %struct.line6_dump_request*, %struct.line6_dump_request** %5, align 8
  %28 = getelementptr inbounds %struct.line6_dump_request, %struct.line6_dump_request* %27, i32 0, i32 0
  %29 = call i32 @add_timer(%struct.TYPE_2__* %28)
  ret void
}

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
