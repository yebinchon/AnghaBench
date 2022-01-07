; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"dev %p\00", align 1
@RFCOMM_TTY_RELEASED = common dso_local global i32 0, align 4
@rfcomm_dev_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dev*)* @rfcomm_dev_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dev_del(%struct.rfcomm_dev* %0) #0 {
  %2 = alloca %struct.rfcomm_dev*, align 8
  store %struct.rfcomm_dev* %0, %struct.rfcomm_dev** %2, align 8
  %3 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %4 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dev* %3)
  %5 = load i32, i32* @RFCOMM_TTY_RELEASED, align 4
  %6 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %6, i32 0, i32 2
  %8 = call i32 @test_and_set_bit(i32 %5, i32* %7)
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %10, i32 0, i32 1
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %23

15:                                               ; preds = %1
  %16 = call i32 @write_lock_bh(i32* @rfcomm_dev_lock)
  %17 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %18 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %17, i32 0, i32 0
  %19 = call i32 @list_del_init(i32* %18)
  %20 = call i32 @write_unlock_bh(i32* @rfcomm_dev_lock)
  %21 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %2, align 8
  %22 = call i32 @rfcomm_dev_put(%struct.rfcomm_dev* %21)
  br label %23

23:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @rfcomm_dev_put(%struct.rfcomm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
