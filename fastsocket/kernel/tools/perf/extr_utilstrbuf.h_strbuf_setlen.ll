; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_utilstrbuf.h_strbuf_setlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_utilstrbuf.h_strbuf_setlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i64)* @strbuf_setlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strbuf_setlen(%struct.strbuf* %0, i64 %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %6 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %11 = call i32 @strbuf_grow(%struct.strbuf* %10, i32 0)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 0, i8* %27, align 1
  ret void
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
