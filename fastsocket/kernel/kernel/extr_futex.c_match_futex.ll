; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_match_futex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_match_futex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.futex_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.futex_key*, %union.futex_key*)* @match_futex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_futex(%union.futex_key* %0, %union.futex_key* %1) #0 {
  %3 = alloca %union.futex_key*, align 8
  %4 = alloca %union.futex_key*, align 8
  store %union.futex_key* %0, %union.futex_key** %3, align 8
  store %union.futex_key* %1, %union.futex_key** %4, align 8
  %5 = load %union.futex_key*, %union.futex_key** %3, align 8
  %6 = icmp ne %union.futex_key* %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = load %union.futex_key*, %union.futex_key** %4, align 8
  %9 = icmp ne %union.futex_key* %8, null
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = load %union.futex_key*, %union.futex_key** %3, align 8
  %12 = bitcast %union.futex_key* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %union.futex_key*, %union.futex_key** %4, align 8
  %16 = bitcast %union.futex_key* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %10
  %21 = load %union.futex_key*, %union.futex_key** %3, align 8
  %22 = bitcast %union.futex_key* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %union.futex_key*, %union.futex_key** %4, align 8
  %26 = bitcast %union.futex_key* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %20
  %31 = load %union.futex_key*, %union.futex_key** %3, align 8
  %32 = bitcast %union.futex_key* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %union.futex_key*, %union.futex_key** %4, align 8
  %36 = bitcast %union.futex_key* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br label %40

40:                                               ; preds = %30, %20, %10, %7, %2
  %41 = phi i1 [ false, %20 ], [ false, %10 ], [ false, %7 ], [ false, %2 ], [ %39, %30 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
