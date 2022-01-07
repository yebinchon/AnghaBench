; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/romfs/extr_super.c_romfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/romfs/extr_super.c_romfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.nameidata = type { i32 }
%struct.romfs_inode = type { i32, i32 }

@ROMFH_MASK = common dso_local global i64 0, align 8
@ROMFH_SIZE = common dso_local global i32 0, align 4
@ROMFH_TYPE = common dso_local global i64 0, align 8
@ROMFH_HRD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @romfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @romfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.romfs_inode, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ROMFH_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @ROMFH_SIZE, align 4
  %24 = call i32 @romfs_dev_read(i32 %21, i64 %22, %struct.romfs_inode* %10, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %120

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @romfs_maxsize(i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @be32_to_cpu(i32 %34)
  %36 = load i64, i64* @ROMFH_MASK, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %7, align 8
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %11, align 8
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %82, %28
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %46
  br label %115

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @romfs_dev_read(i32 %57, i64 %58, %struct.romfs_inode* %10, i32 8)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %120

63:                                               ; preds = %54
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* @ROMFH_SIZE, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %67, %69
  %71 = trunc i64 %70 to i32
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @romfs_dev_strcmp(i32 %66, i32 %71, i8* %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %120

78:                                               ; preds = %63
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %88

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %10, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @be32_to_cpu(i32 %84)
  %86 = load i64, i64* @ROMFH_MASK, align 8
  %87 = and i64 %85, %86
  store i64 %87, i64* %7, align 8
  br label %46

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %10, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @be32_to_cpu(i32 %90)
  %92 = load i64, i64* @ROMFH_TYPE, align 8
  %93 = and i64 %91, %92
  %94 = load i64, i64* @ROMFH_HRD, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @be32_to_cpu(i32 %98)
  %100 = load i64, i64* @ROMFH_MASK, align 8
  %101 = and i64 %99, %100
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %96, %88
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call %struct.inode* @romfs_iget(i32 %105, i64 %106)
  store %struct.inode* %107, %struct.inode** %9, align 8
  %108 = load %struct.inode*, %struct.inode** %9, align 8
  %109 = call i64 @IS_ERR(%struct.inode* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = call i32 @PTR_ERR(%struct.inode* %112)
  store i32 %113, i32* %13, align 4
  br label %120

114:                                              ; preds = %102
  br label %116

115:                                              ; preds = %53
  store %struct.inode* null, %struct.inode** %9, align 8
  br label %116

116:                                              ; preds = %115, %114
  %117 = load %struct.dentry*, %struct.dentry** %5, align 8
  %118 = load %struct.inode*, %struct.inode** %9, align 8
  %119 = call i32 @d_add(%struct.dentry* %117, %struct.inode* %118)
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %116, %111, %77, %62, %27
  %121 = load i32, i32* %13, align 4
  %122 = call %struct.dentry* @ERR_PTR(i32 %121)
  ret %struct.dentry* %122
}

declare dso_local i32 @romfs_dev_read(i32, i64, %struct.romfs_inode*, i32) #1

declare dso_local i64 @romfs_maxsize(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @romfs_dev_strcmp(i32, i32, i8*, i32) #1

declare dso_local %struct.inode* @romfs_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
