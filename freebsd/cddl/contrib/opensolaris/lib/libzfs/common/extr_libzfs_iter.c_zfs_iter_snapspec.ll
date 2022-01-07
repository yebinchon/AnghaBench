; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_zfs_iter_snapspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_zfs_iter_snapspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_10__*, i8*)*, i8*, i8*, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@snapspec_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_iter_snapspec(%struct.TYPE_10__* %0, i8* %1, i32 (%struct.TYPE_10__*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.TYPE_10__*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.TYPE_10__*, i8*)* %2, i32 (%struct.TYPE_10__*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @zfs_strdup(i32 %24, i8* %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  store i8* %27, i8** %11, align 8
  br label %28

28:                                               ; preds = %147, %143, %82, %4
  %29 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %148

31:                                               ; preds = %28
  %32 = load i8*, i8** %10, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 37)
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %115

36:                                               ; preds = %31
  %37 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 48, i1 false)
  %38 = load i32 (%struct.TYPE_10__*, i8*)*, i32 (%struct.TYPE_10__*, i8*)** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 (%struct.TYPE_10__*, i8*)* %38, i32 (%struct.TYPE_10__*, i8*)** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 5
  store i8* %40, i8** %41, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @B_TRUE, align 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  br label %51

48:                                               ; preds = %36
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i8*, i8** %14, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %51
  %63 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %16, align 8
  %66 = alloca i8, i64 %64, align 16
  store i64 %64, i64* %17, align 8
  %67 = trunc i64 %64 to i32
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = call i8* @zfs_get_name(%struct.TYPE_10__* %68)
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @snprintf(i8* %66, i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %77 = call i32 @zfs_dataset_exists(i32 %75, i8* %66, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %62
  %80 = load i32, i32* @ENOENT, align 4
  store i32 %80, i32* %13, align 4
  store i32 2, i32* %18, align 4
  br label %82

81:                                               ; preds = %62
  store i32 0, i32* %18, align 4
  br label %82

82:                                               ; preds = %81, %79
  %83 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %18, align 4
  switch i32 %84, label %152 [
    i32 0, label %85
    i32 2, label %28
  ]

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85, %51
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = load i32, i32* @snapspec_cb, align 4
  %89 = call i32 @zfs_iter_snapshots_sorted(%struct.TYPE_10__* %87, i32 %88, %struct.TYPE_11__* %15, i32 0, i32 0)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %92, %86
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108, %97
  %113 = load i32, i32* @ENOENT, align 4
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %112, %108, %101, %94
  br label %147

115:                                              ; preds = %31
  %116 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %117 = zext i32 %116 to i64
  %118 = call i8* @llvm.stacksave()
  store i8* %118, i8** %19, align 8
  %119 = alloca i8, i64 %117, align 16
  store i64 %117, i64* %20, align 8
  %120 = trunc i64 %117 to i32
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = call i8* @zfs_get_name(%struct.TYPE_10__* %121)
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @snprintf(i8* %119, i32 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %122, i8* %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.TYPE_10__* @make_dataset_handle(i32 %127, i8* %119)
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %21, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %130 = icmp eq %struct.TYPE_10__* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %115
  %132 = load i32, i32* @ENOENT, align 4
  store i32 %132, i32* %13, align 4
  store i32 2, i32* %18, align 4
  br label %143

133:                                              ; preds = %115
  %134 = load i32 (%struct.TYPE_10__*, i8*)*, i32 (%struct.TYPE_10__*, i8*)** %7, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 %134(%struct.TYPE_10__* %135, i8* %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %140, %133
  store i32 0, i32* %18, align 4
  br label %143

143:                                              ; preds = %142, %131
  %144 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %18, align 4
  switch i32 %145, label %152 [
    i32 0, label %146
    i32 2, label %28
  ]

146:                                              ; preds = %143
  br label %147

147:                                              ; preds = %146, %114
  br label %28

148:                                              ; preds = %28
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @free(i8* %149)
  %151 = load i32, i32* %13, align 4
  ret i32 %151

152:                                              ; preds = %143, %82
  unreachable
}

declare dso_local i8* @zfs_strdup(i32, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @zfs_get_name(%struct.TYPE_10__*) #1

declare dso_local i32 @zfs_dataset_exists(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @zfs_iter_snapshots_sorted(%struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @make_dataset_handle(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
