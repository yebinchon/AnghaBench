; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_cuse.c_cuse_channel_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_cuse.c_cuse_channel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.cuse_conn = type { %struct.TYPE_3__, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cuse_fc_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cuse_channel_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_channel_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.cuse_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cuse_conn* @kzalloc(i32 32, i32 %8)
  store %struct.cuse_conn* %9, %struct.cuse_conn** %6, align 8
  %10 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %11 = icmp ne %struct.cuse_conn* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %17 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %16, i32 0, i32 0
  %18 = call i32 @fuse_conn_init(%struct.TYPE_3__* %17)
  %19 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %20 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %19, i32 0, i32 1
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load i32, i32* @cuse_fc_release, align 4
  %23 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %24 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %27 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %30 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %33 = call i32 @cuse_send_init(%struct.cuse_conn* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %15
  %37 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %38 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %37, i32 0, i32 0
  %39 = call i32 @fuse_conn_put(%struct.TYPE_3__* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %15
  %42 = load %struct.cuse_conn*, %struct.cuse_conn** %6, align 8
  %43 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %42, i32 0, i32 0
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %36, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.cuse_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @fuse_conn_init(%struct.TYPE_3__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cuse_send_init(%struct.cuse_conn*) #1

declare dso_local i32 @fuse_conn_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
