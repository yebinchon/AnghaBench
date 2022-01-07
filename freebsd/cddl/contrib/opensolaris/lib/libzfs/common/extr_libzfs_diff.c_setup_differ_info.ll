; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_diff.c_setup_differ_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_diff.c_setup_differ_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }

@ZFS_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, %struct.TYPE_6__*)* @setup_differ_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_differ_info(i32* %0, i8* %1, i8* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load i32, i32* @ZFS_DEV, align 4
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = load i32, i32* @O_EXCL, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @open(i32 %13, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @get_snapshot_names(%struct.TYPE_6__* %26, i8* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %43

32:                                               ; preds = %4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = call i64 @get_mountpoints(%struct.TYPE_6__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = call i64 @find_shares_object(%struct.TYPE_6__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %43

42:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %41, %36, %31
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @open(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @get_snapshot_names(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i64 @get_mountpoints(%struct.TYPE_6__*) #1

declare dso_local i64 @find_shares_object(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
