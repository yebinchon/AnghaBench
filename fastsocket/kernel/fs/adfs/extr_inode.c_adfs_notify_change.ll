; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_notify_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_notify_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, %struct.TYPE_4__, %struct.super_block* }
%struct.TYPE_4__ = type { i32 }
%struct.super_block = type { i32 }
%struct.iattr = type { i32, i64, i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adfs_notify_change(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 4
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %6, align 8
  %15 = load %struct.iattr*, %struct.iattr** %4, align 8
  %16 = getelementptr inbounds %struct.iattr, %struct.iattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = call i32 (...) @lock_kernel()
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = load %struct.iattr*, %struct.iattr** %4, align 8
  %21 = call i32 @inode_change_ok(%struct.inode* %19, %struct.iattr* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ATTR_UID, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.iattr*, %struct.iattr** %4, align 8
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = call %struct.TYPE_5__* @ADFS_SB(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %49, label %35

35:                                               ; preds = %26, %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ATTR_GID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.iattr*, %struct.iattr** %4, align 8
  %42 = getelementptr inbounds %struct.iattr, %struct.iattr* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = call %struct.TYPE_5__* @ADFS_SB(%struct.super_block* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40, %26
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %40, %35
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %141

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ATTR_SIZE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = load %struct.iattr*, %struct.iattr** %4, align 8
  %64 = getelementptr inbounds %struct.iattr, %struct.iattr* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vmtruncate(%struct.inode* %62, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %141

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @ATTR_MTIME, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 3
  %79 = load %struct.iattr*, %struct.iattr** %4, align 8
  %80 = getelementptr inbounds %struct.iattr, %struct.iattr* %79, i32 0, i32 5
  %81 = bitcast %struct.TYPE_4__* %78 to i8*
  %82 = bitcast %struct.TYPE_4__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 8 %82, i64 4, i1 false)
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = load %struct.iattr*, %struct.iattr** %4, align 8
  %85 = getelementptr inbounds %struct.iattr, %struct.iattr* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @adfs_unix2adfs_time(%struct.inode* %83, i32 %87)
  br label %89

89:                                               ; preds = %76, %71
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @ATTR_ATIME, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.iattr*, %struct.iattr** %4, align 8
  %96 = getelementptr inbounds %struct.iattr, %struct.iattr* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @ATTR_CTIME, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.iattr*, %struct.iattr** %4, align 8
  %107 = getelementptr inbounds %struct.iattr, %struct.iattr* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %100
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @ATTR_MODE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load %struct.super_block*, %struct.super_block** %6, align 8
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = call i32 @adfs_mode2atts(%struct.super_block* %117, %struct.inode* %118)
  %120 = load %struct.inode*, %struct.inode** %5, align 8
  %121 = call %struct.TYPE_6__* @ADFS_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load %struct.super_block*, %struct.super_block** %6, align 8
  %124 = load %struct.inode*, %struct.inode** %5, align 8
  %125 = call i32 @adfs_atts2mode(%struct.super_block* %123, %struct.inode* %124)
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %116, %111
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @ATTR_SIZE, align 4
  %131 = load i32, i32* @ATTR_MTIME, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @ATTR_MODE, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %129, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = call i32 @mark_inode_dirty(%struct.inode* %138)
  br label %140

140:                                              ; preds = %137, %128
  br label %141

141:                                              ; preds = %140, %70, %55
  %142 = call i32 (...) @unlock_kernel()
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local %struct.TYPE_5__* @ADFS_SB(%struct.super_block*) #1

declare dso_local i32 @vmtruncate(%struct.inode*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @adfs_unix2adfs_time(%struct.inode*, i32) #1

declare dso_local i32 @adfs_mode2atts(%struct.super_block*, %struct.inode*) #1

declare dso_local %struct.TYPE_6__* @ADFS_I(%struct.inode*) #1

declare dso_local i32 @adfs_atts2mode(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
