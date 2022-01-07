; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_misc.c_kill_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_misc.c_kill_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.dentry*, i32 }
%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@entries_lock = common dso_local global i32 0, align 4
@bm_mnt = common dso_local global i32 0, align 4
@entry_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @kill_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_node(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = call i32 @write_lock(i32* @entries_lock)
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %7, %struct.dentry** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = icmp ne %struct.dentry* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.dentry* null, %struct.dentry** %15, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = call i32 @write_unlock(i32* @entries_lock)
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = call i32 @d_drop(%struct.dentry* %27)
  %29 = load %struct.dentry*, %struct.dentry** %3, align 8
  %30 = call i32 @dput(%struct.dentry* %29)
  %31 = call i32 @simple_release_fs(i32* @bm_mnt, i32* @entry_count)
  br label %32

32:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @simple_release_fs(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
