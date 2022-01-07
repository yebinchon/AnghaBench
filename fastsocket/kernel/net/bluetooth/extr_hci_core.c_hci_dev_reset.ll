; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_dev_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i64, i64, i32, i32 (%struct.hci_dev*)*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@HCI_UP = common dso_local global i32 0, align 4
@HCI_RAW = common dso_local global i32 0, align 4
@hci_reset_req = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_dev_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.hci_dev* @hci_dev_get(i32 %6)
  store %struct.hci_dev* %7, %struct.hci_dev** %4, align 8
  %8 = icmp ne %struct.hci_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %14 = call i32 @hci_req_lock(%struct.hci_dev* %13)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = call i32 @tasklet_disable(i32* %16)
  %18 = load i32, i32* @HCI_UP, align 4
  %19 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %69

24:                                               ; preds = %12
  %25 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 7
  %27 = call i32 @skb_queue_purge(i32* %26)
  %28 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 6
  %30 = call i32 @skb_queue_purge(i32* %29)
  %31 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %32 = call i32 @hci_dev_lock_bh(%struct.hci_dev* %31)
  %33 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %34 = call i32 @inquiry_cache_flush(%struct.hci_dev* %33)
  %35 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %36 = call i32 @hci_conn_hash_flush(%struct.hci_dev* %35)
  %37 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %38 = call i32 @hci_dev_unlock_bh(%struct.hci_dev* %37)
  %39 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 5
  %41 = load i32 (%struct.hci_dev*)*, i32 (%struct.hci_dev*)** %40, align 8
  %42 = icmp ne i32 (%struct.hci_dev*)* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %24
  %44 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 5
  %46 = load i32 (%struct.hci_dev*)*, i32 (%struct.hci_dev*)** %45, align 8
  %47 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %48 = call i32 %46(%struct.hci_dev* %47)
  br label %49

49:                                               ; preds = %43, %24
  %50 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 4
  %52 = call i32 @atomic_set(i32* %51, i32 1)
  %53 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @HCI_RAW, align 4
  %58 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 1
  %60 = call i32 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %49
  %63 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %64 = load i32, i32* @hci_reset_req, align 4
  %65 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %66 = call i32 @msecs_to_jiffies(i32 %65)
  %67 = call i32 @__hci_request(%struct.hci_dev* %63, i32 %64, i32 0, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %62, %49
  br label %69

69:                                               ; preds = %68, %23
  %70 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 0
  %72 = call i32 @tasklet_enable(i32* %71)
  %73 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %74 = call i32 @hci_req_unlock(%struct.hci_dev* %73)
  %75 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %76 = call i32 @hci_dev_put(%struct.hci_dev* %75)
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %69, %9
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local i32 @hci_req_lock(%struct.hci_dev*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @hci_dev_lock_bh(%struct.hci_dev*) #1

declare dso_local i32 @inquiry_cache_flush(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_hash_flush(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock_bh(%struct.hci_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @__hci_request(%struct.hci_dev*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @hci_req_unlock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
