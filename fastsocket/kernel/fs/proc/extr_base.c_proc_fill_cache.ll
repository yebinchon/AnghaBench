; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_fill_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.task_struct = type { i32 }
%struct.qstr = type { i8*, i32, i32 }

@DT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_fill_cache(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i32, i32, i32)* %2, i8* %3, i32 %4, %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)* %5, %struct.task_struct* %6, i8* %7) #0 {
  %9 = alloca %struct.file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)*, align 8
  %15 = alloca %struct.task_struct*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.dentry*, align 8
  %18 = alloca %struct.dentry*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca %struct.qstr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.dentry*, align 8
  store %struct.file* %0, %struct.file** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 (i8*, i8*, i32, i32, i32, i32)** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)* %5, %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)** %14, align 8
  store %struct.task_struct* %6, %struct.task_struct** %15, align 8
  store i8* %7, i8** %16, align 8
  %24 = load %struct.file*, %struct.file** %9, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.dentry*, %struct.dentry** %26, align 8
  store %struct.dentry* %27, %struct.dentry** %18, align 8
  store i32 0, i32* %21, align 4
  %28 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %28, i32* %22, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %20, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %20, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @full_name_hash(i8* %33, i32 %34)
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %20, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.dentry*, %struct.dentry** %18, align 8
  %38 = call %struct.dentry* @d_lookup(%struct.dentry* %37, %struct.qstr* %20)
  store %struct.dentry* %38, %struct.dentry** %17, align 8
  %39 = load %struct.dentry*, %struct.dentry** %17, align 8
  %40 = icmp ne %struct.dentry* %39, null
  br i1 %40, label %64, label %41

41:                                               ; preds = %8
  %42 = load %struct.dentry*, %struct.dentry** %18, align 8
  %43 = call %struct.dentry* @d_alloc(%struct.dentry* %42, %struct.qstr* %20)
  store %struct.dentry* %43, %struct.dentry** %23, align 8
  %44 = load %struct.dentry*, %struct.dentry** %23, align 8
  %45 = icmp ne %struct.dentry* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)*, %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)** %14, align 8
  %48 = load %struct.dentry*, %struct.dentry** %18, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = load %struct.inode*, %struct.inode** %49, align 8
  %51 = load %struct.dentry*, %struct.dentry** %23, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = call %struct.dentry* %47(%struct.inode* %50, %struct.dentry* %51, %struct.task_struct* %52, i8* %53)
  store %struct.dentry* %54, %struct.dentry** %17, align 8
  %55 = load %struct.dentry*, %struct.dentry** %17, align 8
  %56 = icmp ne %struct.dentry* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load %struct.dentry*, %struct.dentry** %23, align 8
  %59 = call i32 @dput(%struct.dentry* %58)
  br label %62

60:                                               ; preds = %46
  %61 = load %struct.dentry*, %struct.dentry** %23, align 8
  store %struct.dentry* %61, %struct.dentry** %17, align 8
  br label %62

62:                                               ; preds = %60, %57
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %8
  %65 = load %struct.dentry*, %struct.dentry** %17, align 8
  %66 = icmp ne %struct.dentry* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.dentry*, %struct.dentry** %17, align 8
  %69 = call i64 @IS_ERR(%struct.dentry* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load %struct.dentry*, %struct.dentry** %17, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 0
  %74 = load %struct.inode*, %struct.inode** %73, align 8
  %75 = icmp ne %struct.inode* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71, %67, %64
  br label %94

77:                                               ; preds = %71
  %78 = load %struct.dentry*, %struct.dentry** %17, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = load %struct.inode*, %struct.inode** %79, align 8
  store %struct.inode* %80, %struct.inode** %19, align 8
  %81 = load %struct.inode*, %struct.inode** %19, align 8
  %82 = icmp ne %struct.inode* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.inode*, %struct.inode** %19, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %21, align 4
  %87 = load %struct.inode*, %struct.inode** %19, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 12
  store i32 %90, i32* %22, align 4
  br label %91

91:                                               ; preds = %83, %77
  %92 = load %struct.dentry*, %struct.dentry** %17, align 8
  %93 = call i32 @dput(%struct.dentry* %92)
  br label %94

94:                                               ; preds = %91, %76
  %95 = load i32, i32* %21, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load %struct.dentry*, %struct.dentry** %18, align 8
  %99 = call i32 @find_inode_number(%struct.dentry* %98, %struct.qstr* %20)
  store i32 %99, i32* %21, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %21, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store i32 1, i32* %21, align 4
  br label %104

104:                                              ; preds = %103, %100
  %105 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %11, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.file*, %struct.file** %9, align 8
  %110 = getelementptr inbounds %struct.file, %struct.file* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %22, align 4
  %114 = call i32 %105(i8* %106, i8* %107, i32 %108, i32 %111, i32 %112, i32 %113)
  ret i32 %114
}

declare dso_local i32 @full_name_hash(i8*, i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @find_inode_number(%struct.dentry*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
