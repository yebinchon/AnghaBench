; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_get_next_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_get_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, %struct.fsg_buffhd* }
%struct.fsg_buffhd = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BUF_STATE_EMPTY = common dso_local global i64 0, align 8
@USB_BULK_CB_WRAP_LEN = common dso_local global i32 0, align 4
@BUF_STATE_FULL = common dso_local global i64 0, align 8
@DATA_DIR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*)* @get_next_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_command(%struct.fsg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i64 (...) @transport_is_bbb()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %69

8:                                                ; preds = %1
  %9 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %10 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %9, i32 0, i32 10
  %11 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  store %struct.fsg_buffhd* %11, %struct.fsg_buffhd** %4, align 8
  br label %12

12:                                               ; preds = %25, %8
  %13 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %14 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %20 = call i32 @sleep_thread(%struct.fsg_dev* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %125

25:                                               ; preds = %18
  br label %12

26:                                               ; preds = %12
  %27 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %28 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %29 = load i32, i32* @USB_BULK_CB_WRAP_LEN, align 4
  %30 = call i32 @set_bulk_out_req_length(%struct.fsg_dev* %27, %struct.fsg_buffhd* %28, i32 %29)
  %31 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %32 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %36 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %37 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %40 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %43 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %42, i32 0, i32 1
  %44 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %45 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %44, i32 0, i32 0
  %46 = call i32 @start_transfer(%struct.fsg_dev* %35, i32 %38, %struct.TYPE_2__* %41, i32* %43, i64* %45)
  br label %47

47:                                               ; preds = %60, %26
  %48 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %49 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BUF_STATE_FULL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %55 = call i32 @sleep_thread(%struct.fsg_dev* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %125

60:                                               ; preds = %53
  br label %47

61:                                               ; preds = %47
  %62 = call i32 (...) @smp_rmb()
  %63 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %64 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %65 = call i32 @received_cbw(%struct.fsg_dev* %63, %struct.fsg_buffhd* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %67 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %68 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %123

69:                                               ; preds = %1
  br label %70

70:                                               ; preds = %82, %69
  %71 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %72 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %77 = call i32 @sleep_thread(%struct.fsg_dev* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %125

82:                                               ; preds = %75
  br label %70

83:                                               ; preds = %70
  %84 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %85 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %90 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %93 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @usb_ep_dequeue(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %88, %83
  %97 = load i32, i32* @DATA_DIR_UNKNOWN, align 4
  %98 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %99 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %101 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %100, i32 0, i32 2
  %102 = call i32 @spin_lock_irq(i32* %101)
  %103 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %104 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %107 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %109 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %112 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %115 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @memcpy(i32 %110, i32 %113, i64 %116)
  %118 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %119 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %121 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %120, i32 0, i32 2
  %122 = call i32 @spin_unlock_irq(i32* %121)
  br label %123

123:                                              ; preds = %96, %61
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %80, %58, %23
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i64 @transport_is_bbb(...) #1

declare dso_local i32 @sleep_thread(%struct.fsg_dev*) #1

declare dso_local i32 @set_bulk_out_req_length(%struct.fsg_dev*, %struct.fsg_buffhd*, i32) #1

declare dso_local i32 @start_transfer(%struct.fsg_dev*, i32, %struct.TYPE_2__*, i32*, i64*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @received_cbw(%struct.fsg_dev*, %struct.fsg_buffhd*) #1

declare dso_local i32 @usb_ep_dequeue(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
