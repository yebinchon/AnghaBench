; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_tree.c_create_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit_tree.c_create_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.audit_tree = type { i32, %struct.audit_chunk*, i32, i64 }
%struct.audit_chunk = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.audit_tree* }

@ENOMEM = common dso_local global i32 0, align 4
@rtree_ih = common dso_local global i32 0, align 4
@IN_IGNORED = common dso_local global i32 0, align 4
@IN_DELETE_SELF = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@hash_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.audit_tree*)* @create_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_chunk(%struct.inode* %0, %struct.audit_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.audit_tree*, align 8
  %6 = alloca %struct.audit_chunk*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.audit_tree* %1, %struct.audit_tree** %5, align 8
  %7 = call %struct.audit_chunk* @alloc_chunk(i32 1)
  store %struct.audit_chunk* %7, %struct.audit_chunk** %6, align 8
  %8 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %9 = icmp ne %struct.audit_chunk* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %92

13:                                               ; preds = %2
  %14 = load i32, i32* @rtree_ih, align 4
  %15 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %16 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %15, i32 0, i32 3
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = load i32, i32* @IN_IGNORED, align 4
  %19 = load i32, i32* @IN_DELETE_SELF, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @inotify_add_watch(i32 %14, i32* %16, %struct.inode* %17, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %25 = call i32 @free_chunk(%struct.audit_chunk* %24)
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %92

28:                                               ; preds = %13
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = call i32 @spin_lock(i32* @hash_lock)
  %33 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %34 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = call i32 @spin_unlock(i32* @hash_lock)
  %39 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %40 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %42 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %41, i32 0, i32 3
  %43 = call i32 @inotify_evict_watch(i32* %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %48 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %47, i32 0, i32 3
  %49 = call i32 @put_inotify_watch(i32* %48)
  store i32 0, i32* %3, align 4
  br label %92

50:                                               ; preds = %28
  %51 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %52 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 -2147483648, i32* %55, align 8
  %56 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %57 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %58 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store %struct.audit_tree* %56, %struct.audit_tree** %61, align 8
  %62 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %63 = call i32 @get_tree(%struct.audit_tree* %62)
  %64 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %65 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %70 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %69, i32 0, i32 2
  %71 = call i32 @list_add(i32* %68, i32* %70)
  %72 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %73 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %72, i32 0, i32 1
  %74 = load %struct.audit_chunk*, %struct.audit_chunk** %73, align 8
  %75 = icmp ne %struct.audit_chunk* %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %50
  %77 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %78 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %79 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %78, i32 0, i32 1
  store %struct.audit_chunk* %77, %struct.audit_chunk** %79, align 8
  %80 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %81 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %80, i32 0, i32 0
  %82 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %83 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %82, i32 0, i32 1
  %84 = call i32 @list_add(i32* %81, i32* %83)
  br label %85

85:                                               ; preds = %76, %50
  %86 = load %struct.audit_chunk*, %struct.audit_chunk** %6, align 8
  %87 = call i32 @insert_hash(%struct.audit_chunk* %86)
  %88 = call i32 @spin_unlock(i32* @hash_lock)
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %85, %37, %23, %10
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.audit_chunk* @alloc_chunk(i32) #1

declare dso_local i64 @inotify_add_watch(i32, i32*, %struct.inode*, i32) #1

declare dso_local i32 @free_chunk(%struct.audit_chunk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inotify_evict_watch(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_inotify_watch(i32*) #1

declare dso_local i32 @get_tree(%struct.audit_tree*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @insert_hash(%struct.audit_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
