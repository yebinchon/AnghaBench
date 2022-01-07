; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_fsg_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_fsg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }
%struct.fsg_dev = type { i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"ep0-setup\00", align 1
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@DELAYED_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ep0-in\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ep0-out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_ctrlrequest*)* @fsg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_setup(%struct.usb_gadget* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.fsg_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %9 = call %struct.fsg_dev* @get_gadget_data(%struct.usb_gadget* %8)
  store %struct.fsg_dev* %9, %struct.fsg_dev** %5, align 8
  %10 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %11 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %15 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %19 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %23 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %27 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %28 = bitcast %struct.usb_ctrlrequest* %27 to i32*
  %29 = call i32 @dump_msg(%struct.fsg_dev* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %28, i32 8)
  %30 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %31 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @USB_TYPE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @USB_TYPE_CLASS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %39 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %40 = call i32 @class_setup_req(%struct.fsg_dev* %38, %struct.usb_ctrlrequest* %39)
  store i32 %40, i32* %6, align 4
  br label %45

41:                                               ; preds = %2
  %42 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %43 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %44 = call i32 @standard_setup_req(%struct.fsg_dev* %42, %struct.usb_ctrlrequest* %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @DELAYED_STATUS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @min(i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %58 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %66 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %70 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @USB_DIR_IN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %77 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %78 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %80 = call i32 @ep0_queue(%struct.fsg_dev* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %52, %48, %45
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.fsg_dev* @get_gadget_data(%struct.usb_gadget*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dump_msg(%struct.fsg_dev*, i8*, i32*, i32) #1

declare dso_local i32 @class_setup_req(%struct.fsg_dev*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @standard_setup_req(%struct.fsg_dev*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ep0_queue(%struct.fsg_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
