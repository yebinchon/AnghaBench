; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32* }
%struct.file = type { i32 }
%struct.rfcomm_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"tty %p dev %p dlc %p opened %d\00", align 1
@DPM_ORDER_DEV_LAST = common dso_local global i32 0, align 4
@RFCOMM_TTY_ATTACHED = common dso_local global i32 0, align 4
@RFCOMM_TTY_RELEASED = common dso_local global i32 0, align 4
@rfcomm_dev_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @rfcomm_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_tty_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.rfcomm_dev*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to %struct.rfcomm_dev*
  store %struct.rfcomm_dev* %9, %struct.rfcomm_dev** %5, align 8
  %10 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %11 = icmp ne %struct.rfcomm_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %81

13:                                               ; preds = %2
  %14 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %15 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %16 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %17 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %20 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %19, i32 0, i32 6
  %21 = call i32 @atomic_read(i32* %20)
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %14, %struct.rfcomm_dev* %15, i32 %18, i32 %21)
  %23 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %24 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %23, i32 0, i32 6
  %25 = call i64 @atomic_dec_and_test(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %13
  %28 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %29 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %36 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* @DPM_ORDER_DEV_LAST, align 4
  %39 = call i32 @device_move(%struct.TYPE_2__* %37, i32* null, i32 %38)
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %42 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @rfcomm_dlc_close(i32 %43, i32 0)
  %45 = load i32, i32* @RFCOMM_TTY_ATTACHED, align 4
  %46 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %47 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %46, i32 0, i32 1
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %50 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %49, i32 0, i32 4
  %51 = call i32 @tasklet_kill(i32* %50)
  %52 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %53 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @rfcomm_dlc_lock(i32 %54)
  %56 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %57 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %59 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %61 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @rfcomm_dlc_unlock(i32 %62)
  %64 = load i32, i32* @RFCOMM_TTY_RELEASED, align 4
  %65 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %66 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %65, i32 0, i32 1
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %40
  %70 = call i32 @write_lock_bh(i32* @rfcomm_dev_lock)
  %71 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %72 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %71, i32 0, i32 0
  %73 = call i32 @list_del_init(i32* %72)
  %74 = call i32 @write_unlock_bh(i32* @rfcomm_dev_lock)
  %75 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %76 = call i32 @rfcomm_dev_put(%struct.rfcomm_dev* %75)
  br label %77

77:                                               ; preds = %69, %40
  br label %78

78:                                               ; preds = %77, %13
  %79 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %80 = call i32 @rfcomm_dev_put(%struct.rfcomm_dev* %79)
  br label %81

81:                                               ; preds = %78, %12
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*, %struct.rfcomm_dev*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @device_move(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @rfcomm_dlc_close(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @rfcomm_dlc_lock(i32) #1

declare dso_local i32 @rfcomm_dlc_unlock(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

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
