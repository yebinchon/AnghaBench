; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_path_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_path_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.fs_struct* }
%struct.fs_struct = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dentry*, i32* }
%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nameidata = type { i32, %struct.TYPE_5__, %struct.TYPE_5__, i64, i32 }
%struct.file = type { %struct.TYPE_5__ }

@LAST_ROOT = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@EBADF = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, %struct.nameidata*)* @path_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_init(i32 %0, i8* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.fs_struct*, align 8
  %14 = alloca %struct.dentry*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @LAST_ROOT, align 4
  %16 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %17 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %32 = call i32 @set_root(%struct.nameidata* %31)
  %33 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %33, i32 0, i32 1
  %35 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %36 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %35, i32 0, i32 2
  %37 = bitcast %struct.TYPE_5__* %34 to i8*
  %38 = bitcast %struct.TYPE_5__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %39, i32 0, i32 2
  %41 = call i32 @path_get(%struct.TYPE_5__* %40)
  br label %118

42:                                               ; preds = %4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @AT_FDCWD, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.fs_struct*, %struct.fs_struct** %48, align 8
  store %struct.fs_struct* %49, %struct.fs_struct** %13, align 8
  %50 = load %struct.fs_struct*, %struct.fs_struct** %13, align 8
  %51 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %50, i32 0, i32 0
  %52 = call i32 @read_lock(i32* %51)
  %53 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %53, i32 0, i32 1
  %55 = load %struct.fs_struct*, %struct.fs_struct** %13, align 8
  %56 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %55, i32 0, i32 1
  %57 = bitcast %struct.TYPE_5__* %54 to i8*
  %58 = bitcast %struct.TYPE_5__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = load %struct.fs_struct*, %struct.fs_struct** %13, align 8
  %60 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %59, i32 0, i32 1
  %61 = call i32 @path_get(%struct.TYPE_5__* %60)
  %62 = load %struct.fs_struct*, %struct.fs_struct** %13, align 8
  %63 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %62, i32 0, i32 0
  %64 = call i32 @read_unlock(i32* %63)
  br label %117

65:                                               ; preds = %42
  %66 = load i32, i32* %6, align 4
  %67 = call %struct.file* @fget_light(i32 %66, i32* %11)
  store %struct.file* %67, %struct.file** %12, align 8
  %68 = load i32, i32* @EBADF, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  %70 = load %struct.file*, %struct.file** %12, align 8
  %71 = icmp ne %struct.file* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %123

73:                                               ; preds = %65
  %74 = load %struct.file*, %struct.file** %12, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.dentry*, %struct.dentry** %76, align 8
  store %struct.dentry* %77, %struct.dentry** %14, align 8
  %78 = load i32, i32* @ENOTDIR, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.dentry*, %struct.dentry** %14, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @S_ISDIR(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %73
  br label %119

88:                                               ; preds = %73
  %89 = load i8*, i8** %7, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load %struct.file*, %struct.file** %12, align 8
  %98 = load i32, i32* @MAY_EXEC, align 4
  %99 = call i32 @file_permission(%struct.file* %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %119

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %88
  %105 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %106 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %105, i32 0, i32 1
  %107 = load %struct.file*, %struct.file** %12, align 8
  %108 = getelementptr inbounds %struct.file, %struct.file* %107, i32 0, i32 0
  %109 = bitcast %struct.TYPE_5__* %106 to i8*
  %110 = bitcast %struct.TYPE_5__* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  %111 = load %struct.file*, %struct.file** %12, align 8
  %112 = getelementptr inbounds %struct.file, %struct.file* %111, i32 0, i32 0
  %113 = call i32 @path_get(%struct.TYPE_5__* %112)
  %114 = load %struct.file*, %struct.file** %12, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @fput_light(%struct.file* %114, i32 %115)
  br label %117

117:                                              ; preds = %104, %46
  br label %118

118:                                              ; preds = %117, %30
  store i32 0, i32* %5, align 4
  br label %125

119:                                              ; preds = %102, %87
  %120 = load %struct.file*, %struct.file** %12, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @fput_light(%struct.file* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %72
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %118
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @set_root(%struct.nameidata*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.TYPE_5__*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local %struct.file* @fget_light(i32, i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @file_permission(%struct.file*, i32) #1

declare dso_local i32 @fput_light(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
