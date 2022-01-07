; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/extr_usb-skeleton.c_skel_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/extr_usb-skeleton.c_skel_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.usb_skel = type { i32, i32, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@skel_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @skel_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skel_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.usb_skel*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.usb_skel*
  store %struct.usb_skel* %10, %struct.usb_skel** %6, align 8
  %11 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %12 = icmp eq %struct.usb_skel* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %18 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %21 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %16
  %26 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %27 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %32 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @usb_autopm_put_interface(i64 %33)
  br label %35

35:                                               ; preds = %30, %25, %16
  %36 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %37 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %40 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %39, i32 0, i32 0
  %41 = load i32, i32* @skel_delete, align 4
  %42 = call i32 @kref_put(i32* %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
