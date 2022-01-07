; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_export.c_gfs2_get_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_export.c_gfs2_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32, i32, i32 }
%struct.get_name_filldir = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gfs2_holder = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@get_name_filldir = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, %struct.dentry*)* @gfs2_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_get_name(%struct.dentry* %0, i8* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca %struct.gfs2_inode*, align 8
  %12 = alloca %struct.get_name_filldir, align 8
  %13 = alloca %struct.gfs2_holder, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %9, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %82

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISDIR(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = icmp ne %struct.inode* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %82

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %40)
  store %struct.gfs2_inode* %41, %struct.gfs2_inode** %10, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %42)
  store %struct.gfs2_inode* %43, %struct.gfs2_inode** %11, align 8
  %44 = load i8*, i8** %6, align 8
  store i8 0, i8* %44, align 1
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %46 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.get_name_filldir, %struct.get_name_filldir* %12, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %51 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.get_name_filldir, %struct.get_name_filldir* %12, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds %struct.get_name_filldir, %struct.get_name_filldir* %12, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %58 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @LM_ST_SHARED, align 4
  %61 = call i32 @gfs2_glock_nq_init(i32 %59, i32 %60, i32 0, %struct.gfs2_holder* %13)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %39
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %4, align 4
  br label %82

66:                                               ; preds = %39
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = load i32, i32* @get_name_filldir, align 4
  %69 = call i32 @gfs2_dir_read(%struct.inode* %67, i32* %14, %struct.get_name_filldir* %12, i32 %68, i32* null)
  store i32 %69, i32* %15, align 4
  %70 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %13)
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @ENOENT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %77, %73, %66
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %64, %36, %24
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_dir_read(%struct.inode*, i32*, %struct.get_name_filldir*, i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
