; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, i32* }
%struct.nameidata = type { i32 }
%struct.gfs2_glock = type { i32 }
%struct.gfs2_holder = type { i32 }
%struct.TYPE_2__ = type { %struct.gfs2_glock* }

@gfs2_dops = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@LM_FLAG_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @gfs2_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @gfs2_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.gfs2_glock*, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  store i32* @gfs2_dops, i32** %13, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = call %struct.inode* @gfs2_lookupi(%struct.inode* %14, i32* %16, i32 0)
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call i64 @IS_ERR(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call %struct.dentry* @ERR_CAST(%struct.inode* %25)
  store %struct.dentry* %26, %struct.dentry** %4, align 8
  br label %55

27:                                               ; preds = %20, %3
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call %struct.TYPE_2__* @GFS2_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.gfs2_glock*, %struct.gfs2_glock** %33, align 8
  store %struct.gfs2_glock* %34, %struct.gfs2_glock** %9, align 8
  %35 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  %36 = load i32, i32* @LM_ST_SHARED, align 4
  %37 = load i32, i32* @LM_FLAG_ANY, align 4
  %38 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %35, i32 %36, i32 %37, %struct.gfs2_holder* %10)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i32 @iput(%struct.inode* %42)
  %44 = load i32, i32* %11, align 4
  %45 = call %struct.dentry* @ERR_PTR(i32 %44)
  store %struct.dentry* %45, %struct.dentry** %4, align 8
  br label %55

46:                                               ; preds = %30
  %47 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = call %struct.dentry* @d_splice_alias(%struct.inode* %48, %struct.dentry* %49)
  store %struct.dentry* %50, %struct.dentry** %4, align 8
  br label %55

51:                                               ; preds = %27
  %52 = load %struct.dentry*, %struct.dentry** %6, align 8
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = call i32 @d_add(%struct.dentry* %52, %struct.inode* %53)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %55

55:                                               ; preds = %51, %46, %41, %24
  %56 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %56
}

declare dso_local %struct.inode* @gfs2_lookupi(%struct.inode*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.gfs2_glock*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
