; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_destroy_snaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_destroy_snaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.destroydata = type { i8*, i32, i32 }

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot destroy '%s@%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_destroy_snaps(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.destroydata, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.destroydata* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds %struct.destroydata, %struct.destroydata* %8, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.destroydata, %struct.destroydata* %8, i32 0, i32 1
  %13 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %14 = call i64 @nvlist_alloc(i32* %12, i32 %13, i32 0)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @verify(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = call i32 @zfs_handle_dup(%struct.TYPE_4__* %18)
  %20 = call i32 @zfs_check_snap_cb(i32 %19, %struct.destroydata* %8)
  %21 = getelementptr inbounds %struct.destroydata, %struct.destroydata* %8, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @nvlist_empty(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = load i32, i32* @TEXT_DOMAIN, align 4
  %31 = call i32 @dgettext(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @zfs_standard_error_fmt(i32 %28, i32 %29, i32 %31, i32 %34, i8* %35)
  store i32 %36, i32* %7, align 4
  br label %45

37:                                               ; preds = %3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.destroydata, %struct.destroydata* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @zfs_destroy_snaps_nvl(i32 %40, i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %25
  %46 = getelementptr inbounds %struct.destroydata, %struct.destroydata* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @nvlist_free(i32 %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_alloc(i32*, i32, i32) #2

declare dso_local i32 @zfs_check_snap_cb(i32, %struct.destroydata*) #2

declare dso_local i32 @zfs_handle_dup(%struct.TYPE_4__*) #2

declare dso_local i64 @nvlist_empty(i32) #2

declare dso_local i32 @zfs_standard_error_fmt(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_destroy_snaps_nvl(i32, i32, i32) #2

declare dso_local i32 @nvlist_free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
