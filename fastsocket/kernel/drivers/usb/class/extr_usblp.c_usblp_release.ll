; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.usblp* }
%struct.usblp = type { i32, i64, i64, i32 }

@LP_ABORT = common dso_local global i32 0, align 4
@usblp_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @usblp_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.usblp*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.usblp*, %struct.usblp** %7, align 8
  store %struct.usblp* %8, %struct.usblp** %5, align 8
  %9 = load i32, i32* @LP_ABORT, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.usblp*, %struct.usblp** %5, align 8
  %12 = getelementptr inbounds %struct.usblp, %struct.usblp* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = call i32 @mutex_lock(i32* @usblp_mutex)
  %16 = load %struct.usblp*, %struct.usblp** %5, align 8
  %17 = getelementptr inbounds %struct.usblp, %struct.usblp* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.usblp*, %struct.usblp** %5, align 8
  %19 = getelementptr inbounds %struct.usblp, %struct.usblp* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.usblp*, %struct.usblp** %5, align 8
  %24 = call i32 @usblp_unlink_urbs(%struct.usblp* %23)
  %25 = load %struct.usblp*, %struct.usblp** %5, align 8
  %26 = getelementptr inbounds %struct.usblp, %struct.usblp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_autopm_put_interface(i32 %27)
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.usblp*, %struct.usblp** %5, align 8
  %31 = call i32 @usblp_cleanup(%struct.usblp* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = call i32 @mutex_unlock(i32* @usblp_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usblp_unlink_urbs(%struct.usblp*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @usblp_cleanup(%struct.usblp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
