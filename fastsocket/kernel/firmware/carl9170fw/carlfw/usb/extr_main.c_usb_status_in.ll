; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_usb_status_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_usb_status_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.carl9170_rsp = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@fw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@AR9170_BLOCK_SIZE = common dso_local global i32 0, align 4
@AR9170_INT_MAGIC_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"attempted to send an empty int response!\0A\00", align 1
@AR9170_CTRL_FS_BIT = common dso_local global i32 0, align 4
@AR9170_CTRL_LS_BIT = common dso_local global i32 0, align 4
@AR9170_PTA_REG_UP_DMA_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usb_status_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_status_in() #0 {
  %1 = alloca %struct.carl9170_rsp*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 0, i32 0), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %65

8:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 0, i32 0), align 8
  %9 = load i32, i32* @AR9170_BLOCK_SIZE, align 4
  %10 = load i32, i32* @AR9170_INT_MAGIC_HEADER_SIZE, align 4
  %11 = sub i32 %9, %10
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @AR9170_INT_MAGIC_HEADER_SIZE, align 4
  store i32 %12, i32* %3, align 4
  %13 = call i32 (...) @usb_reset_in()
  br label %14

14:                                               ; preds = %23, %8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 0, i32 2), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = call %struct.carl9170_rsp* @dequeue_int_buf(i32 %18)
  store %struct.carl9170_rsp* %19, %struct.carl9170_rsp** %1, align 8
  %20 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %1, align 8
  %21 = icmp ne %struct.carl9170_rsp* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %41

23:                                               ; preds = %17
  %24 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %1, align 8
  %25 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* %4, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 0, i32 1), align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @DESC_PAYLOAD_OFF(%struct.TYPE_11__* %29, i32 %30)
  %32 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %1, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @memcpy(i32 %31, %struct.carl9170_rsp* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %2, align 4
  %37 = sub i32 %36, %35
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %14

41:                                               ; preds = %22, %14
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @AR9170_INT_MAGIC_HEADER_SIZE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %64

47:                                               ; preds = %41
  %48 = load i32, i32* @AR9170_CTRL_FS_BIT, align 4
  %49 = load i32, i32* @AR9170_CTRL_LS_BIT, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 0, i32 1), align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 0, i32 1), align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 0, i32 1), align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 0, i32 1), align 8
  %60 = call i32 @dma_put(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 1, i32 0), %struct.TYPE_11__* %59)
  %61 = load i32, i32* @AR9170_PTA_REG_UP_DMA_TRIGGER, align 4
  %62 = call i32 @set(i32 %61, i32 1)
  %63 = call i32 (...) @usb_trigger_out()
  br label %65

64:                                               ; preds = %45
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fw, i32 0, i32 0, i32 0), align 8
  br label %65

65:                                               ; preds = %64, %47, %7
  ret void
}

declare dso_local i32 @usb_reset_in(...) #1

declare dso_local %struct.carl9170_rsp* @dequeue_int_buf(i32) #1

declare dso_local i32 @memcpy(i32, %struct.carl9170_rsp*, i32) #1

declare dso_local i32 @DESC_PAYLOAD_OFF(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @dma_put(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @set(i32, i32) #1

declare dso_local i32 @usb_trigger_out(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
