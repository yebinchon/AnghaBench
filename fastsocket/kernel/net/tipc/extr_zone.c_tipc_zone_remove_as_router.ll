; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_zone.c_tipc_zone_remove_as_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_zone.c_tipc_zone_remove_as_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._zone = type { i64* }

@tipc_max_clusters = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_zone_remove_as_router(%struct._zone* %0, i64 %1) #0 {
  %3 = alloca %struct._zone*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct._zone* %0, %struct._zone** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %5, align 8
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @tipc_max_clusters, align 8
  %9 = icmp ule i64 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load %struct._zone*, %struct._zone** %3, align 8
  %12 = getelementptr inbounds %struct._zone, %struct._zone* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = load %struct._zone*, %struct._zone** %3, align 8
  %20 = getelementptr inbounds %struct._zone, %struct._zone* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @tipc_cltr_remove_as_router(i64 %24, i64 %25)
  br label %27

27:                                               ; preds = %18, %10
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %6

31:                                               ; preds = %6
  ret void
}

declare dso_local i32 @tipc_cltr_remove_as_router(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
