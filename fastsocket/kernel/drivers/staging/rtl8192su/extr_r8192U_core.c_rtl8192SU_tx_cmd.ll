; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.r8192_priv = type { i32*, i32, i32* }
%struct.urb = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i16 0, align 2
@USB_HWDESC_HEADER_LEN = common dso_local global i64 0, align 8
@rtl8192_tx_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error TX CMD URB, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @rtl8192SU_tx_cmd(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %14)
  store %struct.r8192_priv* %15, %struct.r8192_priv** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = inttoptr i64 %24 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %11, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @atomic_inc(i32* %33)
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %35)
  store %struct.urb* %36, %struct.urb** %8, align 8
  %37 = load %struct.urb*, %struct.urb** %8, align 8
  %38 = icmp ne %struct.urb* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @dev_kfree_skb(%struct.sk_buff* %40)
  %42 = load i16, i16* @ENOMEM, align 2
  %43 = sext i16 %42 to i32
  %44 = sub nsw i32 0, %43
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %3, align 2
  br label %99

46:                                               ; preds = %2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %49 = call i32 @memset(%struct.TYPE_4__* %47, i32 0, i64 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @txqueue2outpipe(%struct.r8192_priv* %63, i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.urb*, %struct.urb** %8, align 8
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %74 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @usb_sndbulkpipe(i32 %72, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @rtl8192_tx_isr, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i32 @usb_fill_bulk_urb(%struct.urb* %66, i32 %69, i32 %80, i64 %83, i64 %86, i32 %87, %struct.sk_buff* %88)
  %90 = load %struct.urb*, %struct.urb** %8, align 8
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = call i32 @usb_submit_urb(%struct.urb* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %46
  store i16 0, i16* %3, align 2
  br label %99

96:                                               ; preds = %46
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %97)
  store i16 -1, i16* %3, align 2
  br label %99

99:                                               ; preds = %96, %95, %39
  %100 = load i16, i16* %3, align 2
  ret i16 %100
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @txqueue2outpipe(%struct.r8192_priv*, i64) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i64, i64, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
