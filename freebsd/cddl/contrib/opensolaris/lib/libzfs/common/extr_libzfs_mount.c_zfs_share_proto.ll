; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_share_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_share_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@PROTO_END = common dso_local global i64 0, align 8
@proto_table = common dso_local global %struct.TYPE_12__* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@PROTO_NFS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unsupported share protocol: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@ZFS_EXPORTS_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"cannot share '%s'\00", align 1
@EZFS_SHARENFSFAILED = common dso_local global i32 0, align 4
@SA_INIT_ONE_SHARE_FROM_HANDLE = common dso_local global i32 0, align 4
@SA_OK = common dso_local global i32 0, align 4
@share = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64*)* @zfs_share_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_share_proto(%struct.TYPE_13__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64* %1, i64** %5, align 8
  %16 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %23 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %10, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = trunc i64 %17 to i32
  %31 = call i32 @zfs_is_mountable(%struct.TYPE_13__* %29, i8* %19, i32 %30, i32* null)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %104

34:                                               ; preds = %2
  %35 = load i64*, i64** %5, align 8
  store i64* %35, i64** %11, align 8
  br label %36

36:                                               ; preds = %100, %34
  %37 = load i64*, i64** %11, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PROTO_END, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %103

41:                                               ; preds = %36
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @proto_table, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = trunc i64 %21 to i32
  %50 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %51 = load i32, i32* @B_FALSE, align 4
  %52 = call i64 @zfs_prop_get(%struct.TYPE_13__* %42, i32 %48, i8* %22, i32 %49, i32* %12, i8* %25, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %41
  br label %100

58:                                               ; preds = %54
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %61 = call i64 @zfs_prop_get_int(%struct.TYPE_13__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %100

64:                                               ; preds = %58
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PROTO_NFS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* @stderr, align 4
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  br label %100

74:                                               ; preds = %64
  %75 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @ZFS_EXPORTS_PATH, align 4
  %79 = call i32 @fsshare(i32 %78, i8* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 %79, i32* %13, align 4
  br label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @ZFS_EXPORTS_PATH, align 4
  %82 = call i32 @fsshare(i32 %81, i8* %19, i8* %22)
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @proto_table, align 8
  %89 = load i64*, i64** %11, align 8
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @TEXT_DOMAIN, align 4
  %95 = call i32 @dgettext(i32 %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = call i32 @zfs_get_name(%struct.TYPE_13__* %96)
  %98 = call i32 (%struct.TYPE_14__*, i32, i32, i32, ...) @zfs_error_fmt(%struct.TYPE_14__* %87, i32 %93, i32 %95, i32 %97)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %104

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %69, %63, %57
  %101 = load i64*, i64** %11, align 8
  %102 = getelementptr inbounds i64, i64* %101, i32 1
  store i64* %102, i64** %11, align 8
  br label %36

103:                                              ; preds = %36
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %104

104:                                              ; preds = %103, %86, %33
  %105 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zfs_is_mountable(%struct.TYPE_13__*, i8*, i32, i32*) #2

declare dso_local i64 @zfs_prop_get(%struct.TYPE_13__*, i32, i8*, i32, i32*, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i64) #2

declare dso_local i32 @fsshare(i32, i8*, i8*) #2

declare dso_local i32 @zfs_error_fmt(%struct.TYPE_14__*, i32, i32, i32, ...) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_get_name(%struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
