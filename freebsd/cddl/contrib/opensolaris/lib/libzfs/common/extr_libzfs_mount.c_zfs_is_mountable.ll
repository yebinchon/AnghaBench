; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_is_mountable.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_is_mountable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@MAXNAMELEN = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_MOUNTPOINT_NONE = common dso_local global i32 0, align 4
@ZFS_MOUNTPOINT_LEGACY = common dso_local global i32 0, align 4
@ZFS_PROP_CANMOUNT = common dso_local global i32 0, align 4
@ZFS_CANMOUNT_OFF = common dso_local global i64 0, align 8
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64, i32*)* @zfs_is_mountable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_is_mountable(%struct.TYPE_5__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @MAXNAMELEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @zfs_prop_valid_for_type(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @B_FALSE, align 4
  store i32 %25, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %75

26:                                               ; preds = %4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %15 to i32
  %32 = load i32, i32* @B_FALSE, align 4
  %33 = call i64 @zfs_prop_get(%struct.TYPE_5__* %27, i32 %28, i8* %29, i64 %30, i32* %12, i8* %17, i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @verify(i32 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @ZFS_MOUNTPOINT_NONE, align 4
  %39 = call i64 @strcmp(i8* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %26
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @ZFS_MOUNTPOINT_LEGACY, align 4
  %44 = call i64 @strcmp(i8* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %26
  %47 = load i32, i32* @B_FALSE, align 4
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %75

48:                                               ; preds = %41
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = load i32, i32* @ZFS_PROP_CANMOUNT, align 4
  %51 = call i64 @zfs_prop_get_int(%struct.TYPE_5__* %49, i32 %50)
  %52 = load i64, i64* @ZFS_CANMOUNT_OFF, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @B_FALSE, align 4
  store i32 %55, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %75

56:                                               ; preds = %48
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %59 = call i64 @zfs_prop_get_int(%struct.TYPE_5__* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = call i64 (...) @getzoneid()
  %63 = load i64, i64* @GLOBAL_ZONEID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @B_FALSE, align 4
  store i32 %66, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %75

67:                                               ; preds = %61, %56
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* @B_TRUE, align 4
  store i32 %74, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %75

75:                                               ; preds = %73, %65, %54, %46, %24
  %76 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zfs_prop_valid_for_type(i32, i32) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @zfs_prop_get(%struct.TYPE_5__*, i32, i8*, i64, i32*, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_5__*, i32) #2

declare dso_local i64 @getzoneid(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
