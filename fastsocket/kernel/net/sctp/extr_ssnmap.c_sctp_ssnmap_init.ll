; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ssnmap.c_sctp_ssnmap_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ssnmap.c_sctp_ssnmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ssnmap = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64*, i64 }
%struct.TYPE_3__ = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_ssnmap* (%struct.sctp_ssnmap*, i64, i64)* @sctp_ssnmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_ssnmap* @sctp_ssnmap_init(%struct.sctp_ssnmap* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sctp_ssnmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sctp_ssnmap* %0, %struct.sctp_ssnmap** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @sctp_ssnmap_size(i64 %8, i64 %9)
  %11 = call i32 @memset(%struct.sctp_ssnmap* %7, i32 0, i32 %10)
  %12 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_ssnmap, %struct.sctp_ssnmap* %12, i64 1
  %14 = bitcast %struct.sctp_ssnmap* %13 to i64*
  %15 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_ssnmap, %struct.sctp_ssnmap* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64* %14, i64** %17, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %4, align 8
  %20 = getelementptr inbounds %struct.sctp_ssnmap, %struct.sctp_ssnmap* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i64 %18, i64* %21, align 8
  %22 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_ssnmap, %struct.sctp_ssnmap* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %4, align 8
  %29 = getelementptr inbounds %struct.sctp_ssnmap, %struct.sctp_ssnmap* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64* %27, i64** %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %4, align 8
  %33 = getelementptr inbounds %struct.sctp_ssnmap, %struct.sctp_ssnmap* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 %31, i64* %34, align 8
  %35 = load %struct.sctp_ssnmap*, %struct.sctp_ssnmap** %4, align 8
  ret %struct.sctp_ssnmap* %35
}

declare dso_local i32 @memset(%struct.sctp_ssnmap*, i32, i32) #1

declare dso_local i32 @sctp_ssnmap_size(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
