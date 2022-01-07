; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pow.h_cvmx_pow_get_current_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pow.h_cvmx_pow_get_current_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@CVMX_IO_SEG = common dso_local global i32 0, align 4
@CVMX_OCT_DID_TAG_TAG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @cvmx_pow_get_current_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_pow_get_current_tag(%struct.TYPE_11__* noalias sret %0) #0 {
  %2 = alloca %struct.TYPE_13__, align 8
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @CVMX_IO_SEG, align 4
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* @CVMX_OCT_DID_TAG_TAG1, align 4
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = call i32 (...) @cvmx_get_core_num()
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @cvmx_read_csr(i64 %19)
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_read_csr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
