; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_fsg_main_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_fsg_main_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i64, i32, i32, i32, i32*, i32 }

@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@FSG_STATE_TERMINATED = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@FSG_STATE_DATA_PHASE = common dso_local global i64 0, align 8
@FSG_STATE_STATUS_PHASE = common dso_local global i64 0, align 8
@FSG_STATE_IDLE = common dso_local global i64 0, align 8
@REGISTERED = common dso_local global i32 0, align 4
@fsg_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fsg_main_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_main_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsg_dev*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.fsg_dev*
  store %struct.fsg_dev* %6, %struct.fsg_dev** %4, align 8
  %7 = load i32, i32* @SIGINT, align 4
  %8 = call i32 @allow_signal(i32 %7)
  %9 = load i32, i32* @SIGTERM, align 4
  %10 = call i32 @allow_signal(i32 %9)
  %11 = load i32, i32* @SIGKILL, align 4
  %12 = call i32 @allow_signal(i32 %11)
  %13 = load i32, i32* @SIGUSR1, align 4
  %14 = call i32 @allow_signal(i32 %13)
  %15 = call i32 (...) @set_freezable()
  %16 = call i32 (...) @get_ds()
  %17 = call i32 @set_fs(i32 %16)
  br label %18

18:                                               ; preds = %101, %89, %70, %47, %40, %32, %1
  %19 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %20 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FSG_STATE_TERMINATED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %105

24:                                               ; preds = %18
  %25 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %26 = call i64 @exception_in_progress(%struct.fsg_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @current, align 4
  %30 = call i64 @signal_pending(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24
  %33 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %34 = call i32 @handle_exception(%struct.fsg_dev* %33)
  br label %18

35:                                               ; preds = %28
  %36 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %37 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %42 = call i32 @sleep_thread(%struct.fsg_dev* %41)
  br label %18

43:                                               ; preds = %35
  %44 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %45 = call i64 @get_next_command(%struct.fsg_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %18

48:                                               ; preds = %43
  %49 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %50 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %49, i32 0, i32 3
  %51 = call i32 @spin_lock_irq(i32* %50)
  %52 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %53 = call i64 @exception_in_progress(%struct.fsg_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* @FSG_STATE_DATA_PHASE, align 8
  %57 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %58 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %61 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %60, i32 0, i32 3
  %62 = call i32 @spin_unlock_irq(i32* %61)
  %63 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %64 = call i64 @do_scsi_command(%struct.fsg_dev* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %68 = call i64 @finish_reply(%struct.fsg_dev* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %59
  br label %18

71:                                               ; preds = %66
  %72 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %73 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %72, i32 0, i32 3
  %74 = call i32 @spin_lock_irq(i32* %73)
  %75 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %76 = call i64 @exception_in_progress(%struct.fsg_dev* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = load i64, i64* @FSG_STATE_STATUS_PHASE, align 8
  %80 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %81 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %71
  %83 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %84 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %83, i32 0, i32 3
  %85 = call i32 @spin_unlock_irq(i32* %84)
  %86 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %87 = call i64 @send_status(%struct.fsg_dev* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %18

90:                                               ; preds = %82
  %91 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %92 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %91, i32 0, i32 3
  %93 = call i32 @spin_lock_irq(i32* %92)
  %94 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %95 = call i64 @exception_in_progress(%struct.fsg_dev* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %90
  %98 = load i64, i64* @FSG_STATE_IDLE, align 8
  %99 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %100 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %90
  %102 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %103 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %102, i32 0, i32 3
  %104 = call i32 @spin_unlock_irq(i32* %103)
  br label %18

105:                                              ; preds = %18
  %106 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %107 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %106, i32 0, i32 3
  %108 = call i32 @spin_lock_irq(i32* %107)
  %109 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %110 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %109, i32 0, i32 4
  store i32* null, i32** %110, align 8
  %111 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %112 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %111, i32 0, i32 3
  %113 = call i32 @spin_unlock_irq(i32* %112)
  %114 = load i32, i32* @REGISTERED, align 4
  %115 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %116 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %115, i32 0, i32 2
  %117 = call i64 @test_and_clear_bit(i32 %114, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  %120 = call i32 @usb_gadget_unregister_driver(i32* @fsg_driver)
  br label %121

121:                                              ; preds = %119, %105
  %122 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %123 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %122, i32 0, i32 1
  %124 = call i32 @complete_and_exit(i32* %123, i32 0)
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @allow_signal(i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @get_ds(...) #1

declare dso_local i64 @exception_in_progress(%struct.fsg_dev*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @handle_exception(%struct.fsg_dev*) #1

declare dso_local i32 @sleep_thread(%struct.fsg_dev*) #1

declare dso_local i64 @get_next_command(%struct.fsg_dev*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @do_scsi_command(%struct.fsg_dev*) #1

declare dso_local i64 @finish_reply(%struct.fsg_dev*) #1

declare dso_local i64 @send_status(%struct.fsg_dev*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @usb_gadget_unregister_driver(i32*) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
