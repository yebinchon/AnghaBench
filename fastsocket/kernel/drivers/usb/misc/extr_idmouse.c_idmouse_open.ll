; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_idmouse.c_idmouse_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_idmouse.c_idmouse_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.usb_idmouse* }
%struct.usb_idmouse = type { i32, i64 }
%struct.usb_interface = type { i32 }

@idmouse_driver = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@open_disc_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @idmouse_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmouse_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.usb_idmouse*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  %11 = call %struct.usb_interface* @usb_find_interface(i32* @idmouse_driver, i32 %10)
  store %struct.usb_interface* %11, %struct.usb_interface** %7, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %13 = icmp ne %struct.usb_interface* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = call i32 @mutex_lock(i32* @open_disc_mutex)
  %19 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %20 = call %struct.usb_idmouse* @usb_get_intfdata(%struct.usb_interface* %19)
  store %struct.usb_idmouse* %20, %struct.usb_idmouse** %6, align 8
  %21 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %22 = icmp ne %struct.usb_idmouse* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = call i32 @mutex_unlock(i32* @open_disc_mutex)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %17
  %28 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %29 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = call i32 @mutex_unlock(i32* @open_disc_mutex)
  %32 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %33 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %61

39:                                               ; preds = %27
  %40 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %41 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %62

45:                                               ; preds = %39
  %46 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %47 = call i32 @idmouse_create_image(%struct.usb_idmouse* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %62

51:                                               ; preds = %45
  %52 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %53 = call i32 @usb_autopm_put_interface(%struct.usb_interface* %52)
  %54 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %55 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  store %struct.usb_idmouse* %58, %struct.usb_idmouse** %60, align 8
  br label %61

61:                                               ; preds = %51, %36
  br label %62

62:                                               ; preds = %61, %50, %44
  %63 = load %struct.usb_idmouse*, %struct.usb_idmouse** %6, align 8
  %64 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %23, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.usb_interface* @usb_find_interface(i32*, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.usb_idmouse* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.usb_interface*) #1

declare dso_local i32 @idmouse_create_image(%struct.usb_idmouse*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
