; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap.c_irlap_wait_min_turn_around.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap.c_irlap_wait_min_turn_around.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i32, i32 }
%struct.qos_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlap_wait_min_turn_around(%struct.irlap_cb* %0, %struct.qos_info* %1) #0 {
  %3 = alloca %struct.irlap_cb*, align 8
  %4 = alloca %struct.qos_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irlap_cb* %0, %struct.irlap_cb** %3, align 8
  store %struct.qos_info* %1, %struct.qos_info** %4, align 8
  %7 = load %struct.qos_info*, %struct.qos_info** %4, align 8
  %8 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.qos_info*, %struct.qos_info** %4, align 8
  %12 = getelementptr inbounds %struct.qos_info, %struct.qos_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 115200
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %20 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @irlap_min_turn_time_in_bytes(i32 %22, i32 %23)
  %25 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %26 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @irlap_min_turn_time_in_bytes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
