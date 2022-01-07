; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_dev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32 (%struct.hci_dev*)*, i32*, i32 (%struct.hci_dev*)*, i32, i32, i32, i32, i32, i32, i64 (%struct.hci_dev*)*, i64, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %p\00", align 1
@ERFKILL = common dso_local global i32 0, align 4
@HCI_UP = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@HCI_QUIRK_RAW_DEVICE = common dso_local global i32 0, align 4
@HCI_RAW = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HCI_INIT = common dso_local global i32 0, align 4
@hci_init_req = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@HCI_DEV_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_dev_open(i32 %0) #0 {
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
  br label %152

12:                                               ; preds = %1
  %13 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.hci_dev* %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %19 = call i32 @hci_req_lock(%struct.hci_dev* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 12
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %12
  %25 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 12
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @rfkill_blocked(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ERFKILL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %146

33:                                               ; preds = %24, %12
  %34 = load i32, i32* @HCI_UP, align 4
  %35 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i64* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EALREADY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %146

42:                                               ; preds = %33
  %43 = load i32, i32* @HCI_QUIRK_RAW_DEVICE, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 11
  %46 = call i64 @test_bit(i32 %43, i64* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* @HCI_RAW, align 4
  %50 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i64* %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 10
  %56 = load i64 (%struct.hci_dev*)*, i64 (%struct.hci_dev*)** %55, align 8
  %57 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %58 = call i64 %56(%struct.hci_dev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %146

63:                                               ; preds = %53
  %64 = load i32, i32* @HCI_RAW, align 4
  %65 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 0
  %67 = call i64 @test_bit(i32 %64, i64* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %63
  %70 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 9
  %72 = call i32 @atomic_set(i32* %71, i32 1)
  %73 = load i32, i32* @HCI_INIT, align 4
  %74 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 0
  %76 = call i32 @set_bit(i32 %73, i64* %75)
  %77 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %78 = load i32, i32* @hci_init_req, align 4
  %79 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %80 = call i32 @msecs_to_jiffies(i32 %79)
  %81 = call i32 @__hci_request(%struct.hci_dev* %77, i32 %78, i32 0, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @HCI_INIT, align 4
  %83 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %83, i32 0, i32 0
  %85 = call i32 @clear_bit(i32 %82, i64* %84)
  br label %86

86:                                               ; preds = %69, %63
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %91 = call i32 @hci_dev_hold(%struct.hci_dev* %90)
  %92 = load i32, i32* @HCI_UP, align 4
  %93 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %94 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %93, i32 0, i32 0
  %95 = call i32 @set_bit(i32 %92, i64* %94)
  %96 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %97 = load i32, i32* @HCI_DEV_UP, align 4
  %98 = call i32 @hci_notify(%struct.hci_dev* %96, i32 %97)
  br label %145

99:                                               ; preds = %86
  %100 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 8
  %102 = call i32 @tasklet_kill(i32* %101)
  %103 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %104 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %103, i32 0, i32 7
  %105 = call i32 @tasklet_kill(i32* %104)
  %106 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %107 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %106, i32 0, i32 6
  %108 = call i32 @tasklet_kill(i32* %107)
  %109 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %109, i32 0, i32 5
  %111 = call i32 @skb_queue_purge(i32* %110)
  %112 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %113 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %112, i32 0, i32 4
  %114 = call i32 @skb_queue_purge(i32* %113)
  %115 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %116 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %115, i32 0, i32 3
  %117 = load i32 (%struct.hci_dev*)*, i32 (%struct.hci_dev*)** %116, align 8
  %118 = icmp ne i32 (%struct.hci_dev*)* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %99
  %120 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %121 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %120, i32 0, i32 3
  %122 = load i32 (%struct.hci_dev*)*, i32 (%struct.hci_dev*)** %121, align 8
  %123 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %124 = call i32 %122(%struct.hci_dev* %123)
  br label %125

125:                                              ; preds = %119, %99
  %126 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %127 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @kfree_skb(i32* %133)
  %135 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %136 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %135, i32 0, i32 2
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %139 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %138, i32 0, i32 1
  %140 = load i32 (%struct.hci_dev*)*, i32 (%struct.hci_dev*)** %139, align 8
  %141 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %142 = call i32 %140(%struct.hci_dev* %141)
  %143 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %144 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %137, %89
  br label %146

146:                                              ; preds = %145, %60, %39, %30
  %147 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %148 = call i32 @hci_req_unlock(%struct.hci_dev* %147)
  %149 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %150 = call i32 @hci_dev_put(%struct.hci_dev* %149)
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %146, %9
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_lock(%struct.hci_dev*) #1

declare dso_local i64 @rfkill_blocked(i64) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @__hci_request(%struct.hci_dev*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @hci_dev_hold(%struct.hci_dev*) #1

declare dso_local i32 @hci_notify(%struct.hci_dev*, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @hci_req_unlock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
