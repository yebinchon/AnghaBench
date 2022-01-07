; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_comp_wssid_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wss-lc.c_wlp_wss_comp_wssid_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_uuid = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp_uuid*)* @wlp_wss_comp_wssid_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_wss_comp_wssid_hash(%struct.wlp_uuid* %0) #0 {
  %2 = alloca %struct.wlp_uuid*, align 8
  store %struct.wlp_uuid* %0, %struct.wlp_uuid** %2, align 8
  %3 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %4 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %9 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %7, %12
  %14 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %15 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %13, %18
  %20 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %21 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %19, %24
  %26 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %27 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %25, %30
  %32 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %33 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %31, %36
  %38 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %39 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %37, %42
  %44 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %45 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %43, %48
  %50 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %51 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %49, %54
  %56 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %57 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 9
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %55, %60
  %62 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %63 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 10
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %61, %66
  %68 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %69 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 11
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %67, %72
  %74 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %75 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 12
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %73, %78
  %80 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %81 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 13
  %84 = load i32, i32* %83, align 4
  %85 = xor i32 %79, %84
  %86 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %87 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 14
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %85, %90
  %92 = load %struct.wlp_uuid*, %struct.wlp_uuid** %2, align 8
  %93 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 15
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %91, %96
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
