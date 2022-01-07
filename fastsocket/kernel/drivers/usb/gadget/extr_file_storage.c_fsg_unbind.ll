; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_fsg_unbind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_fsg_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.fsg_dev = type { i32, i64, i32, %struct.TYPE_2__*, i32, %struct.lun*, i32, %struct.usb_request* }
%struct.TYPE_2__ = type { i32 }
%struct.lun = type { i64, i32 }
%struct.usb_request = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unbind\0A\00", align 1
@REGISTERED = common dso_local global i32 0, align 4
@dev_attr_ro = common dso_local global i32 0, align 4
@dev_attr_file = common dso_local global i32 0, align 4
@FSG_STATE_TERMINATED = common dso_local global i64 0, align 8
@FSG_STATE_EXIT = common dso_local global i32 0, align 4
@NUM_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_gadget*)* @fsg_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsg_unbind(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lun*, align 8
  %6 = alloca %struct.usb_request*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %8 = call %struct.fsg_dev* @get_gadget_data(%struct.usb_gadget* %7)
  store %struct.fsg_dev* %8, %struct.fsg_dev** %3, align 8
  %9 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %10 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %9, i32 0, i32 7
  %11 = load %struct.usb_request*, %struct.usb_request** %10, align 8
  store %struct.usb_request* %11, %struct.usb_request** %6, align 8
  %12 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %13 = call i32 @DBG(%struct.fsg_dev* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @REGISTERED, align 4
  %15 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %16 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %15, i32 0, i32 6
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %50, %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %21 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  %25 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %26 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %25, i32 0, i32 5
  %27 = load %struct.lun*, %struct.lun** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lun, %struct.lun* %27, i64 %29
  store %struct.lun* %30, %struct.lun** %5, align 8
  %31 = load %struct.lun*, %struct.lun** %5, align 8
  %32 = getelementptr inbounds %struct.lun, %struct.lun* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %24
  %36 = load %struct.lun*, %struct.lun** %5, align 8
  %37 = getelementptr inbounds %struct.lun, %struct.lun* %36, i32 0, i32 1
  %38 = call i32 @device_remove_file(i32* %37, i32* @dev_attr_ro)
  %39 = load %struct.lun*, %struct.lun** %5, align 8
  %40 = getelementptr inbounds %struct.lun, %struct.lun* %39, i32 0, i32 1
  %41 = call i32 @device_remove_file(i32* %40, i32* @dev_attr_file)
  %42 = load %struct.lun*, %struct.lun** %5, align 8
  %43 = call i32 @close_backing_file(%struct.lun* %42)
  %44 = load %struct.lun*, %struct.lun** %5, align 8
  %45 = getelementptr inbounds %struct.lun, %struct.lun* %44, i32 0, i32 1
  %46 = call i32 @device_unregister(i32* %45)
  %47 = load %struct.lun*, %struct.lun** %5, align 8
  %48 = getelementptr inbounds %struct.lun, %struct.lun* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %35, %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %18

53:                                               ; preds = %18
  %54 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %55 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FSG_STATE_TERMINATED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %61 = load i32, i32* @FSG_STATE_EXIT, align 4
  %62 = call i32 @raise_exception(%struct.fsg_dev* %60, i32 %61)
  %63 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %64 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %63, i32 0, i32 4
  %65 = call i32 @wait_for_completion(i32* %64)
  %66 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %67 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %66, i32 0, i32 4
  %68 = call i32 @complete(i32* %67)
  br label %69

69:                                               ; preds = %59, %53
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %84, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @NUM_BUFFERS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %76 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kfree(i32 %82)
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %70

87:                                               ; preds = %70
  %88 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %89 = icmp ne %struct.usb_request* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %92 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @kfree(i32 %93)
  %95 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %96 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %99 = call i32 @usb_ep_free_request(i32 %97, %struct.usb_request* %98)
  br label %100

100:                                              ; preds = %90, %87
  %101 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %102 = call i32 @set_gadget_data(%struct.usb_gadget* %101, i32* null)
  ret void
}

declare dso_local %struct.fsg_dev* @get_gadget_data(%struct.usb_gadget*) #1

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @close_backing_file(%struct.lun*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @raise_exception(%struct.fsg_dev*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_ep_free_request(i32, %struct.usb_request*) #1

declare dso_local i32 @set_gadget_data(%struct.usb_gadget*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
