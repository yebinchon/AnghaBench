; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_queue_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_queue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i8, i32 }
%struct.input_dev = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"session %p type %d code %d value %d\00", align 1
@EV_LED = common dso_local global i32 0, align 4
@LED_KANA = common dso_local global i32 0, align 4
@LED_COMPOSE = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't allocate memory for new frame\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HIDP_TRANS_DATA = common dso_local global i32 0, align 4
@HIDP_DATA_RTYPE_OUPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*, %struct.input_dev*, i32, i32, i32)* @hidp_queue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_queue_event(%struct.hidp_session* %0, %struct.input_dev* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hidp_session*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.hidp_session* %0, %struct.hidp_session** %7, align 8
  store %struct.input_dev* %1, %struct.input_dev** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.hidp_session*, %struct.hidp_session** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @EV_LED, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %115

23:                                               ; preds = %5
  %24 = load i32, i32* @LED_KANA, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @test_bit(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = shl i32 %32, 3
  %34 = load i32, i32* @LED_COMPOSE, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @test_bit(i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = shl i32 %42, 3
  %44 = or i32 %33, %43
  %45 = load i32, i32* @LED_SCROLLL, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @test_bit(i32 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = shl i32 %53, 2
  %55 = or i32 %44, %54
  %56 = load i32, i32* @LED_CAPSL, align 4
  %57 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %58 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @test_bit(i32 %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = shl i32 %64, 1
  %66 = or i32 %55, %65
  %67 = load i32, i32* @LED_NUML, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @test_bit(i32 %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = or i32 %66, %75
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %12, align 1
  %78 = load %struct.hidp_session*, %struct.hidp_session** %7, align 8
  %79 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 4
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* %12, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %115

86:                                               ; preds = %23
  %87 = load i8, i8* %12, align 1
  %88 = load %struct.hidp_session*, %struct.hidp_session** %7, align 8
  %89 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %88, i32 0, i32 0
  store i8 %87, i8* %89, align 4
  %90 = load i32, i32* @GFP_ATOMIC, align 4
  %91 = call %struct.sk_buff* @alloc_skb(i32 3, i32 %90)
  store %struct.sk_buff* %91, %struct.sk_buff** %13, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %115

97:                                               ; preds = %86
  %98 = load i32, i32* @HIDP_TRANS_DATA, align 4
  %99 = load i32, i32* @HIDP_DATA_RTYPE_OUPUT, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %102 = call i32* @skb_put(%struct.sk_buff* %101, i32 1)
  store i32 %100, i32* %102, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %104 = call i32* @skb_put(%struct.sk_buff* %103, i32 1)
  store i32 1, i32* %104, align 4
  %105 = load i8, i8* %12, align 1
  %106 = zext i8 %105 to i32
  %107 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %108 = call i32* @skb_put(%struct.sk_buff* %107, i32 1)
  store i32 %106, i32* %108, align 4
  %109 = load %struct.hidp_session*, %struct.hidp_session** %7, align 8
  %110 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %109, i32 0, i32 1
  %111 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %112 = call i32 @skb_queue_tail(i32* %110, %struct.sk_buff* %111)
  %113 = load %struct.hidp_session*, %struct.hidp_session** %7, align 8
  %114 = call i32 @hidp_schedule(%struct.hidp_session* %113)
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %97, %93, %85, %22
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @hidp_schedule(%struct.hidp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
