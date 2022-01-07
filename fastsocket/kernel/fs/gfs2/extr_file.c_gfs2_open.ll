; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.gfs2_file* }
%struct.gfs2_file = type { i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_holder = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@LM_FLAG_ANY = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@MAX_NON_LFS = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @gfs2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca %struct.gfs2_file*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %10)
  store %struct.gfs2_inode* %11, %struct.gfs2_inode** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gfs2_file* @kzalloc(i32 4, i32 %12)
  store %struct.gfs2_file* %13, %struct.gfs2_file** %8, align 8
  %14 = load %struct.gfs2_file*, %struct.gfs2_file** %8, align 8
  %15 = icmp ne %struct.gfs2_file* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %77

19:                                               ; preds = %2
  %20 = load %struct.gfs2_file*, %struct.gfs2_file** %8, align 8
  %21 = getelementptr inbounds %struct.gfs2_file, %struct.gfs2_file* %20, i32 0, i32 0
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @GFS2_SB(%struct.inode* %23)
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = load %struct.gfs2_file*, %struct.gfs2_file** %26, align 8
  %28 = icmp ne %struct.gfs2_file* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @gfs2_assert_warn(i32 %24, i32 %30)
  %32 = load %struct.gfs2_file*, %struct.gfs2_file** %8, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 1
  store %struct.gfs2_file* %32, %struct.gfs2_file** %34, align 8
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %36 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @S_ISREG(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %19
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %43 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LM_ST_SHARED, align 4
  %46 = load i32, i32* @LM_FLAG_ANY, align 4
  %47 = call i32 @gfs2_glock_nq_init(i32 %44, i32 %45, i32 %46, %struct.gfs2_holder* %7)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %71

51:                                               ; preds = %41
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @O_LARGEFILE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = call i64 @i_size_read(%struct.inode* %59)
  %61 = load i64, i64* @MAX_NON_LFS, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EOVERFLOW, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %69

66:                                               ; preds = %58, %51
  %67 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  br label %68

68:                                               ; preds = %66, %19
  store i32 0, i32* %3, align 4
  br label %77

69:                                               ; preds = %63
  %70 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  br label %71

71:                                               ; preds = %69, %50
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 1
  store %struct.gfs2_file* null, %struct.gfs2_file** %73, align 8
  %74 = load %struct.gfs2_file*, %struct.gfs2_file** %8, align 8
  %75 = call i32 @kfree(%struct.gfs2_file* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %68, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_file* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gfs2_assert_warn(i32, i32) #1

declare dso_local i32 @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @kfree(%struct.gfs2_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
