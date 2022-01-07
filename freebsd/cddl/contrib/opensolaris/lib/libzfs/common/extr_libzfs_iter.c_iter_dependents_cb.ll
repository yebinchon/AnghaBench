; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_iter_dependents_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_iter_dependents_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_19__*, i32)*, i32, %struct.TYPE_20__*, i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_20__*, %struct.TYPE_19__* }

@B_FALSE = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@ZFS_TYPE_BOOKMARK = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"recursive dependency at '%s'\00", align 1
@EZFS_RECURSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot determine dependent datasets\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*)* @iter_dependents_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_dependents_cb(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @B_FALSE, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = call i32 @zfs_iter_clones(%struct.TYPE_19__* %25, i32 (%struct.TYPE_19__*, i8*)* @iter_dependents_cb, %struct.TYPE_21__* %26)
  store i32 %27, i32* %7, align 4
  br label %110

28:                                               ; preds = %2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ZFS_TYPE_BOOKMARK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %109

34:                                               ; preds = %28
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %10, align 8
  br label %38

38:                                               ; preds = %81, %34
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %40 = icmp ne %struct.TYPE_20__* %39, null
  br i1 %40, label %41, label %85

41:                                               ; preds = %38
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %41
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = call i32 @zfs_close(%struct.TYPE_19__* %59)
  store i32 0, i32* %3, align 4
  br label %130

61:                                               ; preds = %53
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TEXT_DOMAIN, align 4
  %66 = call i32 @dgettext(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = call i32 @zfs_get_name(%struct.TYPE_19__* %67)
  %69 = call i32 @zfs_error_aux(i32 %64, i32 %66, i32 %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @EZFS_RECURSIVE, align 4
  %74 = load i32, i32* @TEXT_DOMAIN, align 4
  %75 = call i32 @dgettext(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @zfs_error(i32 %72, i32 %73, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = call i32 @zfs_close(%struct.TYPE_19__* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %130

80:                                               ; preds = %41
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  store %struct.TYPE_20__* %84, %struct.TYPE_20__** %10, align 8
  br label %38

85:                                               ; preds = %38
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store %struct.TYPE_19__* %86, %struct.TYPE_19__** %87, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store %struct.TYPE_20__* %90, %struct.TYPE_20__** %91, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %93, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = call i32 @zfs_iter_filesystems(%struct.TYPE_19__* %94, i32 (%struct.TYPE_19__*, i8*)* @iter_dependents_cb, %struct.TYPE_21__* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %85
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = load i32, i32* @B_FALSE, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %103 = call i32 @zfs_iter_snapshots(%struct.TYPE_19__* %100, i32 %101, i32 (%struct.TYPE_19__*, i8*)* @iter_dependents_cb, %struct.TYPE_21__* %102, i32 0, i32 0)
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %99, %85
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %108, align 8
  br label %109

109:                                              ; preds = %104, %28
  br label %110

110:                                              ; preds = %109, %24
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %118, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 %119(%struct.TYPE_19__* %120, i32 %123)
  store i32 %124, i32* %7, align 4
  br label %128

125:                                              ; preds = %113, %110
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %127 = call i32 @zfs_close(%struct.TYPE_19__* %126)
  br label %128

128:                                              ; preds = %125, %116
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %61, %58
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @zfs_iter_clones(%struct.TYPE_19__*, i32 (%struct.TYPE_19__*, i8*)*, %struct.TYPE_21__*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_19__*) #1

declare dso_local i32 @zfs_error_aux(i32, i32, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_get_name(%struct.TYPE_19__*) #1

declare dso_local i32 @zfs_error(i32, i32, i32) #1

declare dso_local i32 @zfs_iter_filesystems(%struct.TYPE_19__*, i32 (%struct.TYPE_19__*, i8*)*, %struct.TYPE_21__*) #1

declare dso_local i32 @zfs_iter_snapshots(%struct.TYPE_19__*, i32, i32 (%struct.TYPE_19__*, i8*)*, %struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
