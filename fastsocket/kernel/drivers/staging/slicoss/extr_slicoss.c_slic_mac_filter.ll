; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_mac_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_2__, i32, %struct.mcast_address*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mcast_address = type { %struct.mcast_address*, i32 }
%struct.ether_header = type { i32* }

@MAC_PROMISC = common dso_local global i32 0, align 4
@MAC_BCAST = common dso_local global i32 0, align 4
@MAC_ALLMCAST = common dso_local global i32 0, align 4
@MAC_MCAST = common dso_local global i32 0, align 4
@MAC_DIRECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.ether_header*)* @slic_mac_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_mac_filter(%struct.adapter* %0, %struct.ether_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ether_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mcast_address*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.ether_header* %1, %struct.ether_header** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ether_header*, %struct.ether_header** %5, align 8
  %15 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32* %17, i32** %7, align 8
  %18 = load %struct.ether_header*, %struct.ether_header** %5, align 8
  %19 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MAC_PROMISC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %119

27:                                               ; preds = %2
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 65535
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MAC_BCAST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  store i32 1, i32* %3, align 4
  br label %119

45:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %119

46:                                               ; preds = %31, %27
  %47 = load %struct.ether_header*, %struct.ether_header** %5, align 8
  %48 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %108

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MAC_ALLMCAST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.adapter*, %struct.adapter** %4, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.adapter*, %struct.adapter** %4, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  store i32 1, i32* %3, align 4
  br label %119

69:                                               ; preds = %54
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MAC_MCAST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %69
  %75 = load %struct.adapter*, %struct.adapter** %4, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 4
  %77 = load %struct.mcast_address*, %struct.mcast_address** %76, align 8
  store %struct.mcast_address* %77, %struct.mcast_address** %10, align 8
  br label %78

78:                                               ; preds = %102, %74
  %79 = load %struct.mcast_address*, %struct.mcast_address** %10, align 8
  %80 = icmp ne %struct.mcast_address* %79, null
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load %struct.mcast_address*, %struct.mcast_address** %10, align 8
  %83 = getelementptr inbounds %struct.mcast_address, %struct.mcast_address* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ether_header*, %struct.ether_header** %5, align 8
  %86 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @ETHER_EQ_ADDR(i32 %84, i32* %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %81
  %93 = load %struct.adapter*, %struct.adapter** %4, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.adapter*, %struct.adapter** %4, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  store i32 1, i32* %3, align 4
  br label %119

102:                                              ; preds = %81
  %103 = load %struct.mcast_address*, %struct.mcast_address** %10, align 8
  %104 = getelementptr inbounds %struct.mcast_address, %struct.mcast_address* %103, i32 0, i32 0
  %105 = load %struct.mcast_address*, %struct.mcast_address** %104, align 8
  store %struct.mcast_address* %105, %struct.mcast_address** %10, align 8
  br label %78

106:                                              ; preds = %78
  store i32 0, i32* %3, align 4
  br label %119

107:                                              ; preds = %69
  store i32 0, i32* %3, align 4
  br label %119

108:                                              ; preds = %46
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @MAC_DIRECTED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.adapter*, %struct.adapter** %4, align 8
  %115 = getelementptr inbounds %struct.adapter, %struct.adapter* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  store i32 1, i32* %3, align 4
  br label %119

118:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %113, %107, %106, %92, %59, %45, %40, %26
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @ETHER_EQ_ADDR(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
