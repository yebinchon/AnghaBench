; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_atts2mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_atts2mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.adfs_sb_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ADFS_NDA_DIRECTORY = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@ADFS_NDA_OWNER_READ = common dso_local global i32 0, align 4
@ADFS_NDA_OWNER_WRITE = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@ADFS_NDA_PUBLIC_READ = common dso_local global i32 0, align 4
@ADFS_NDA_PUBLIC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @adfs_atts2mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_atts2mode(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call %struct.adfs_sb_info* @ADFS_SB(%struct.super_block* %15)
  store %struct.adfs_sb_info* %16, %struct.adfs_sb_info** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ADFS_NDA_DIRECTORY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* @S_IRUGO, align 4
  %23 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %10, align 8
  %24 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @S_IFDIR, align 4
  %28 = load i32, i32* @S_IXUGO, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %101

32:                                               ; preds = %2
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @adfs_filetype(%struct.inode* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %44 [
    i32 4032, label %36
    i32 4070, label %40
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @S_IFLNK, align 4
  %38 = load i32, i32* @S_IRWXUGO, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %3, align 4
  br label %101

40:                                               ; preds = %32
  %41 = load i32, i32* @S_IRUGO, align 4
  %42 = load i32, i32* @S_IXUGO, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %9, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @S_IRUGO, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* @S_IFREG, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ADFS_NDA_OWNER_READ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %10, align 8
  %55 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %52, %46
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ADFS_NDA_OWNER_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* @S_IWUGO, align 4
  %67 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %10, align 8
  %68 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %66, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %65, %60
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ADFS_NDA_PUBLIC_READ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %10, align 8
  %81 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %79, %82
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %78, %73
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @ADFS_NDA_PUBLIC_WRITE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i32, i32* @S_IWUGO, align 4
  %93 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %10, align 8
  %94 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %92, %95
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %91, %86
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %36, %21
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_2__* @ADFS_I(%struct.inode*) #1

declare dso_local %struct.adfs_sb_info* @ADFS_SB(%struct.super_block*) #1

declare dso_local i32 @adfs_filetype(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
