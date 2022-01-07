; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify_user.c_inotify_new_watch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify_user.c_inotify_new_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.inode = type { i32 }
%struct.inotify_inode_mark_entry = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@inotify_inode_mark_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@inotify_free_mark = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@inotify_max_user_watches = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsnotify_group*, %struct.inode*, i32)* @inotify_new_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inotify_new_watch(%struct.fsnotify_group* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsnotify_group*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inotify_inode_mark_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @inotify_arg_to_mask(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %160

22:                                               ; preds = %3
  %23 = load i32, i32* @inotify_inode_mark_cachep, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.inotify_inode_mark_entry* @kmem_cache_alloc(i32 %23, i32 %24)
  store %struct.inotify_inode_mark_entry* %25, %struct.inotify_inode_mark_entry** %8, align 8
  %26 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %27 = icmp ne %struct.inotify_inode_mark_entry* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %160

35:                                               ; preds = %22
  %36 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %37 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %36, i32 0, i32 1
  %38 = load i32, i32* @inotify_free_mark, align 4
  %39 = call i32 @fsnotify_init_mark(%struct.TYPE_10__* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %42 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %45 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 4
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %49 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i64 @atomic_read(i32* %52)
  %54 = load i64, i64* @inotify_max_user_watches, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %151

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %107, %57
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %62 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @idr_pre_get(i32* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %151

72:                                               ; preds = %58
  %73 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %74 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %73, i32 0, i32 1
  %75 = call i32 @fsnotify_get_mark(%struct.TYPE_10__* %74)
  %76 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %77 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %81 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %84 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %83, i32 0, i32 1
  %85 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %86 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  %90 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %91 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %90, i32 0, i32 0
  %92 = call i32 @idr_get_new_above(i32* %82, %struct.TYPE_10__* %84, i32 %89, i32* %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %94 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %72
  %100 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %101 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %100, i32 0, i32 1
  %102 = call i32 @fsnotify_put_mark(%struct.TYPE_10__* %101)
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @EAGAIN, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %58

108:                                              ; preds = %99
  br label %151

109:                                              ; preds = %72
  %110 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %111 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %110, i32 0, i32 1
  %112 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = call i32 @fsnotify_add_mark(%struct.TYPE_10__* %111, %struct.fsnotify_group* %112, %struct.inode* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %119 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %120 = call i32 @inotify_remove_from_idr(%struct.fsnotify_group* %118, %struct.inotify_inode_mark_entry* %119)
  br label %151

121:                                              ; preds = %109
  %122 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %123 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %126 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %129 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = call i32 @atomic_inc(i32* %132)
  %134 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %135 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %10, align 4
  %137 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %138 = getelementptr inbounds %struct.inotify_inode_mark_entry, %struct.inotify_inode_mark_entry* %137, i32 0, i32 1
  %139 = call i32 @fsnotify_put_mark(%struct.TYPE_10__* %138)
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %142 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = xor i32 %143, -1
  %145 = and i32 %140, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %121
  %148 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %149 = call i32 @fsnotify_recalc_group_mask(%struct.fsnotify_group* %148)
  br label %150

150:                                              ; preds = %147, %121
  br label %151

151:                                              ; preds = %150, %117, %108, %71, %56
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32, i32* @inotify_inode_mark_cachep, align 4
  %156 = load %struct.inotify_inode_mark_entry*, %struct.inotify_inode_mark_entry** %8, align 8
  %157 = call i32 @kmem_cache_free(i32 %155, %struct.inotify_inode_mark_entry* %156)
  br label %158

158:                                              ; preds = %154, %151
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %32, %19
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @inotify_arg_to_mask(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.inotify_inode_mark_entry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @fsnotify_init_mark(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @fsnotify_get_mark(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new_above(i32*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsnotify_put_mark(%struct.TYPE_10__*) #1

declare dso_local i32 @fsnotify_add_mark(%struct.TYPE_10__*, %struct.fsnotify_group*, %struct.inode*) #1

declare dso_local i32 @inotify_remove_from_idr(%struct.fsnotify_group*, %struct.inotify_inode_mark_entry*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @fsnotify_recalc_group_mask(%struct.fsnotify_group*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.inotify_inode_mark_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
