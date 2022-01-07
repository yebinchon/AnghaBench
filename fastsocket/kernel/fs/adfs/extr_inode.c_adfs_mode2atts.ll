; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_mode2atts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_mode2atts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.adfs_sb_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ADFS_NDA_DIRECTORY = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@ADFS_NDA_OWNER_READ = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@ADFS_NDA_OWNER_WRITE = common dso_local global i32 0, align 4
@ADFS_NDA_PUBLIC_READ = common dso_local global i32 0, align 4
@ADFS_NDA_PUBLIC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @adfs_mode2atts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_mode2atts(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.adfs_sb_info* @ADFS_SB(%struct.super_block* %9)
  store %struct.adfs_sb_info* %10, %struct.adfs_sb_info** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @S_ISLNK(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %88

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISDIR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ADFS_NDA_DIRECTORY, align 4
  store i32 %28, i32* %7, align 4
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %35 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @S_IRUGO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i32, i32* @ADFS_NDA_OWNER_READ, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %30
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @S_IWUGO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @ADFS_NDA_OWNER_WRITE, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %60 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %8, align 8
  %64 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @S_IRUGO, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %55
  %74 = load i32, i32* @ADFS_NDA_PUBLIC_READ, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %55
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @S_IWUGO, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @ADFS_NDA_PUBLIC_WRITE, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.adfs_sb_info* @ADFS_SB(%struct.super_block*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.TYPE_2__* @ADFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
