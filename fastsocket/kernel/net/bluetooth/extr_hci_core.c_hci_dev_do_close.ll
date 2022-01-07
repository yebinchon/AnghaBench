; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_dev_do_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_dev_do_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, {}*, i32*, i32, i32, i32, i32, i32, {}*, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %p\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HCI_UP = common dso_local global i32 0, align 4
@HCI_DEV_DOWN = common dso_local global i32 0, align 4
@HCI_RAW = common dso_local global i32 0, align 4
@HCI_INIT = common dso_local global i32 0, align 4
@hci_reset_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @hci_dev_do_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_dev_do_close(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %4, i32 0, i32 11
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %6, %struct.hci_dev* %7)
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = call i32 @hci_req_cancel(%struct.hci_dev* %9, i32 %10)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = call i32 @hci_req_lock(%struct.hci_dev* %12)
  %14 = load i32, i32* @HCI_UP, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = call i32 @test_and_clear_bit(i32 %14, i64* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = call i32 @hci_req_unlock(%struct.hci_dev* %20)
  store i32 0, i32* %2, align 4
  br label %114

22:                                               ; preds = %1
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 10
  %25 = call i32 @tasklet_kill(i32* %24)
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 9
  %28 = call i32 @tasklet_kill(i32* %27)
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = call i32 @hci_dev_lock_bh(%struct.hci_dev* %29)
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = call i32 @inquiry_cache_flush(%struct.hci_dev* %31)
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = call i32 @hci_conn_hash_flush(%struct.hci_dev* %33)
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = call i32 @hci_dev_unlock_bh(%struct.hci_dev* %35)
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = load i32, i32* @HCI_DEV_DOWN, align 4
  %39 = call i32 @hci_notify(%struct.hci_dev* %37, i32 %38)
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 8
  %42 = bitcast {}** %41 to i32 (%struct.hci_dev*)**
  %43 = load i32 (%struct.hci_dev*)*, i32 (%struct.hci_dev*)** %42, align 8
  %44 = icmp ne i32 (%struct.hci_dev*)* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %22
  %46 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 8
  %48 = bitcast {}** %47 to i32 (%struct.hci_dev*)**
  %49 = load i32 (%struct.hci_dev*)*, i32 (%struct.hci_dev*)** %48, align 8
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = call i32 %49(%struct.hci_dev* %50)
  br label %52

52:                                               ; preds = %45, %22
  %53 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %53, i32 0, i32 4
  %55 = call i32 @skb_queue_purge(i32* %54)
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 7
  %58 = call i32 @atomic_set(i32* %57, i32 1)
  %59 = load i32, i32* @HCI_RAW, align 4
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 0
  %62 = call i32 @test_bit(i32 %59, i64* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* @HCI_INIT, align 4
  %66 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %67 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %66, i32 0, i32 0
  %68 = call i32 @set_bit(i32 %65, i64* %67)
  %69 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %70 = load i32, i32* @hci_reset_req, align 4
  %71 = call i32 @msecs_to_jiffies(i32 250)
  %72 = call i32 @__hci_request(%struct.hci_dev* %69, i32 %70, i32 0, i32 %71)
  %73 = load i32, i32* @HCI_INIT, align 4
  %74 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 0
  %76 = call i32 @clear_bit(i32 %73, i64* %75)
  br label %77

77:                                               ; preds = %64, %52
  %78 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 6
  %80 = call i32 @tasklet_kill(i32* %79)
  %81 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 5
  %83 = call i32 @skb_queue_purge(i32* %82)
  %84 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 4
  %86 = call i32 @skb_queue_purge(i32* %85)
  %87 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %88 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %87, i32 0, i32 3
  %89 = call i32 @skb_queue_purge(i32* %88)
  %90 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %77
  %95 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %96 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @kfree_skb(i32* %97)
  %99 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %100 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %99, i32 0, i32 2
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %94, %77
  %102 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %103 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %102, i32 0, i32 1
  %104 = bitcast {}** %103 to i32 (%struct.hci_dev*)**
  %105 = load i32 (%struct.hci_dev*)*, i32 (%struct.hci_dev*)** %104, align 8
  %106 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %107 = call i32 %105(%struct.hci_dev* %106)
  %108 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %109 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %111 = call i32 @hci_req_unlock(%struct.hci_dev* %110)
  %112 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %113 = call i32 @hci_dev_put(%struct.hci_dev* %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %101, %19
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_cancel(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_lock(%struct.hci_dev*) #1

declare dso_local i32 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @hci_req_unlock(%struct.hci_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @hci_dev_lock_bh(%struct.hci_dev*) #1

declare dso_local i32 @inquiry_cache_flush(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_hash_flush(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock_bh(%struct.hci_dev*) #1

declare dso_local i32 @hci_notify(%struct.hci_dev*, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @__hci_request(%struct.hci_dev*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
