; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet.c_cvm_do_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet.c_cvm_do_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }
%struct.octeon_ethernet = type { i64, i32*, i32 (%struct.TYPE_7__*)* }

@cvm_do_timer.port = internal global i32 0, align 4
@CVMX_PIP_NUM_INPUT_PORTS = common dso_local global i32 0, align 4
@cvm_oct_poll_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@cvm_oct_device = common dso_local global %struct.TYPE_7__** null, align 8
@mdio_sem = common dso_local global i32 0, align 4
@MAX_SKB_TO_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cvm_do_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_do_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.octeon_ethernet*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @cvm_do_timer.port, align 4
  %9 = load i32, i32* @CVMX_PIP_NUM_INPUT_PORTS, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  store i32 0, i32* @cvm_do_timer.port, align 4
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i32, i32* @HZ, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = call i32 @mod_timer(i32* @cvm_oct_poll_timer, i64 %15)
  br label %146

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @cvm_oct_device, align 8
  %19 = load i32, i32* @cvm_do_timer.port, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %18, i64 %20
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %137

25:                                               ; preds = %17
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @cvm_oct_device, align 8
  %27 = load i32, i32* @cvm_do_timer.port, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %26, i64 %28
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call %struct.octeon_ethernet* @netdev_priv(%struct.TYPE_7__* %30)
  store %struct.octeon_ethernet* %31, %struct.octeon_ethernet** %7, align 8
  %32 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %33 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %32, i32 0, i32 2
  %34 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_7__*)* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %25
  %37 = call i32 @down_trylock(i32* @mdio_sem)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %41 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %40, i32 0, i32 2
  %42 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %41, align 8
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @cvm_oct_device, align 8
  %44 = load i32, i32* @cvm_do_timer.port, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %43, i64 %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i32 %42(%struct.TYPE_7__* %47)
  %49 = call i32 @up(i32* @mdio_sem)
  br label %50

50:                                               ; preds = %39, %36
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, i32* @cvm_do_timer.port, align 4
  %53 = call i32 @cvmx_pko_get_num_queues(i32 %52)
  store i32 %53, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %117, %51
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %120

58:                                               ; preds = %54
  %59 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %60 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i64 @skb_queue_len(i32* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %117

68:                                               ; preds = %58
  %69 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %70 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = load i32, i32* @MAX_SKB_TO_FREE, align 4
  %77 = call i32 @cvmx_fau_fetch_and_add32(i64 %75, i32 %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @MAX_SKB_TO_FREE, align 4
  br label %86

82:                                               ; preds = %68
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @MAX_SKB_TO_FREE, align 4
  %85 = add nsw i32 %83, %84
  br label %86

86:                                               ; preds = %82, %80
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ]
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %92 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %94, 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %93, %96
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 0, %98
  %100 = call i32 @cvmx_fau_atomic_add32(i64 %97, i32 %99)
  br label %101

101:                                              ; preds = %90, %86
  %102 = load i32, i32* %3, align 4
  %103 = sub nsw i32 0, %102
  %104 = load i32, i32* @MAX_SKB_TO_FREE, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @MAX_SKB_TO_FREE, align 4
  br label %111

108:                                              ; preds = %101
  %109 = load i32, i32* %3, align 4
  %110 = sub nsw i32 0, %109
  br label %111

111:                                              ; preds = %108, %106
  %112 = phi i32 [ %107, %106 ], [ %110, %108 ]
  store i32 %112, i32* %3, align 4
  %113 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @cvm_oct_free_tx_skbs(%struct.octeon_ethernet* %113, i32 %114, i32 %115, i32 1)
  br label %117

117:                                              ; preds = %111, %67
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %54

120:                                              ; preds = %54
  %121 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @cvm_oct_device, align 8
  %122 = load i32, i32* @cvm_do_timer.port, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %121, i64 %123
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = bitcast {}** %128 to i32 (%struct.TYPE_7__*)**
  %130 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %129, align 8
  %131 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @cvm_oct_device, align 8
  %132 = load i32, i32* @cvm_do_timer.port, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %131, i64 %133
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = call i32 %130(%struct.TYPE_7__* %135)
  br label %137

137:                                              ; preds = %120, %24
  %138 = load i32, i32* @cvm_do_timer.port, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @cvm_do_timer.port, align 4
  %140 = load i64, i64* @jiffies, align 8
  %141 = load i32, i32* @HZ, align 4
  %142 = sdiv i32 %141, 50
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %140, %143
  %145 = call i32 @mod_timer(i32* @cvm_oct_poll_timer, i64 %144)
  br label %146

146:                                              ; preds = %137, %11
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.TYPE_7__*) #1

declare dso_local i32 @down_trylock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @cvmx_pko_get_num_queues(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @cvmx_fau_fetch_and_add32(i64, i32) #1

declare dso_local i32 @cvmx_fau_atomic_add32(i64, i32) #1

declare dso_local i32 @cvm_oct_free_tx_skbs(%struct.octeon_ethernet*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
