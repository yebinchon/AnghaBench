; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_psdev.c_coda_psdev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_psdev.c_coda_psdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_comm = type { i64, i32*, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.venus_comm* }

@MAX_CODADEVS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@coda_comms = common dso_local global %struct.venus_comm* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @coda_psdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_psdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.venus_comm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MAX_CODADEVS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %13
  %21 = call i32 (...) @lock_kernel()
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.venus_comm*, %struct.venus_comm** @coda_comms, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %24, i64 %26
  store %struct.venus_comm* %27, %struct.venus_comm** %6, align 8
  %28 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %29 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %20
  %33 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %34 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %38 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %37, i32 0, i32 4
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %41 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %40, i32 0, i32 3
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %44 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %43, i32 0, i32 2
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %47 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %49 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  store %struct.venus_comm* %50, %struct.venus_comm** %52, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %32, %20
  %54 = call i32 (...) @unlock_kernel()
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %17
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
