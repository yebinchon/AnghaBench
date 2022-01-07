; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_timer.c_irlap_stop_mbusy_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_timer.c_irlap_stop_mbusy_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i64, i32 }

@LAP_NDM = common dso_local global i64 0, align 8
@MEDIA_BUSY_TIMER_EXPIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlap_stop_mbusy_timer(%struct.irlap_cb* %0) #0 {
  %2 = alloca %struct.irlap_cb*, align 8
  store %struct.irlap_cb* %0, %struct.irlap_cb** %2, align 8
  %3 = load %struct.irlap_cb*, %struct.irlap_cb** %2, align 8
  %4 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %3, i32 0, i32 1
  %5 = call i32 @del_timer(i32* %4)
  %6 = load %struct.irlap_cb*, %struct.irlap_cb** %2, align 8
  %7 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LAP_NDM, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.irlap_cb*, %struct.irlap_cb** %2, align 8
  %13 = load i32, i32* @MEDIA_BUSY_TIMER_EXPIRED, align 4
  %14 = call i32 @irlap_do_event(%struct.irlap_cb* %12, i32 %13, i32* null, i32* null)
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @irlap_do_event(%struct.irlap_cb*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
