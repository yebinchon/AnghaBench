; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_iface.c_lapb_create_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_iface.c_lapb_create_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@LAPB_DEFAULT_T1 = common dso_local global i32 0, align 4
@LAPB_DEFAULT_T2 = common dso_local global i32 0, align 4
@LAPB_DEFAULT_N2 = common dso_local global i32 0, align 4
@LAPB_DEFAULT_MODE = common dso_local global i32 0, align 4
@LAPB_DEFAULT_WINDOW = common dso_local global i32 0, align 4
@LAPB_STATE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lapb_cb* ()* @lapb_create_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lapb_cb* @lapb_create_cb() #0 {
  %1 = alloca %struct.lapb_cb*, align 8
  %2 = load i32, i32* @GFP_ATOMIC, align 4
  %3 = call %struct.lapb_cb* @kzalloc(i32 44, i32 %2)
  store %struct.lapb_cb* %3, %struct.lapb_cb** %1, align 8
  %4 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %5 = icmp ne %struct.lapb_cb* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %41

7:                                                ; preds = %0
  %8 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %9 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %8, i32 0, i32 10
  %10 = call i32 @skb_queue_head_init(i32* %9)
  %11 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %12 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %11, i32 0, i32 9
  %13 = call i32 @skb_queue_head_init(i32* %12)
  %14 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %15 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %14, i32 0, i32 8
  %16 = call i32 @init_timer(i32* %15)
  %17 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %18 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %17, i32 0, i32 7
  %19 = call i32 @init_timer(i32* %18)
  %20 = load i32, i32* @LAPB_DEFAULT_T1, align 4
  %21 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %22 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @LAPB_DEFAULT_T2, align 4
  %24 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %25 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @LAPB_DEFAULT_N2, align 4
  %27 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %28 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @LAPB_DEFAULT_MODE, align 4
  %30 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %31 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @LAPB_DEFAULT_WINDOW, align 4
  %33 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %34 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @LAPB_STATE_0, align 4
  %36 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %37 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  %39 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %38, i32 0, i32 0
  %40 = call i32 @atomic_set(i32* %39, i32 1)
  br label %41

41:                                               ; preds = %7, %6
  %42 = load %struct.lapb_cb*, %struct.lapb_cb** %1, align 8
  ret %struct.lapb_cb* %42
}

declare dso_local %struct.lapb_cb* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
