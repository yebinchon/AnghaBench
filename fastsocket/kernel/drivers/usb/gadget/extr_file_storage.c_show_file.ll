; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_show_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_show_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lun = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fsg_dev = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @show_file(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lun*, align 8
  %8 = alloca %struct.fsg_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.lun* @dev_to_lun(%struct.device* %11)
  store %struct.lun* %12, %struct.lun** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.fsg_dev* @dev_get_drvdata(%struct.device* %13)
  store %struct.fsg_dev* %14, %struct.fsg_dev** %8, align 8
  %15 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %16 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %15, i32 0, i32 0
  %17 = call i32 @down_read(i32* %16)
  %18 = load %struct.lun*, %struct.lun** %7, align 8
  %19 = call i64 @backing_file_is_open(%struct.lun* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %3
  %22 = load %struct.lun*, %struct.lun** %7, align 8
  %23 = getelementptr inbounds %struct.lun, %struct.lun* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = sub nsw i64 %27, 1
  %29 = call i8* @d_path(i32* %25, i8* %26, i64 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @PTR_ERR(i8* %34)
  store i64 %35, i64* %10, align 8
  br label %50

36:                                               ; preds = %21
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @memmove(i8* %39, i8* %40, i64 %41)
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 10, i8* %45, align 1
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %36, %33
  br label %53

51:                                               ; preds = %3
  %52 = load i8*, i8** %6, align 8
  store i8 0, i8* %52, align 1
  store i64 0, i64* %10, align 8
  br label %53

53:                                               ; preds = %51, %50
  %54 = load %struct.fsg_dev*, %struct.fsg_dev** %8, align 8
  %55 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %54, i32 0, i32 0
  %56 = call i32 @up_read(i32* %55)
  %57 = load i64, i64* %10, align 8
  ret i64 %57
}

declare dso_local %struct.lun* @dev_to_lun(%struct.device*) #1

declare dso_local %struct.fsg_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @backing_file_is_open(%struct.lun*) #1

declare dso_local i8* @d_path(i32*, i8*, i64) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
