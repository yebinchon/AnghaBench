; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_hpfs_remount_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_hpfs_remount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MS_NOATIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"HPFS: bad mount options.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"HPFS: timeshift can't be changed using remount.\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @hpfs_remount_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_remount_fs(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.hpfs_sb_info*, align 8
  %20 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %21)
  store %struct.hpfs_sb_info* %22, %struct.hpfs_sb_info** %19, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kstrdup(i8* %23, i32 %24)
  store i8* %25, i8** %20, align 8
  %26 = load i32, i32* @MS_NOATIME, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = call i32 (...) @lock_kernel()
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = call i32 @lock_super(%struct.super_block* %31)
  %33 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %34 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %37 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %40 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 511, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %45 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %48 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %51 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %54 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %57 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %16, align 4
  %59 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %60 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %63 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %17, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @parse_opts(i8* %65, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17)
  store i32 %66, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %3
  %69 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %133

70:                                               ; preds = %3
  %71 = load i32, i32* %18, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (...) @hpfs_help()
  br label %133

75:                                               ; preds = %70
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %78 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %133

83:                                               ; preds = %75
  %84 = load %struct.super_block*, %struct.super_block** %5, align 8
  %85 = call i32 @unmark_dirty(%struct.super_block* %84)
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %88 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %91 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 511, %93
  %95 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %96 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %99 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %102 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %105 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %108 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %111 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %114 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %19, align 8
  %117 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MS_RDONLY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %83
  %124 = load %struct.super_block*, %struct.super_block** %5, align 8
  %125 = call i32 @mark_dirty(%struct.super_block* %124)
  br label %126

126:                                              ; preds = %123, %83
  %127 = load %struct.super_block*, %struct.super_block** %5, align 8
  %128 = load i8*, i8** %20, align 8
  %129 = call i32 @replace_mount_options(%struct.super_block* %127, i8* %128)
  %130 = load %struct.super_block*, %struct.super_block** %5, align 8
  %131 = call i32 @unlock_super(%struct.super_block* %130)
  %132 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %141

133:                                              ; preds = %81, %73, %68
  %134 = load %struct.super_block*, %struct.super_block** %5, align 8
  %135 = call i32 @unlock_super(%struct.super_block* %134)
  %136 = call i32 (...) @unlock_kernel()
  %137 = load i8*, i8** %20, align 8
  %138 = call i32 @kfree(i8* %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %133, %126
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32 @parse_opts(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @hpfs_help(...) #1

declare dso_local i32 @unmark_dirty(%struct.super_block*) #1

declare dso_local i32 @mark_dirty(%struct.super_block*) #1

declare dso_local i32 @replace_mount_options(%struct.super_block*, i8*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
