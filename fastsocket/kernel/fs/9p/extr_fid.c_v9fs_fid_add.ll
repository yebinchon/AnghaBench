; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_fid.c_v9fs_fid_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_fid.c_v9fs_fid_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.v9fs_dentry*, %struct.TYPE_2__ }
%struct.v9fs_dentry = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.p9_fid = type { i32, i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"fid %d dentry %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_fid_add(%struct.dentry* %0, %struct.p9_fid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca %struct.v9fs_dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %5, align 8
  %7 = load i32, i32* @P9_DEBUG_VFS, align 4
  %8 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %9 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @P9_DPRINTK(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.v9fs_dentry*, %struct.v9fs_dentry** %17, align 8
  store %struct.v9fs_dentry* %18, %struct.v9fs_dentry** %6, align 8
  %19 = load %struct.v9fs_dentry*, %struct.v9fs_dentry** %6, align 8
  %20 = icmp ne %struct.v9fs_dentry* %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.v9fs_dentry* @kmalloc(i32 8, i32 %22)
  store %struct.v9fs_dentry* %23, %struct.v9fs_dentry** %6, align 8
  %24 = load %struct.v9fs_dentry*, %struct.v9fs_dentry** %6, align 8
  %25 = icmp ne %struct.v9fs_dentry* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %21
  %30 = load %struct.v9fs_dentry*, %struct.v9fs_dentry** %6, align 8
  %31 = getelementptr inbounds %struct.v9fs_dentry, %struct.v9fs_dentry* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.v9fs_dentry*, %struct.v9fs_dentry** %6, align 8
  %34 = getelementptr inbounds %struct.v9fs_dentry, %struct.v9fs_dentry* %33, i32 0, i32 1
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.v9fs_dentry*, %struct.v9fs_dentry** %6, align 8
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  store %struct.v9fs_dentry* %36, %struct.v9fs_dentry** %38, align 8
  br label %39

39:                                               ; preds = %29, %2
  %40 = load %struct.v9fs_dentry*, %struct.v9fs_dentry** %6, align 8
  %41 = getelementptr inbounds %struct.v9fs_dentry, %struct.v9fs_dentry* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %44 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %43, i32 0, i32 0
  %45 = load %struct.v9fs_dentry*, %struct.v9fs_dentry** %6, align 8
  %46 = getelementptr inbounds %struct.v9fs_dentry, %struct.v9fs_dentry* %45, i32 0, i32 1
  %47 = call i32 @list_add(i32* %44, i32* %46)
  %48 = load %struct.v9fs_dentry*, %struct.v9fs_dentry** %6, align 8
  %49 = getelementptr inbounds %struct.v9fs_dentry, %struct.v9fs_dentry* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32, i32) #1

declare dso_local %struct.v9fs_dentry* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
