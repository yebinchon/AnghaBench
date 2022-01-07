; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_sys.c_gfs2_sys_fs_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_sys.c_gfs2_sys_fs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.TYPE_12__, i32, %struct.TYPE_10__, %struct.super_block* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.super_block = type { i32, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"RDONLY=%d\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SPECTATOR=%d\00", align 1
@gfs2_kset = common dso_local global i32 0, align 4
@gfs2_ktype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tune_group = common dso_local global i32 0, align 4
@lock_module_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"error %d adding sysfs files\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_sys_fs_add(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca [20 x i8], align 16
  %8 = alloca [3 x i8*], align 16
  %9 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 3
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* null, i8** %17, align 8
  store i32 0, i32* %9, align 4
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MS_RDONLY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @gfs2_kset, align 4
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %39 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %42 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %41, i32 0, i32 0
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %44 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kobject_init_and_add(%struct.TYPE_12__* %42, i32* @gfs2_ktype, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  br label %92

50:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  %51 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %52 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %51, i32 0, i32 0
  %53 = call i32 @sysfs_create_group(%struct.TYPE_12__* %52, i32* @tune_group)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %92

57:                                               ; preds = %50
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %59 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %58, i32 0, i32 0
  %60 = call i32 @sysfs_create_group(%struct.TYPE_12__* %59, i32* @lock_module_group)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %88

64:                                               ; preds = %57
  %65 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %66 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %65, i32 0, i32 0
  %67 = load %struct.super_block*, %struct.super_block** %4, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 2
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_13__* @disk_to_dev(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = call i32 @sysfs_create_link(%struct.TYPE_12__* %66, i32* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %84

78:                                               ; preds = %64
  %79 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %80 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %79, i32 0, i32 0
  %81 = load i32, i32* @KOBJ_ADD, align 4
  %82 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %83 = call i32 @kobject_uevent_env(%struct.TYPE_12__* %80, i32 %81, i8** %82)
  store i32 0, i32* %2, align 4
  br label %109

84:                                               ; preds = %77
  %85 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %86 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %85, i32 0, i32 0
  %87 = call i32 @sysfs_remove_group(%struct.TYPE_12__* %86, i32* @lock_module_group)
  br label %88

88:                                               ; preds = %84, %63
  %89 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %90 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %89, i32 0, i32 0
  %91 = call i32 @sysfs_remove_group(%struct.TYPE_12__* %90, i32* @tune_group)
  br label %92

92:                                               ; preds = %88, %56, %49
  %93 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @fs_err(%struct.gfs2_sbd* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %100 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %99, i32 0, i32 0
  %101 = call i32 @kobject_put(%struct.TYPE_12__* %100)
  br label %105

102:                                              ; preds = %92
  %103 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %104 = call i32 @kfree(%struct.gfs2_sbd* %103)
  br label %105

105:                                              ; preds = %102, %98
  %106 = load %struct.super_block*, %struct.super_block** %4, align 8
  %107 = getelementptr inbounds %struct.super_block, %struct.super_block* %106, i32 0, i32 1
  store i32* null, i32** %107, align 8
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %78
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_12__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @sysfs_create_group(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sysfs_create_link(%struct.TYPE_12__*, i32*, i8*) #1

declare dso_local %struct.TYPE_13__* @disk_to_dev(i32) #1

declare dso_local i32 @kobject_uevent_env(%struct.TYPE_12__*, i32, i8**) #1

declare dso_local i32 @sysfs_remove_group(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @kobject_put(%struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
