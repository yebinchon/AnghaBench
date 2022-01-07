; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_get_clones_nvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_get_clones_nvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, i32 }
%struct.get_clones_arg = type { i64, i32, i32* }

@ZFS_PROP_CLONES = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZFS_PROP_NUMCLONES = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZPROP_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zfs_get_clones_nvl(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.get_clones_arg, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @ZFS_PROP_CLONES, align 4
  %15 = call i32 @zfs_prop_to_name(i32 %14)
  %16 = call i64 @nvlist_lookup_nvlist(i32* %13, i32 %15, i32** %4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %108

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32* null, i32** %2, align 8
  br label %116

25:                                               ; preds = %18
  %26 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %27 = call i64 @nvlist_alloc(i32** %4, i32 %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32* null, i32** %2, align 8
  br label %116

30:                                               ; preds = %25
  %31 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %32 = call i64 @nvlist_alloc(i32** %5, i32 %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @nvlist_free(i32* %35)
  store i32* null, i32** %2, align 8
  br label %116

37:                                               ; preds = %30
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = load i32, i32* @ZFS_PROP_NUMCLONES, align 4
  %40 = call i64 @zfs_prop_get_int(%struct.TYPE_6__* %38, i32 %39)
  %41 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %6, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %6, i32 0, i32 2
  store i32* %42, i32** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %37
  %52 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %8, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %9, align 8
  store i8* %55, i8** %10, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = trunc i64 %53 to i32
  %60 = call i32 @strlcpy(i8* %55, i32 %58, i32 %59)
  %61 = call i32 @strsep(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %66 = call %struct.TYPE_6__* @zfs_open(i32 %64, i8* %55, i32 %65)
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %7, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = call i32 @get_clones_cb(%struct.TYPE_6__* %67, %struct.get_clones_arg* %6)
  %69 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %69)
  br label %70

70:                                               ; preds = %51, %37
  %71 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %6, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @ZPROP_VALUE, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = call i64 @nvlist_add_nvlist(i32* %75, i32 %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @ZFS_PROP_CLONES, align 4
  %85 = call i32 @zfs_prop_to_name(i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @nvlist_add_nvlist(i32* %83, i32 %85, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %80, %74, %70
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @nvlist_free(i32* %90)
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @nvlist_free(i32* %92)
  store i32* null, i32** %2, align 8
  br label %116

94:                                               ; preds = %80
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @nvlist_free(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @nvlist_free(i32* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @ZFS_PROP_CLONES, align 4
  %103 = call i32 @zfs_prop_to_name(i32 %102)
  %104 = call i64 @nvlist_lookup_nvlist(i32* %101, i32 %103, i32** %4)
  %105 = icmp eq i64 0, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @verify(i32 %106)
  br label %108

108:                                              ; preds = %94, %1
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* @ZPROP_VALUE, align 4
  %111 = call i64 @nvlist_lookup_nvlist(i32* %109, i32 %110, i32** %5)
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @verify(i32 %113)
  %115 = load i32*, i32** %5, align 8
  store i32* %115, i32** %2, align 8
  br label %116

116:                                              ; preds = %108, %89, %34, %29, %24
  %117 = load i32*, i32** %2, align 8
  ret i32* %117
}

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_6__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local %struct.TYPE_6__* @zfs_open(i32, i8*, i32) #1

declare dso_local i32 @get_clones_cb(%struct.TYPE_6__*, %struct.get_clones_arg*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @verify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
