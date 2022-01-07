; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_toplvl.c_amfs_toplvl_umount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_toplvl.c_amfs_toplvl_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.stat = type { i32 }

@MFF_ON_AUTOFS = common dso_local global i32 0, align 4
@AMU_UMOUNT_AUTOFS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"lstat(%s): %m\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"amfs_toplvl_umount: %s is not a directory, aborting.\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@mnttab_file_name = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"amfs_toplvl_unmount retrying %s in 1s\00", align 1
@gopt = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@CFM_FORCED_UNMOUNTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"enabling forced unmounts for toplvl node %s\00", align 1
@AMU_UMOUNT_FORCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"enabling detached unmounts for toplvl node %s\00", align 1
@AMU_UMOUNT_DETACH = common dso_local global i32 0, align 4
@MFF_IS_AUTOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amfs_toplvl_umount(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MFF_ON_AUTOFS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @AMU_UMOUNT_AUTOFS, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %92, %18
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @lstat(i32 %23, %struct.stat* %5)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dlog(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %94

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S_IFMT, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @S_IFDIR, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i32, i32* @XLOG_ERROR, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @plog(i32 %40, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENOTDIR, align 4
  store i32 %45, i32* %7, align 4
  br label %94

46:                                               ; preds = %32
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @mnttab_file_name, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @UMOUNT_FS(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @EBUSY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %46
  %57 = load i32, i32* @XLOG_WARNING, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @plog(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = call i32 @sleep(i32 1)
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gopt, i32 0, i32 0), align 4
  %66 = load i32, i32* @CFM_FORCED_UNMOUNTS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %56
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 5
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dlog(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @AMU_UMOUNT_FORCE, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %72, %69
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dlog(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @AMU_UMOUNT_DETACH, align 4
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %83, %80
  br label %92

92:                                               ; preds = %91, %56
  br label %20

93:                                               ; preds = %46
  br label %94

94:                                               ; preds = %93, %39, %26
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @dlog(i8*, i32) #1

declare dso_local i32 @plog(i32, i8*, i32) #1

declare dso_local i32 @UMOUNT_FS(i32, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
