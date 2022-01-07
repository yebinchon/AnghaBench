; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_rx_update_and_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_rx_update_and_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { %struct.TYPE_7__, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.can_frame = type { i32 }

@CFSIZ = common dso_local global i32 0, align 4
@RX_RECV = common dso_local global i32 0, align 4
@RX_THR = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_op*, %struct.can_frame*, %struct.can_frame*)* @bcm_rx_update_and_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_rx_update_and_send(%struct.bcm_op* %0, %struct.can_frame* %1, %struct.can_frame* %2) #0 {
  %4 = alloca %struct.bcm_op*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  store %struct.bcm_op* %0, %struct.bcm_op** %4, align 8
  store %struct.can_frame* %1, %struct.can_frame** %5, align 8
  store %struct.can_frame* %2, %struct.can_frame** %6, align 8
  %9 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %10 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %11 = load i32, i32* @CFSIZ, align 4
  %12 = call i32 @memcpy(%struct.can_frame* %9, %struct.can_frame* %10, i32 %11)
  %13 = load i32, i32* @RX_RECV, align 4
  %14 = load i32, i32* @RX_THR, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %17 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %21 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %27 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %28 = call i32 @bcm_rx_changed(%struct.bcm_op* %26, %struct.can_frame* %27)
  br label %83

29:                                               ; preds = %3
  %30 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %31 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %30, i32 0, i32 2
  %32 = call i64 @hrtimer_active(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %83

35:                                               ; preds = %29
  %36 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %37 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %73

42:                                               ; preds = %35
  %43 = call i32 (...) @ktime_get()
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %46 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ktime_us_delta(i32 %48, i32 %50)
  %52 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %53 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ktime_to_us(i32 %55)
  %57 = icmp slt i64 %51, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %42
  %59 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %60 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %59, i32 0, i32 2
  %61 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %62 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %61, i32 0, i32 0
  %63 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %64 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ktime_add(i32 %66, i32 %68)
  %70 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %71 = call i32 @hrtimer_start(i32* %60, i32 %69, i32 %70)
  br label %83

72:                                               ; preds = %42
  br label %73

73:                                               ; preds = %72, %41
  %74 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %75 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %76 = call i32 @bcm_rx_changed(%struct.bcm_op* %74, %struct.can_frame* %75)
  %77 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %78 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %77, i32 0, i32 0
  %79 = call i32 (...) @ktime_get()
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = bitcast %struct.TYPE_7__* %78 to i8*
  %82 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 4, i1 false)
  br label %83

83:                                               ; preds = %73, %58, %34, %25
  ret void
}

declare dso_local i32 @memcpy(%struct.can_frame*, %struct.can_frame*, i32) #1

declare dso_local i32 @bcm_rx_changed(%struct.bcm_op*, %struct.can_frame*) #1

declare dso_local i64 @hrtimer_active(i32*) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_add(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
