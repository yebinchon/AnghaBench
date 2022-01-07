; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i64 }
%struct.ufs_sb_private_info = type { i32 }
%struct.ufs_super_block_first = type { i32 }
%struct.ufs_super_block_third = type { i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.ufs_sb_private_info* }

@UFS_MOUNT_UFSTYPE = common dso_local global i32 0, align 4
@ONERROR_LOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ufstype can't be changed during remount\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@UFS_ST_MASK = common dso_local global i32 0, align 4
@UFS_ST_SUN = common dso_local global i32 0, align 4
@UFS_ST_SUNOS = common dso_local global i32 0, align 4
@UFS_ST_SUNx86 = common dso_local global i32 0, align 4
@UFS_FSOK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"ufs was compiled with read-only support, can't be mounted as read-write\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@UFS_MOUNT_UFSTYPE_44BSD = common dso_local global i32 0, align 4
@UFS_MOUNT_UFSTYPE_SUN = common dso_local global i32 0, align 4
@UFS_MOUNT_UFSTYPE_SUNOS = common dso_local global i32 0, align 4
@UFS_MOUNT_UFSTYPE_SUNx86 = common dso_local global i32 0, align 4
@UFS_MOUNT_UFSTYPE_UFS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @ufs_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ufs_sb_private_info*, align 8
  %9 = alloca %struct.ufs_super_block_first*, align 8
  %10 = alloca %struct.ufs_super_block_third*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = call i32 (...) @lock_kernel()
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call i32 @lock_super(%struct.super_block* %15)
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %19, align 8
  store %struct.ufs_sb_private_info* %20, %struct.ufs_sb_private_info** %8, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %26 = call %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info* %25)
  store %struct.ufs_super_block_first* %26, %struct.ufs_super_block_first** %9, align 8
  %27 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %28 = call %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info* %27)
  store %struct.ufs_super_block_third* %28, %struct.ufs_super_block_third** %10, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UFS_MOUNT_UFSTYPE, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @ONERROR_LOCK, align 4
  %37 = call i32 @ufs_set_opt(i32 %35, i32 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @ufs_parse_options(i8* %38, i32* %11)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %3
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = call i32 @unlock_super(%struct.super_block* %42)
  %44 = call i32 (...) @unlock_kernel()
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %158

47:                                               ; preds = %3
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @UFS_MOUNT_UFSTYPE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %70

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @UFS_MOUNT_UFSTYPE, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = call i32 @unlock_super(%struct.super_block* %64)
  %66 = call i32 (...) @unlock_kernel()
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %158

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MS_RDONLY, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.super_block*, %struct.super_block** %5, align 8
  %76 = getelementptr inbounds %struct.super_block, %struct.super_block* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MS_RDONLY, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.super_block*, %struct.super_block** %5, align 8
  %84 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = call i32 @unlock_super(%struct.super_block* %86)
  %88 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %158

89:                                               ; preds = %70
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MS_RDONLY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %143

95:                                               ; preds = %89
  %96 = load %struct.super_block*, %struct.super_block** %5, align 8
  %97 = call i32 @ufs_put_super_internal(%struct.super_block* %96)
  %98 = load %struct.super_block*, %struct.super_block** %5, align 8
  %99 = call i32 (...) @get_seconds()
  %100 = call i32 @cpu_to_fs32(%struct.super_block* %98, i32 %99)
  %101 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %9, align 8
  %102 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @UFS_ST_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @UFS_ST_SUN, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %95
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @UFS_ST_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @UFS_ST_SUNOS, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @UFS_ST_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @UFS_ST_SUNx86, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %114, %108, %95
  %121 = load %struct.super_block*, %struct.super_block** %5, align 8
  %122 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %9, align 8
  %123 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %10, align 8
  %124 = load i64, i64* @UFS_FSOK, align 8
  %125 = load %struct.super_block*, %struct.super_block** %5, align 8
  %126 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %9, align 8
  %127 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @fs32_to_cpu(%struct.super_block* %125, i32 %128)
  %130 = sub nsw i64 %124, %129
  %131 = call i32 @ufs_set_fs_state(%struct.super_block* %121, %struct.ufs_super_block_first* %122, %struct.ufs_super_block_third* %123, i64 %130)
  br label %132

132:                                              ; preds = %120, %114
  %133 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %134 = call i32 @USPI_UBH(%struct.ufs_sb_private_info* %133)
  %135 = call i32 @ubh_mark_buffer_dirty(i32 %134)
  %136 = load %struct.super_block*, %struct.super_block** %5, align 8
  %137 = getelementptr inbounds %struct.super_block, %struct.super_block* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* @MS_RDONLY, align 4
  %139 = load %struct.super_block*, %struct.super_block** %5, align 8
  %140 = getelementptr inbounds %struct.super_block, %struct.super_block* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %150

143:                                              ; preds = %89
  %144 = call i32 @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %145 = load %struct.super_block*, %struct.super_block** %5, align 8
  %146 = call i32 @unlock_super(%struct.super_block* %145)
  %147 = call i32 (...) @unlock_kernel()
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %158

150:                                              ; preds = %132
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.super_block*, %struct.super_block** %5, align 8
  %153 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %152)
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = load %struct.super_block*, %struct.super_block** %5, align 8
  %156 = call i32 @unlock_super(%struct.super_block* %155)
  %157 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %150, %143, %81, %62, %41
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local %struct.ufs_super_block_first* @ubh_get_usb_first(%struct.ufs_sb_private_info*) #1

declare dso_local %struct.ufs_super_block_third* @ubh_get_usb_third(%struct.ufs_sb_private_info*) #1

declare dso_local i32 @ufs_set_opt(i32, i32) #1

declare dso_local i32 @ufs_parse_options(i8*, i32*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ufs_put_super_internal(%struct.super_block*) #1

declare dso_local i32 @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @ufs_set_fs_state(%struct.super_block*, %struct.ufs_super_block_first*, %struct.ufs_super_block_third*, i64) #1

declare dso_local i64 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @ubh_mark_buffer_dirty(i32) #1

declare dso_local i32 @USPI_UBH(%struct.ufs_sb_private_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
