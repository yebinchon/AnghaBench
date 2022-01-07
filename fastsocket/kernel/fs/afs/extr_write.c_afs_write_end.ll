; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.afs_vnode = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"{%x:%u},{%lx}\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dirtied\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.afs_vnode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load %struct.file*, %struct.file** %8, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.afs_vnode* @AFS_FS_I(i32 %22)
  store %struct.afs_vnode* %23, %struct.afs_vnode** %15, align 8
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %25 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %29 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.page*, %struct.page** %13, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @_enter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = add i32 %36, %37
  store i32 %38, i32* %17, align 4
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 1
  %41 = call i32 @i_size_read(i32* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %7
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %50 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %49, i32 0, i32 1
  %51 = call i32 @i_size_read(i32* %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %57 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %56, i32 0, i32 1
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @i_size_write(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %45
  %61 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %62 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  br label %64

64:                                               ; preds = %60, %7
  %65 = load %struct.page*, %struct.page** %13, align 8
  %66 = call i32 @set_page_dirty(%struct.page* %65)
  %67 = load %struct.page*, %struct.page** %13, align 8
  %68 = call i64 @PageDirty(%struct.page* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  %73 = load %struct.page*, %struct.page** %13, align 8
  %74 = call i32 @unlock_page(%struct.page* %73)
  %75 = load %struct.page*, %struct.page** %13, align 8
  %76 = call i32 @page_cache_release(%struct.page* %75)
  %77 = load i32, i32* %12, align 4
  ret i32 %77
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @i_size_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @i_size_write(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
