; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_inode.c_get_device_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_inode.c_get_device_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_mount_data = type { i64, i32 }
%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"coda_read_super: Bad mount data\0A\00", align 1
@CODA_MOUNT_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"coda_read_super: Bad mount version\0A\00", align 1
@CODA_PSDEV_MAJOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"coda_read_super: Bad file\0A\00", align 1
@MAX_CODADEVS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"coda_read_super: Bad minor number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_mount_data*)* @get_device_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_device_index(%struct.coda_mount_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_mount_data*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.coda_mount_data* %0, %struct.coda_mount_data** %3, align 8
  %7 = load %struct.coda_mount_data*, %struct.coda_mount_data** %3, align 8
  %8 = icmp eq %struct.coda_mount_data* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

11:                                               ; preds = %1
  %12 = load %struct.coda_mount_data*, %struct.coda_mount_data** %3, align 8
  %13 = getelementptr inbounds %struct.coda_mount_data, %struct.coda_mount_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CODA_MOUNT_VERSION, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

19:                                               ; preds = %11
  %20 = load %struct.coda_mount_data*, %struct.coda_mount_data** %3, align 8
  %21 = getelementptr inbounds %struct.coda_mount_data, %struct.coda_mount_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.file* @fget(i32 %22)
  store %struct.file* %23, %struct.file** %4, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = icmp ne %struct.file* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.inode*, %struct.inode** %31, align 8
  store %struct.inode* %32, %struct.inode** %5, align 8
  br label %33

33:                                               ; preds = %26, %19
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = icmp ne %struct.inode* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @S_ISCHR(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i64 @imajor(%struct.inode* %43)
  %45 = load i64, i64* @CODA_PSDEV_MAJOR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42, %36, %33
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = icmp ne %struct.file* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = call i32 @fput(%struct.file* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

55:                                               ; preds = %42
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = call i32 @iminor(%struct.inode* %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.file*, %struct.file** %4, align 8
  %59 = call i32 @fput(%struct.file* %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MAX_CODADEVS, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %55
  %67 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %66, %53, %17, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i64 @imajor(%struct.inode*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
