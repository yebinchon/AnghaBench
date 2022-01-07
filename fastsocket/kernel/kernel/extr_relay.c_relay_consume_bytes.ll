; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_consume_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_consume_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rchan_buf*, i32)* @relay_consume_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relay_consume_bytes(%struct.rchan_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.rchan_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.rchan_buf* %0, %struct.rchan_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %7 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %11 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %14 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %12, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %21 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %24 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @relay_subbufs_consumed(%struct.TYPE_2__* %22, i32 %25, i32 1)
  %27 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %28 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %33 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @relay_subbufs_consumed(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
