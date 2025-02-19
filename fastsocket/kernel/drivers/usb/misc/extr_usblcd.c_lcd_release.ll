; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usblcd.c_lcd_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usblcd.c_lcd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.usb_lcd = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@lcd_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @lcd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.usb_lcd*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.usb_lcd*
  store %struct.usb_lcd* %10, %struct.usb_lcd** %6, align 8
  %11 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %12 = icmp eq %struct.usb_lcd* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %18 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_autopm_put_interface(i32 %19)
  %21 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %22 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %21, i32 0, i32 0
  %23 = load i32, i32* @lcd_delete, align 4
  %24 = call i32 @kref_put(i32* %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
