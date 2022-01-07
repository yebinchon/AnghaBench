; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_mntpt.c_afs_mntpt_check_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_mntpt.c_afs_mntpt_check_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.key = type { i32 }
%struct.file = type { %struct.key* }
%struct.page = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"{%x:%u,%u}\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"symlink to %*.*s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"symlink is a mountpoint\00", align 1
@AFS_VNODE_MOUNTPOINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_mntpt_check_symlink(%struct.afs_vnode* %0, %struct.key* %1) #0 {
  %3 = alloca %struct.afs_vnode*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.file, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %3, align 8
  store %struct.key* %1, %struct.key** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %11 = load %struct.key*, %struct.key** %4, align 8
  store %struct.key* %11, %struct.key** %10, align 8
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %13 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %21 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23)
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %26 = call %struct.TYPE_6__* @AFS_VNODE_TO_I(%struct.afs_vnode* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.page* @read_mapping_page(i32 %28, i32 0, %struct.file* %5)
  store %struct.page* %29, %struct.page** %6, align 8
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i64 @IS_ERR(%struct.page* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.page*, %struct.page** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.page* %34)
  store i32 %35, i32* %9, align 4
  br label %96

36:                                               ; preds = %2
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.page*, %struct.page** %6, align 8
  %40 = call i64 @PageError(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %93

43:                                               ; preds = %36
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = call i8* @kmap(%struct.page* %44)
  store i8* %45, i8** %8, align 8
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53, i8* %54)
  %56 = load i64, i64* %7, align 8
  %57 = icmp ugt i64 %56, 2
  br i1 %57, label %58, label %90

58:                                               ; preds = %43
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 37
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 35
  br i1 %69, label %70, label %90

70:                                               ; preds = %64, %58
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %90

78:                                               ; preds = %70
  %79 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %81 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %80, i32 0, i32 0
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load i32, i32* @AFS_VNODE_MOUNTPOINT, align 4
  %84 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %85 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %84, i32 0, i32 1
  %86 = call i32 @set_bit(i32 %83, i32* %85)
  %87 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %88 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  br label %90

90:                                               ; preds = %78, %70, %64, %43
  store i32 0, i32* %9, align 4
  %91 = load %struct.page*, %struct.page** %6, align 8
  %92 = call i32 @kunmap(%struct.page* %91)
  br label %93

93:                                               ; preds = %90, %42
  %94 = load %struct.page*, %struct.page** %6, align 8
  %95 = call i32 @page_cache_release(%struct.page* %94)
  br label %96

96:                                               ; preds = %93, %33
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local %struct.page* @read_mapping_page(i32, i32, %struct.file*) #1

declare dso_local %struct.TYPE_6__* @AFS_VNODE_TO_I(%struct.afs_vnode*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
