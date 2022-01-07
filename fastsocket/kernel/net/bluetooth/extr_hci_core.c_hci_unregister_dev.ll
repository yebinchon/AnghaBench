; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%p name %s type %d\00", align 1
@hci_dev_list_lock = common dso_local global i32 0, align 4
@HCI_DEV_UNREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_unregister_dev(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %4, i32 %7, i32 %10)
  %12 = call i32 @write_lock_bh(i32* @hci_dev_list_lock)
  %13 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 2
  %15 = call i32 @list_del(i32* %14)
  %16 = call i32 @write_unlock_bh(i32* @hci_dev_list_lock)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %18 = call i32 @hci_dev_do_close(%struct.hci_dev* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %31, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kfree_skb(i32 %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %36 = load i32, i32* @HCI_DEV_UNREG, align 4
  %37 = call i32 @hci_notify(%struct.hci_dev* %35, i32 %36)
  %38 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @rfkill_unregister(i64 %45)
  %47 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @rfkill_destroy(i64 %49)
  br label %51

51:                                               ; preds = %42, %34
  %52 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %53 = call i32 @hci_unregister_sysfs(%struct.hci_dev* %52)
  %54 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %55 = call i32 @__hci_dev_put(%struct.hci_dev* %54)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @hci_dev_do_close(%struct.hci_dev*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @hci_notify(%struct.hci_dev*, i32) #1

declare dso_local i32 @rfkill_unregister(i64) #1

declare dso_local i32 @rfkill_destroy(i64) #1

declare dso_local i32 @hci_unregister_sysfs(%struct.hci_dev*) #1

declare dso_local i32 @__hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
