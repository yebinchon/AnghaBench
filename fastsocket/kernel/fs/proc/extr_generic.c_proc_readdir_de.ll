; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_readdir_de.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_readdir_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i8*, i32, i32, i32, %struct.proc_dir_entry*, %struct.proc_dir_entry* }
%struct.file = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@proc_subdir_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_readdir_de(%struct.proc_dir_entry* %0, %struct.file* %1, i8* %2, i32 (i8*, i8*, i32, i32, i32, i32)* %3) #0 {
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %3, i32 (i8*, i8*, i32, i32, i32, i32)** %8, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.inode*, %struct.inode** %11, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %63 [
    i32 0, label %27
    i32 1, label %43
  ]

27:                                               ; preds = %4
  %28 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %8, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DT_DIR, align 4
  %33 = call i32 %28(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %30, i32 %31, i32 %32)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %131

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %4, %36
  %44 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @parent_ino(%struct.TYPE_4__* %50)
  %52 = load i32, i32* @DT_DIR, align 4
  %53 = call i32 %44(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %46, i32 %51, i32 %52)
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %131

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load %struct.file*, %struct.file** %6, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %4, %56
  %64 = call i32 @spin_lock(i32* @proc_subdir_lock)
  %65 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %66 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %65, i32 0, i32 5
  %67 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %66, align 8
  store %struct.proc_dir_entry* %67, %struct.proc_dir_entry** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 2
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %79, %63
  %71 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %72 = icmp ne %struct.proc_dir_entry* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  store i32 1, i32* %12, align 4
  %74 = call i32 @spin_unlock(i32* @proc_subdir_lock)
  br label %131

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %85

79:                                               ; preds = %75
  %80 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %81 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %80, i32 0, i32 4
  %82 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %81, align 8
  store %struct.proc_dir_entry* %82, %struct.proc_dir_entry** %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %10, align 4
  br label %70

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %125, %85
  %87 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %88 = call i32 @de_get(%struct.proc_dir_entry* %87)
  %89 = call i32 @spin_unlock(i32* @proc_subdir_lock)
  %90 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %8, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %93 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %96 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.file*, %struct.file** %6, align 8
  %99 = getelementptr inbounds %struct.file, %struct.file* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %102 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %105 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 %106, 12
  %108 = call i32 %90(i8* %91, i8* %94, i32 %97, i32 %100, i32 %103, i32 %107)
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %86
  %111 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %112 = call i32 @de_put(%struct.proc_dir_entry* %111)
  br label %131

113:                                              ; preds = %86
  %114 = call i32 @spin_lock(i32* @proc_subdir_lock)
  %115 = load %struct.file*, %struct.file** %6, align 8
  %116 = getelementptr inbounds %struct.file, %struct.file* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %120 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %119, i32 0, i32 4
  %121 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %120, align 8
  store %struct.proc_dir_entry* %121, %struct.proc_dir_entry** %13, align 8
  %122 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %123 = call i32 @de_put(%struct.proc_dir_entry* %122)
  %124 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %13, align 8
  store %struct.proc_dir_entry* %124, %struct.proc_dir_entry** %5, align 8
  br label %125

125:                                              ; preds = %113
  %126 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %127 = icmp ne %struct.proc_dir_entry* %126, null
  br i1 %127, label %86, label %128

128:                                              ; preds = %125
  %129 = call i32 @spin_unlock(i32* @proc_subdir_lock)
  br label %130

130:                                              ; preds = %128
  store i32 1, i32* %12, align 4
  br label %131

131:                                              ; preds = %130, %110, %73, %55, %35
  %132 = load i32, i32* %12, align 4
  ret i32 %132
}

declare dso_local i32 @parent_ino(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @de_get(%struct.proc_dir_entry*) #1

declare dso_local i32 @de_put(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
