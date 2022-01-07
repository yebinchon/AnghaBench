; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_rx_cmp_to_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_rx_cmp_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i32, %struct.can_frame*, %struct.can_frame* }
%struct.can_frame = type { i32 }

@RX_RECV = common dso_local global i32 0, align 4
@RX_CHECK_DLC = common dso_local global i32 0, align 4
@BCM_CAN_DLC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_op*, i32, %struct.can_frame*)* @bcm_rx_cmp_to_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_rx_cmp_to_index(%struct.bcm_op* %0, i32 %1, %struct.can_frame* %2) #0 {
  %4 = alloca %struct.bcm_op*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.can_frame*, align 8
  store %struct.bcm_op* %0, %struct.bcm_op** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.can_frame* %2, %struct.can_frame** %6, align 8
  %7 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %8 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %7, i32 0, i32 1
  %9 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %9, i64 %11
  %13 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RX_RECV, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %20 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %21 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %20, i32 0, i32 1
  %22 = load %struct.can_frame*, %struct.can_frame** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %22, i64 %24
  %26 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %27 = call i32 @bcm_rx_update_and_send(%struct.bcm_op* %19, %struct.can_frame* %25, %struct.can_frame* %26)
  br label %98

28:                                               ; preds = %3
  %29 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %30 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %29, i32 0, i32 2
  %31 = load %struct.can_frame*, %struct.can_frame** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %31, i64 %33
  %35 = call i32 @GET_U64(%struct.can_frame* %34)
  %36 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %37 = call i32 @GET_U64(%struct.can_frame* %36)
  %38 = and i32 %35, %37
  %39 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %40 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %39, i32 0, i32 2
  %41 = load %struct.can_frame*, %struct.can_frame** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %41, i64 %43
  %45 = call i32 @GET_U64(%struct.can_frame* %44)
  %46 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %47 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %46, i32 0, i32 1
  %48 = load %struct.can_frame*, %struct.can_frame** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %48, i64 %50
  %52 = call i32 @GET_U64(%struct.can_frame* %51)
  %53 = and i32 %45, %52
  %54 = icmp ne i32 %38, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %28
  %56 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %57 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %58 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %57, i32 0, i32 1
  %59 = load %struct.can_frame*, %struct.can_frame** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %59, i64 %61
  %63 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %64 = call i32 @bcm_rx_update_and_send(%struct.bcm_op* %56, %struct.can_frame* %62, %struct.can_frame* %63)
  br label %98

65:                                               ; preds = %28
  %66 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %67 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RX_CHECK_DLC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %65
  %73 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %74 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %77 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %76, i32 0, i32 1
  %78 = load %struct.can_frame*, %struct.can_frame** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %78, i64 %80
  %82 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @BCM_CAN_DLC_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %75, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %72
  %88 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %89 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %90 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %89, i32 0, i32 1
  %91 = load %struct.can_frame*, %struct.can_frame** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %91, i64 %93
  %95 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %96 = call i32 @bcm_rx_update_and_send(%struct.bcm_op* %88, %struct.can_frame* %94, %struct.can_frame* %95)
  br label %98

97:                                               ; preds = %72
  br label %98

98:                                               ; preds = %18, %55, %87, %97, %65
  ret void
}

declare dso_local i32 @bcm_rx_update_and_send(%struct.bcm_op*, %struct.can_frame*, %struct.can_frame*) #1

declare dso_local i32 @GET_U64(%struct.can_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
