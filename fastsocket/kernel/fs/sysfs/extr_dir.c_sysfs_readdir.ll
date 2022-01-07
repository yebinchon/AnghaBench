; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.sysfs_dirent*, %struct.TYPE_3__ }
%struct.sysfs_dirent = type { i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { %struct.sysfs_dirent* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@sysfs_mutex = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64 (i8*, i8*, i32, i32, i32, i32)*)* @sysfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_readdir(%struct.file* %0, i8* %1, i64 (i8*, i8*, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.sysfs_dirent*, align 8
  %9 = alloca %struct.sysfs_dirent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 (i8*, i8*, i32, i32, i32, i32)* %2, i64 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %7, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %20, align 8
  store %struct.sysfs_dirent* %21, %struct.sysfs_dirent** %8, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %23, align 8
  store %struct.sysfs_dirent* %24, %struct.sysfs_dirent** %9, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %3
  %30 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %31 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @DT_DIR, align 4
  %40 = call i64 %33(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %37, i32 %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %29
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %84

53:                                               ; preds = %48
  %54 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %55 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %60 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %66 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load %struct.file*, %struct.file** %4, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @DT_DIR, align 4
  %76 = call i64 %69(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %73, i32 %74, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.file*, %struct.file** %4, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %78, %68
  br label %84

84:                                               ; preds = %83, %48
  %85 = call i32 @mutex_lock(i32* @sysfs_mutex)
  %86 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %87 = load %struct.file*, %struct.file** %4, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %91 = call %struct.sysfs_dirent* @sysfs_dir_pos(%struct.sysfs_dirent* %86, i32 %89, %struct.sysfs_dirent* %90)
  store %struct.sysfs_dirent* %91, %struct.sysfs_dirent** %9, align 8
  br label %92

92:                                               ; preds = %130, %84
  %93 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %94 = icmp ne %struct.sysfs_dirent* %93, null
  br i1 %94, label %95, label %137

95:                                               ; preds = %92
  %96 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %97 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %11, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @strlen(i8* %99)
  store i32 %100, i32* %13, align 4
  %101 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %102 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %10, align 4
  %104 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %105 = call i32 @dt_type(%struct.sysfs_dirent* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.file*, %struct.file** %4, align 8
  %108 = getelementptr inbounds %struct.file, %struct.file* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %110 = call %struct.sysfs_dirent* @sysfs_get(%struct.sysfs_dirent* %109)
  %111 = load %struct.file*, %struct.file** %4, align 8
  %112 = getelementptr inbounds %struct.file, %struct.file* %111, i32 0, i32 1
  store %struct.sysfs_dirent* %110, %struct.sysfs_dirent** %112, align 8
  %113 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  %114 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %6, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.file*, %struct.file** %4, align 8
  %119 = getelementptr inbounds %struct.file, %struct.file* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i64 %114(i8* %115, i8* %116, i32 %117, i32 %120, i32 %121, i32 %122)
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %14, align 4
  %125 = call i32 @mutex_lock(i32* @sysfs_mutex)
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %95
  br label %137

129:                                              ; preds = %95
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %8, align 8
  %132 = load %struct.file*, %struct.file** %4, align 8
  %133 = getelementptr inbounds %struct.file, %struct.file* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %136 = call %struct.sysfs_dirent* @sysfs_dir_next_pos(%struct.sysfs_dirent* %131, i32 %134, %struct.sysfs_dirent* %135)
  store %struct.sysfs_dirent* %136, %struct.sysfs_dirent** %9, align 8
  br label %92

137:                                              ; preds = %128, %92
  %138 = call i32 @mutex_unlock(i32* @sysfs_mutex)
  %139 = load %struct.file*, %struct.file** %4, align 8
  %140 = getelementptr inbounds %struct.file, %struct.file* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %145 = icmp ne %struct.sysfs_dirent* %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @INT_MAX, align 4
  %148 = load %struct.file*, %struct.file** %4, align 8
  %149 = getelementptr inbounds %struct.file, %struct.file* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.file*, %struct.file** %4, align 8
  %151 = getelementptr inbounds %struct.file, %struct.file* %150, i32 0, i32 1
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %151, align 8
  br label %152

152:                                              ; preds = %146, %143, %137
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sysfs_dirent* @sysfs_dir_pos(%struct.sysfs_dirent*, i32, %struct.sysfs_dirent*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dt_type(%struct.sysfs_dirent*) #1

declare dso_local %struct.sysfs_dirent* @sysfs_get(%struct.sysfs_dirent*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.sysfs_dirent* @sysfs_dir_next_pos(%struct.sysfs_dirent*, i32, %struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
