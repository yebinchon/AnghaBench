; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_wss = type { i32, i64, i32*, i32, i32, i32*, i64, i32 }

@WLP_WSS_UNSECURE = common dso_local global i32 0, align 4
@WLP_WSS_STATE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlp_wss_reset(%struct.wlp_wss* %0) #0 {
  %2 = alloca %struct.wlp_wss*, align 8
  store %struct.wlp_wss* %0, %struct.wlp_wss** %2, align 8
  %3 = load %struct.wlp_wss*, %struct.wlp_wss** %2, align 8
  %4 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %3, i32 0, i32 7
  %5 = call i32 @memset(i32* %4, i32 0, i32 4)
  %6 = load %struct.wlp_wss*, %struct.wlp_wss** %2, align 8
  %7 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = load %struct.wlp_wss*, %struct.wlp_wss** %2, align 8
  %9 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = call i32 @memset(i32* %11, i32 0, i32 8)
  %13 = load %struct.wlp_wss*, %struct.wlp_wss** %2, align 8
  %14 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %13, i32 0, i32 4
  %15 = call i32 @memset(i32* %14, i32 0, i32 4)
  %16 = load i32, i32* @WLP_WSS_UNSECURE, align 4
  %17 = load %struct.wlp_wss*, %struct.wlp_wss** %2, align 8
  %18 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.wlp_wss*, %struct.wlp_wss** %2, align 8
  %20 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = call i32 @memset(i32* %22, i32 0, i32 8)
  %24 = load %struct.wlp_wss*, %struct.wlp_wss** %2, align 8
  %25 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @WLP_WSS_STATE_NONE, align 4
  %27 = load %struct.wlp_wss*, %struct.wlp_wss** %2, align 8
  %28 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
