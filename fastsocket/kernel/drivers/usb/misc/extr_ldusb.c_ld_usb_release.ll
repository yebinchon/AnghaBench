; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ldusb.c_ld_usb_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ldusb.c_ld_usb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ld_usb* }
%struct.ld_usb = type { i32, i32, i64, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ld_usb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ld_usb_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ld_usb*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.ld_usb*, %struct.ld_usb** %8, align 8
  store %struct.ld_usb* %9, %struct.ld_usb** %5, align 8
  %10 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %11 = icmp eq %struct.ld_usb* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  br label %69

15:                                               ; preds = %2
  %16 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %17 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %16, i32 0, i32 1
  %18 = call i64 @mutex_lock_interruptible(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ERESTARTSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %69

23:                                               ; preds = %15
  %24 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %25 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %65

31:                                               ; preds = %23
  %32 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %33 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %38 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %41 = call i32 @ld_usb_delete(%struct.ld_usb* %40)
  br label %69

42:                                               ; preds = %31
  %43 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %44 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %49 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %52 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @HZ, align 4
  %58 = mul nsw i32 2, %57
  %59 = call i32 @wait_event_interruptible_timeout(i32 %50, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %47, %42
  %61 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %62 = call i32 @ld_usb_abort_transfers(%struct.ld_usb* %61)
  %63 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %64 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %60, %28
  %66 = load %struct.ld_usb*, %struct.ld_usb** %5, align 8
  %67 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %65, %36, %20, %12
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ld_usb_delete(%struct.ld_usb*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @ld_usb_abort_transfers(%struct.ld_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
