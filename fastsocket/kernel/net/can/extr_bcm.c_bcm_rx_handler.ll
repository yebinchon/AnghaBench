; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_rx_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bcm_op = type { i64, i32, i32, %struct.can_frame*, i32*, i32, i32, i32, i32 }
%struct.can_frame = type { i64 }

@RX_RTR_FRAME = common dso_local global i32 0, align 4
@RX_FILTER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*)* @bcm_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_rx_handler(%struct.sk_buff* %0, i8* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bcm_op*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bcm_op*
  store %struct.bcm_op* %9, %struct.bcm_op** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.can_frame*
  store %struct.can_frame* %13, %struct.can_frame** %6, align 8
  %14 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %15 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %14, i32 0, i32 8
  %16 = call i32 @hrtimer_cancel(i32* %15)
  %17 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %18 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %21 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %124

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %30 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %37 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %39 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %43 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RX_RTR_FRAME, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %25
  %49 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %50 = call i32 @bcm_can_tx(%struct.bcm_op* %49)
  br label %124

51:                                               ; preds = %25
  %52 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %53 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @RX_FILTER_ID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %60 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %61 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %65 = call i32 @bcm_rx_update_and_send(%struct.bcm_op* %59, i32* %63, %struct.can_frame* %64)
  br label %121

66:                                               ; preds = %51
  %67 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %68 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %73 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %74 = call i32 @bcm_rx_cmp_to_index(%struct.bcm_op* %72, i32 0, %struct.can_frame* %73)
  br label %121

75:                                               ; preds = %66
  %76 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %77 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %120

80:                                               ; preds = %75
  store i32 1, i32* %7, align 4
  br label %81

81:                                               ; preds = %116, %80
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %84 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %81
  %88 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %89 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %88, i32 0, i32 3
  %90 = load %struct.can_frame*, %struct.can_frame** %89, align 8
  %91 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %90, i64 0
  %92 = call i32 @GET_U64(%struct.can_frame* %91)
  %93 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %94 = call i32 @GET_U64(%struct.can_frame* %93)
  %95 = and i32 %92, %94
  %96 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %97 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %96, i32 0, i32 3
  %98 = load %struct.can_frame*, %struct.can_frame** %97, align 8
  %99 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %98, i64 0
  %100 = call i32 @GET_U64(%struct.can_frame* %99)
  %101 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %102 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %101, i32 0, i32 3
  %103 = load %struct.can_frame*, %struct.can_frame** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %103, i64 %105
  %107 = call i32 @GET_U64(%struct.can_frame* %106)
  %108 = and i32 %100, %107
  %109 = icmp eq i32 %95, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %87
  %111 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %114 = call i32 @bcm_rx_cmp_to_index(%struct.bcm_op* %111, i32 %112, %struct.can_frame* %113)
  br label %119

115:                                              ; preds = %87
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %81

119:                                              ; preds = %110, %81
  br label %120

120:                                              ; preds = %119, %75
  br label %121

121:                                              ; preds = %120, %71, %58
  %122 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %123 = call i32 @bcm_rx_starttimer(%struct.bcm_op* %122)
  br label %124

124:                                              ; preds = %121, %48, %24
  ret void
}

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @bcm_can_tx(%struct.bcm_op*) #1

declare dso_local i32 @bcm_rx_update_and_send(%struct.bcm_op*, i32*, %struct.can_frame*) #1

declare dso_local i32 @bcm_rx_cmp_to_index(%struct.bcm_op*, i32, %struct.can_frame*) #1

declare dso_local i32 @GET_U64(%struct.can_frame*) #1

declare dso_local i32 @bcm_rx_starttimer(%struct.bcm_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
