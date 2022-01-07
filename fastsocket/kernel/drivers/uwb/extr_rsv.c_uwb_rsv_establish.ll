; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_establish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i32, i32*, i32, i32, %struct.uwb_rc* }
%struct.uwb_rc = type { i32, i32, i32 }
%struct.uwb_mas_bm = type { i32 }

@UWB_RSV_ALLOC_NOT_FOUND = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@UWB_RSV_STATE_O_INITIATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rsv_establish(%struct.uwb_rsv* %0) #0 {
  %2 = alloca %struct.uwb_rsv*, align 8
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.uwb_mas_bm, align 4
  %5 = alloca i32, align 4
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %2, align 8
  %6 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %7 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %6, i32 0, i32 4
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  store %struct.uwb_rc* %8, %struct.uwb_rc** %3, align 8
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %10 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %13 = call i32 @uwb_rsv_get_stream(%struct.uwb_rsv* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %65

17:                                               ; preds = %1
  %18 = call i32 (...) @random32()
  %19 = and i32 %18, 1
  %20 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %21 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %23 = call i32 @uwb_drp_available(%struct.uwb_rc* %22, %struct.uwb_mas_bm* %4)
  %24 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %25 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %26 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %25, i32 0, i32 3
  %27 = call i32 @uwb_rsv_find_best_allocation(%struct.uwb_rsv* %24, %struct.uwb_mas_bm* %4, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @UWB_RSV_ALLOC_NOT_FOUND, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %35 = call i32 @uwb_rsv_put_stream(%struct.uwb_rsv* %34)
  br label %65

36:                                               ; preds = %17
  %37 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %38 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %39 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %38, i32 0, i32 3
  %40 = call i32 @uwb_drp_avail_reserve_pending(%struct.uwb_rc* %37, i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %45 = call i32 @uwb_rsv_put_stream(%struct.uwb_rsv* %44)
  br label %65

46:                                               ; preds = %36
  %47 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %48 = call i32 @uwb_rsv_get(%struct.uwb_rsv* %47)
  %49 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %50 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %49, i32 0, i32 2
  %51 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %52 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %51, i32 0, i32 2
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  %54 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %55 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %54, i32 0, i32 1
  %56 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %57 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %59 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @uwb_dev_get(i32* %60)
  %62 = load %struct.uwb_rsv*, %struct.uwb_rsv** %2, align 8
  %63 = load i32, i32* @UWB_RSV_STATE_O_INITIATED, align 4
  %64 = call i32 @uwb_rsv_set_state(%struct.uwb_rsv* %62, i32 %63)
  br label %65

65:                                               ; preds = %46, %43, %31, %16
  %66 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %67 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uwb_rsv_get_stream(%struct.uwb_rsv*) #1

declare dso_local i32 @random32(...) #1

declare dso_local i32 @uwb_drp_available(%struct.uwb_rc*, %struct.uwb_mas_bm*) #1

declare dso_local i32 @uwb_rsv_find_best_allocation(%struct.uwb_rsv*, %struct.uwb_mas_bm*, i32*) #1

declare dso_local i32 @uwb_rsv_put_stream(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_drp_avail_reserve_pending(%struct.uwb_rc*, i32*) #1

declare dso_local i32 @uwb_rsv_get(%struct.uwb_rsv*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @uwb_dev_get(i32*) #1

declare dso_local i32 @uwb_rsv_set_state(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
