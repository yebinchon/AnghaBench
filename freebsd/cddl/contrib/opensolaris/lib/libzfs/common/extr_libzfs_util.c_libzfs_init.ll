; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_libzfs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_libzfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i32 }

@ZFS_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@MNTTAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ZFS_EXPORTS_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ZFS_PROP_DEBUG\00", align 1
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @libzfs_init() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = call %struct.TYPE_6__* @calloc(i32 1, i32 32)
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %2, align 8
  %4 = icmp eq %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %73

6:                                                ; preds = %0
  %7 = call i64 (...) @libzfs_load()
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = call i32 @free(%struct.TYPE_6__* %10)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %73

12:                                               ; preds = %6
  %13 = load i32, i32* @ZFS_DEV, align 4
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = call i32 @open(i32 %13, i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = icmp slt i32 %15, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = call i32 @free(%struct.TYPE_6__* %20)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %73

22:                                               ; preds = %12
  %23 = load i32, i32* @MNTTAB, align 4
  %24 = call i8* @fopen(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = icmp eq i32* %25, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @close(i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = call i32 @free(%struct.TYPE_6__* %34)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %73

36:                                               ; preds = %22
  %37 = load i32, i32* @ZFS_EXPORTS_PATH, align 4
  %38 = call i8* @fopen(i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = call i64 (...) @libzfs_core_init()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @close(i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @fclose(i32* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = call i32 @free(%struct.TYPE_6__* %57)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %73

59:                                               ; preds = %36
  %60 = call i32 (...) @zfs_prop_init()
  %61 = call i32 (...) @zpool_prop_init()
  %62 = call i32 (...) @zpool_feature_init()
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = call i32 @libzfs_mnttab_init(%struct.TYPE_6__* %63)
  %65 = call i32* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @B_TRUE, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %59
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %1, align 8
  br label %73

73:                                               ; preds = %71, %44, %29, %19, %9, %5
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %74
}

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i64 @libzfs_load(...) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i8* @fopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @libzfs_core_init(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @zfs_prop_init(...) #1

declare dso_local i32 @zpool_prop_init(...) #1

declare dso_local i32 @zpool_feature_init(...) #1

declare dso_local i32 @libzfs_mnttab_init(%struct.TYPE_6__*) #1

declare dso_local i32* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
