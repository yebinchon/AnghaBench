; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atrtr_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atrtr_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_route = type { i32, %struct.atalk_route*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.atalk_addr = type { i64, i64 }

@atalk_routes = common dso_local global %struct.atalk_route* null, align 8
@atalk_routes_lock = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atalk_addr*)* @atrtr_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atrtr_delete(%struct.atalk_addr* %0) #0 {
  %2 = alloca %struct.atalk_addr*, align 8
  %3 = alloca %struct.atalk_route**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atalk_route*, align 8
  store %struct.atalk_addr* %0, %struct.atalk_addr** %2, align 8
  store %struct.atalk_route** @atalk_routes, %struct.atalk_route*** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 @write_lock_bh(i32* @atalk_routes_lock)
  br label %7

7:                                                ; preds = %47, %1
  %8 = load %struct.atalk_route**, %struct.atalk_route*** %3, align 8
  %9 = load %struct.atalk_route*, %struct.atalk_route** %8, align 8
  store %struct.atalk_route* %9, %struct.atalk_route** %5, align 8
  %10 = icmp ne %struct.atalk_route* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  %12 = load %struct.atalk_route*, %struct.atalk_route** %5, align 8
  %13 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.atalk_addr*, %struct.atalk_addr** %2, align 8
  %17 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %11
  %21 = load %struct.atalk_route*, %struct.atalk_route** %5, align 8
  %22 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RTF_GATEWAY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.atalk_route*, %struct.atalk_route** %5, align 8
  %29 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.atalk_addr*, %struct.atalk_addr** %2, align 8
  %33 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %27, %20
  %37 = load %struct.atalk_route*, %struct.atalk_route** %5, align 8
  %38 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %37, i32 0, i32 1
  %39 = load %struct.atalk_route*, %struct.atalk_route** %38, align 8
  %40 = load %struct.atalk_route**, %struct.atalk_route*** %3, align 8
  store %struct.atalk_route* %39, %struct.atalk_route** %40, align 8
  %41 = load %struct.atalk_route*, %struct.atalk_route** %5, align 8
  %42 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_put(i32 %43)
  %45 = load %struct.atalk_route*, %struct.atalk_route** %5, align 8
  %46 = call i32 @kfree(%struct.atalk_route* %45)
  br label %53

47:                                               ; preds = %27, %11
  %48 = load %struct.atalk_route*, %struct.atalk_route** %5, align 8
  %49 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %48, i32 0, i32 1
  store %struct.atalk_route** %49, %struct.atalk_route*** %3, align 8
  br label %7

50:                                               ; preds = %7
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %36
  %54 = call i32 @write_unlock_bh(i32* @atalk_routes_lock)
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @kfree(%struct.atalk_route*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
