; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_set_queue_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_set_queue_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32* }

@TIPC_LOW_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_MEDIUM_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_HIGH_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i64 0, align 8
@CONN_MANAGER = common dso_local global i64 0, align 8
@ROUTE_DISTRIBUTOR = common dso_local global i64 0, align 8
@CHANGEOVER_PROTOCOL = common dso_local global i64 0, align 8
@NAME_DISTRIBUTOR = common dso_local global i64 0, align 8
@MSG_FRAGMENTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_set_queue_limits(%struct.link* %0, i32 %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.link*, %struct.link** %3, align 8
  %7 = getelementptr inbounds %struct.link, %struct.link* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @TIPC_LOW_IMPORTANCE, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 %5, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sdiv i32 %11, 3
  %13 = mul nsw i32 %12, 4
  %14 = load %struct.link*, %struct.link** %3, align 8
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @TIPC_MEDIUM_IMPORTANCE, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %13, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sdiv i32 %19, 3
  %21 = mul nsw i32 %20, 5
  %22 = load %struct.link*, %struct.link** %3, align 8
  %23 = getelementptr inbounds %struct.link, %struct.link* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @TIPC_HIGH_IMPORTANCE, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 3
  %29 = mul nsw i32 %28, 6
  %30 = load %struct.link*, %struct.link** %3, align 8
  %31 = getelementptr inbounds %struct.link, %struct.link* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @TIPC_CRITICAL_IMPORTANCE, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load %struct.link*, %struct.link** %3, align 8
  %36 = getelementptr inbounds %struct.link, %struct.link* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @TIPC_LOW_IMPORTANCE, align 8
  %39 = add i64 %38, 4
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 300, i32* %40, align 4
  %41 = load %struct.link*, %struct.link** %3, align 8
  %42 = getelementptr inbounds %struct.link, %struct.link* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @TIPC_MEDIUM_IMPORTANCE, align 8
  %45 = add i64 %44, 4
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 600, i32* %46, align 4
  %47 = load %struct.link*, %struct.link** %3, align 8
  %48 = getelementptr inbounds %struct.link, %struct.link* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @TIPC_HIGH_IMPORTANCE, align 8
  %51 = add i64 %50, 4
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 900, i32* %52, align 4
  %53 = load %struct.link*, %struct.link** %3, align 8
  %54 = getelementptr inbounds %struct.link, %struct.link* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @TIPC_CRITICAL_IMPORTANCE, align 8
  %57 = add i64 %56, 4
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 1200, i32* %58, align 4
  %59 = load %struct.link*, %struct.link** %3, align 8
  %60 = getelementptr inbounds %struct.link, %struct.link* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @CONN_MANAGER, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 1200, i32* %63, align 4
  %64 = load %struct.link*, %struct.link** %3, align 8
  %65 = getelementptr inbounds %struct.link, %struct.link* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @ROUTE_DISTRIBUTOR, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 1200, i32* %68, align 4
  %69 = load %struct.link*, %struct.link** %3, align 8
  %70 = getelementptr inbounds %struct.link, %struct.link* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @CHANGEOVER_PROTOCOL, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 2500, i32* %73, align 4
  %74 = load %struct.link*, %struct.link** %3, align 8
  %75 = getelementptr inbounds %struct.link, %struct.link* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @NAME_DISTRIBUTOR, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 3000, i32* %78, align 4
  %79 = load %struct.link*, %struct.link** %3, align 8
  %80 = getelementptr inbounds %struct.link, %struct.link* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @MSG_FRAGMENTER, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 4000, i32* %83, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
