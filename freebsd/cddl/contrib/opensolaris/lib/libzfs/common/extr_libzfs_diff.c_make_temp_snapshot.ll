; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_diff.c_make_temp_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_diff.c_make_temp_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@ZDIFF_PREFIX = common dso_local global i8* null, align 8
@ZFS_IOC_TMP_SNAPSHOT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"The diff delegated permission is needed in order\0Ato create a just-in-time snapshot for diffing\0A\00", align 1
@EZFS_DIFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Cannot create just-in-time snapshot of '%s'\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @make_temp_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_temp_snapshot(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %4, align 8
  %12 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** @ZDIFF_PREFIX, align 8
  %16 = call i32 (...) @getpid()
  %17 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %14, i32 4, i8* %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlcpy(i32 %19, i32 %22, i32 4)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ZFS_IOC_TMP_SNAPSHOT, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, %struct.TYPE_12__* %5)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %1
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @EPERM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TEXT_DOMAIN, align 4
  %44 = call i8* @dgettext(i32 %43, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %42, i32 4, i8* %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = load i32, i32* @EZFS_DIFF, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @zfs_error(%struct.TYPE_13__* %46, i32 %47, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %84

52:                                               ; preds = %34
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TEXT_DOMAIN, align 4
  %57 = call i8* @dgettext(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %55, i32 4, i8* %57, i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @zfs_standard_error(%struct.TYPE_13__* %61, i32 %62, i32 %65)
  store i32 %66, i32* %2, align 4
  br label %84

67:                                               ; preds = %1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @zfs_strdup(%struct.TYPE_13__* %68, i32 %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @zfs_asprintf(%struct.TYPE_13__* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %67, %52, %39
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_12__*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @zfs_standard_error(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @zfs_strdup(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @zfs_asprintf(%struct.TYPE_13__*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
