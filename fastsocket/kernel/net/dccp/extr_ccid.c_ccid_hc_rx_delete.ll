; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ccid.c_ccid_hc_rx_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ccid.c_ccid_hc_rx_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.sock*)* }
%struct.sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccid_hc_rx_delete(%struct.ccid* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.ccid*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.ccid* %0, %struct.ccid** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %5 = load %struct.ccid*, %struct.ccid** %3, align 8
  %6 = icmp ne %struct.ccid* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = load %struct.ccid*, %struct.ccid** %3, align 8
  %9 = getelementptr inbounds %struct.ccid, %struct.ccid* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %11, align 8
  %13 = icmp ne i32 (%struct.sock*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.ccid*, %struct.ccid** %3, align 8
  %16 = getelementptr inbounds %struct.ccid, %struct.ccid* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %18, align 8
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call i32 %19(%struct.sock* %20)
  br label %22

22:                                               ; preds = %14, %7
  %23 = load %struct.ccid*, %struct.ccid** %3, align 8
  %24 = getelementptr inbounds %struct.ccid, %struct.ccid* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ccid*, %struct.ccid** %3, align 8
  %29 = call i32 @kmem_cache_free(i32 %27, %struct.ccid* %28)
  br label %30

30:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.ccid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
