; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_super.c_affs_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_super.c_affs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.affs_sb_info = type { i64, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"AFFS: remount(flags=0x%x,opts=\22%s\22)\0A\00", align 1
@MS_NODIRATIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @affs_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.affs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = call %struct.affs_sb_info* @AFFS_SB(%struct.super_block* %18)
  store %struct.affs_sb_info* %19, %struct.affs_sb_info** %8, align 8
  store i32 0, i32* %16, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kstrdup(i8* %20, i32 %21)
  store i8* %22, i8** %17, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %25)
  %27 = load i32, i32* @MS_NODIRATIME, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %33 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %32, i32 0, i32 5
  %34 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %35 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @parse_options(i8* %31, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %9, i32* %33, i32 %36, i64* %15)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %3
  %40 = load i8*, i8** %17, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %100

44:                                               ; preds = %3
  %45 = call i32 (...) @lock_kernel()
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = call i32 @replace_mount_options(%struct.super_block* %46, i8* %47)
  %49 = load i64, i64* %15, align 8
  %50 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %51 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %54 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %57 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %60 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MS_RDONLY, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = getelementptr inbounds %struct.super_block, %struct.super_block* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MS_RDONLY, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %64, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %44
  %72 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %100

73:                                               ; preds = %44
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MS_RDONLY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load %struct.super_block*, %struct.super_block** %5, align 8
  %81 = getelementptr inbounds %struct.super_block, %struct.super_block* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %87, %79
  %83 = load %struct.super_block*, %struct.super_block** %5, align 8
  %84 = getelementptr inbounds %struct.super_block, %struct.super_block* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = call i32 @affs_write_super(%struct.super_block* %88)
  br label %82

90:                                               ; preds = %82
  %91 = load %struct.super_block*, %struct.super_block** %5, align 8
  %92 = call i32 @affs_free_bitmap(%struct.super_block* %91)
  br label %97

93:                                               ; preds = %73
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @affs_init_bitmap(%struct.super_block* %94, i32* %95)
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %93, %90
  %98 = call i32 (...) @unlock_kernel()
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %97, %71, %39
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.affs_sb_info* @AFFS_SB(%struct.super_block*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @parse_options(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i64*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @replace_mount_options(%struct.super_block*, i8*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @affs_write_super(%struct.super_block*) #1

declare dso_local i32 @affs_free_bitmap(%struct.super_block*) #1

declare dso_local i32 @affs_init_bitmap(%struct.super_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
