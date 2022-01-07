; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_gather_nvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_gather_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32*, i8*, i8*, i8*, i32 }

@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@EZFS_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32**, i32**)* @gather_nvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather_nvlist(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32** %7, i32** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32** %7, i32*** %18, align 8
  store i32** %8, i32*** %19, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %25 = bitcast %struct.TYPE_3__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 64, i1 false)
  %26 = load i32*, i32** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %29 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %30 = or i32 %28, %29
  %31 = call i32* @zfs_open(i32* %26, i8* %27, i32 %30)
  store i32* %31, i32** %20, align 8
  %32 = load i32*, i32** %20, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %9
  %35 = load i32, i32* @EZFS_BADTYPE, align 4
  store i32 %35, i32* %10, align 4
  br label %88

36:                                               ; preds = %9
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %38 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %39 = call i64 @nvlist_alloc(i32** %37, i32 %38, i32 0)
  %40 = icmp eq i64 0, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @VERIFY(i32 %41)
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = load i32*, i32** %20, align 8
  %56 = call i32 @send_iterate_fs(i32* %55, %struct.TYPE_3__* %24)
  store i32 %56, i32* %21, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %36
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @nvlist_free(i32* %60)
  %62 = load i32**, i32*** %19, align 8
  %63 = icmp ne i32** %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32**, i32*** %19, align 8
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %64, %58
  %67 = load i32**, i32*** %18, align 8
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* %21, align 4
  store i32 %68, i32* %10, align 4
  br label %88

69:                                               ; preds = %36
  %70 = load i32**, i32*** %19, align 8
  %71 = icmp ne i32** %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i32* @fsavl_create(i32* %74)
  %76 = load i32**, i32*** %19, align 8
  store i32* %75, i32** %76, align 8
  %77 = icmp eq i32* %75, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @nvlist_free(i32* %80)
  %82 = load i32**, i32*** %18, align 8
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* @EZFS_NOMEM, align 4
  store i32 %83, i32* %10, align 4
  br label %88

84:                                               ; preds = %72, %69
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32**, i32*** %18, align 8
  store i32* %86, i32** %87, align 8
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %84, %78, %66, %34
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @zfs_open(i32*, i8*, i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @send_iterate_fs(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32* @fsavl_create(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
