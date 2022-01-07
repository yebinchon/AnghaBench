; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_crypt.c_ieee80211_crypto_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_crypt.c_ieee80211_crypto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hcrypt = common dso_local global %struct.TYPE_5__* null, align 8
@ieee80211_crypt_null = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ENOMEM, align 4
  %3 = sub nsw i32 0, %2
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.TYPE_5__* @kmalloc(i32 8, i32 %4)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** @hcrypt, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hcrypt, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %25

9:                                                ; preds = %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hcrypt, align 8
  %11 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 8)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hcrypt, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hcrypt, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = call i32 @ieee80211_register_crypto_ops(i32* @ieee80211_crypt_null)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %9
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hcrypt, align 8
  %23 = call i32 @kfree(%struct.TYPE_5__* %22)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @hcrypt, align 8
  br label %24

24:                                               ; preds = %21, %9
  br label %25

25:                                               ; preds = %24, %8
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local %struct.TYPE_5__* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ieee80211_register_crypto_ops(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
