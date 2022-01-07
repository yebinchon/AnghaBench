; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_buf_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_buf_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @relay_buf_full(%struct.rchan_buf* %0) #0 {
  %2 = alloca %struct.rchan_buf*, align 8
  %3 = alloca i64, align 8
  store %struct.rchan_buf* %0, %struct.rchan_buf** %2, align 8
  %4 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %5 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %8 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.rchan_buf*, %struct.rchan_buf** %2, align 8
  %13 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %11, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
