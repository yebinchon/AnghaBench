; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_removexattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*)* @gfs2_removexattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_removexattr(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %12)
  store %struct.gfs2_inode* %13, %struct.gfs2_inode** %6, align 8
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %18 = call i32 @gfs2_holder_init(i32 %16, i32 %17, i32 0, %struct.gfs2_holder* %7)
  %19 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %24 = call i32 @gfs2_rs_alloc(%struct.gfs2_inode* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @generic_removexattr(%struct.dentry* %28, i8* %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %7)
  br label %33

33:                                               ; preds = %31, %2
  %34 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %7)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_rs_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @generic_removexattr(%struct.dentry*, i8*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
