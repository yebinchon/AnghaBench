; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32* }
%struct.sisusb_usb_data = type { i32, i32, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@sisusb_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sisusb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to %struct.sisusb_usb_data*
  store %struct.sisusb_usb_data* %10, %struct.sisusb_usb_data** %6, align 8
  %11 = icmp ne %struct.sisusb_usb_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %17 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %20 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %25 = call i32 @sisusb_wait_all_out_complete(%struct.sisusb_usb_data* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %29 = call i32 @sisusb_kill_all_busy(%struct.sisusb_usb_data* %28)
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %15
  %32 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %33 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %37 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  %40 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %39, i32 0, i32 0
  %41 = load i32, i32* @sisusb_delete, align 4
  %42 = call i32 @kref_put(i32* %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %31, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sisusb_wait_all_out_complete(%struct.sisusb_usb_data*) #1

declare dso_local i32 @sisusb_kill_all_busy(%struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
