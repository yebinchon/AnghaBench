; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_mount_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_mount_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 (i32*, i32)*, i32, i32, i32, i32** }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zfs_mount_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_mount_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 6
  %20 = load i32**, i32*** %19, align 8
  store i32** %20, i32*** %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %28 = load i32**, i32*** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %34 = trunc i64 %25 to i32
  %35 = load i32, i32* @B_FALSE, align 4
  %36 = call i64 @zfs_prop_get(i32* %32, i32 %33, i8* %27, i32 %34, i32* null, i32* null, i32 0, i32 %35)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @verify(i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64 (i32*, i32)*, i64 (i32*, i32)** %41, align 8
  %43 = load i32**, i32*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i64 %42(i32* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %111

54:                                               ; preds = %1
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %103, %54
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %6, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %108

62:                                               ; preds = %57
  %63 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %11, align 8
  %66 = alloca i8, i64 %64, align 16
  store i64 %64, i64* %12, align 8
  %67 = load i32**, i32*** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %73 = trunc i64 %64 to i32
  %74 = load i32, i32* @B_FALSE, align 4
  %75 = call i64 @zfs_prop_get(i32* %71, i32 %72, i8* %66, i32 %73, i32* null, i32* null, i32 0, i32 %74)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @verify(i32 %77)
  %79 = call i32 @libzfs_path_contains(i8* %27, i8* %66)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %62
  store i32 2, i32* %9, align 4
  br label %99

82:                                               ; preds = %62
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load i32**, i32*** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i64 (i32*, i32)*, i64 (i32*, i32)** %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @zfs_dispatch_mount(i32 %85, i32** %86, i64 %87, i32 %88, i64 (i32*, i32)* %91, i32 %94, i32 %97)
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %82, %81
  %100 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %9, align 4
  switch i32 %101, label %115 [
    i32 0, label %102
    i32 2, label %108
  ]

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %102
  %104 = load i32**, i32*** %5, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @non_descendant_idx(i32** %104, i64 %105, i32 %106)
  store i32 %107, i32* %10, align 4
  br label %57

108:                                              ; preds = %99, %57
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = call i32 @free(%struct.TYPE_3__* %109)
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %108, %53
  %112 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %9, align 4
  switch i32 %113, label %115 [
    i32 0, label %114
    i32 1, label %114
  ]

114:                                              ; preds = %111, %111
  ret void

115:                                              ; preds = %111, %99
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @libzfs_path_contains(i8*, i8*) #2

declare dso_local i32 @zfs_dispatch_mount(i32, i32**, i64, i32, i64 (i32*, i32)*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @non_descendant_idx(i32**, i64, i32) #2

declare dso_local i32 @free(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
