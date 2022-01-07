; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_send_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_send_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"warning: cannot estimate space for '%s'\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"not an earlier snapshot from the same fs\00", align 1
@EZFS_CROSSTARGET = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"incremental source (%s) does not exist\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@EZFS_BADBACKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i32, i32*)* @zfs_send_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_send_space(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @lzc_send_space(i8* %22, i8* %23, i32 %24, i32* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %5
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %31 = load i32, i32* @TEXT_DOMAIN, align 4
  %32 = call i8* @dgettext(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @snprintf(i8* %30, i32 1024, i8* %32, i8* %33)
  %35 = load i32, i32* %13, align 4
  switch i32 %35, label %71 [
    i32 128, label %36
    i32 135, label %45
    i32 140, label %62
    i32 138, label %62
    i32 136, label %62
    i32 134, label %62
    i32 133, label %62
    i32 132, label %62
    i32 131, label %62
    i32 130, label %62
    i32 139, label %62
    i32 129, label %62
    i32 137, label %62
  ]

36:                                               ; preds = %29
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* @TEXT_DOMAIN, align 4
  %39 = call i8* @dgettext(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %37, i8* %39)
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %44 = call i32 @zfs_error(i32* %41, i32 %42, i8* %43)
  store i32 %44, i32* %6, align 4
  br label %77

45:                                               ; preds = %29
  %46 = load i32*, i32** %12, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %49 = call i32 @zfs_dataset_exists(i32* %46, i8* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* @TEXT_DOMAIN, align 4
  %54 = call i8* @dgettext(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %52, i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* @EZFS_NOENT, align 4
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %61 = call i32 @zfs_error(i32* %58, i32 %59, i8* %60)
  store i32 %61, i32* %6, align 4
  br label %77

62:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i8* @strerror(i32 %64)
  %66 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %63, i8* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* @EZFS_BADBACKUP, align 4
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %70 = call i32 @zfs_error(i32* %67, i32 %68, i8* %69)
  store i32 %70, i32* %6, align 4
  br label %77

71:                                               ; preds = %29
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %75 = call i32 @zfs_standard_error(i32* %72, i32 %73, i8* %74)
  store i32 %75, i32* %6, align 4
  br label %77

76:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %71, %62, %57, %36
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lzc_send_space(i8*, i8*, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i32 @zfs_dataset_exists(i32*, i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
