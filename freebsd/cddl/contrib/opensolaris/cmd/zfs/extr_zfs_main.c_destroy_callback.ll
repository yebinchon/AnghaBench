; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_destroy_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_destroy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"destroy\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"would destroy %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"will destroy %s\0A\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@g_zfs = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@MS_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @destroy_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @zfs_get_name(i32* %11)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %39

25:                                               ; preds = %17
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @printf(i8* %31, i8* %32)
  br label %38

34:                                               ; preds = %25
  %35 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @printf(i8* %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %22
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @zfs_get_name(i32* %41)
  %43 = call i32* @strchr(i8* %42, i8 signext 47)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @zfs_get_type(i32* %46)
  %48 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @zfs_close(i32* %51)
  store i32 0, i32* %3, align 4
  br label %115

53:                                               ; preds = %45, %40
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @zfs_close(i32* %59)
  store i32 0, i32* %3, align 4
  br label %115

61:                                               ; preds = %53
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @zfs_get_type(i32* %62)
  %64 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @fnvlist_add_boolean(i32 %69, i8* %70)
  br label %112

72:                                               ; preds = %61
  %73 = load i32, i32* @g_zfs, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @B_FALSE, align 4
  %78 = call i32 @zfs_destroy_snaps_nvl(i32 %73, i32 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @fnvlist_free(i32 %81)
  %83 = call i32 (...) @fnvlist_alloc()
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %72
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @MS_FORCE, align 4
  br label %97

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = call i64 @zfs_unmount(i32* %89, i32* null, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @zfs_destroy(i32* %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101, %97, %72
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @zfs_close(i32* %109)
  store i32 -1, i32* %3, align 4
  br label %115

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %66
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @zfs_close(i32* %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %108, %58, %50
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i8* @zfs_get_name(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @zfs_get_type(i32*) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i32 @fnvlist_add_boolean(i32, i8*) #1

declare dso_local i32 @zfs_destroy_snaps_nvl(i32, i32, i32) #1

declare dso_local i32 @fnvlist_free(i32) #1

declare dso_local i32 @fnvlist_alloc(...) #1

declare dso_local i64 @zfs_unmount(i32*, i32*, i32) #1

declare dso_local i64 @zfs_destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
