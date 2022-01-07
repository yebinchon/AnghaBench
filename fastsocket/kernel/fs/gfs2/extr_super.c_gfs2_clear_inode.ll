; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_clear_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32* }

@GL_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @gfs2_clear_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %4)
  store %struct.gfs2_inode* %5, %struct.gfs2_inode** %3, align 8
  %6 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %7 = call i32 @gfs2_dir_hash_inval(%struct.gfs2_inode* %6)
  %8 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %9 = call i32 @gfs2_rs_delete(%struct.gfs2_inode* %8)
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %11 = call i32 @gfs2_ordered_del_inode(%struct.gfs2_inode* %10)
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @flush_delayed_work(i32* %19)
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %22 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @gfs2_glock_add_to_lru(%struct.TYPE_6__* %23)
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @gfs2_glock_put(%struct.TYPE_6__* %27)
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %32 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %1
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %38 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @GL_NOCACHE, align 4
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %44 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 8
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %49 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %48, i32 0, i32 0
  %50 = call i32 @gfs2_glock_dq_uninit(%struct.TYPE_7__* %49)
  br label %51

51:                                               ; preds = %36, %1
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_dir_hash_inval(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_rs_delete(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_ordered_del_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @gfs2_glock_add_to_lru(%struct.TYPE_6__*) #1

declare dso_local i32 @gfs2_glock_put(%struct.TYPE_6__*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
