; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_inode.c_cramfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_inode.c_cramfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.nameidata = type { i32 }
%struct.cramfs_inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@read_mutex = common dso_local global i32 0, align 4
@CRAMFS_FLAG_SORTED_DIRS = common dso_local global i32 0, align 4
@CRAMFS_MAXPATHLEN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @cramfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @cramfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cramfs_inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cramfs_inode, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = call i32 @mutex_lock(i32* @read_mutex)
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_4__* @CRAMFS_SB(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CRAMFS_FLAG_SORTED_DIRS, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %140, %121, %110, %81, %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %141

30:                                               ; preds = %24
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i64 @OFFSET(%struct.inode* %34)
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i64, i64* @CRAMFS_MAXPATHLEN, align 8
  %40 = add i64 4, %39
  %41 = call %struct.cramfs_inode* @cramfs_read(i32 %33, i64 %38, i64 %40)
  store %struct.cramfs_inode* %41, %struct.cramfs_inode** %10, align 8
  %42 = load %struct.cramfs_inode*, %struct.cramfs_inode** %10, align 8
  %43 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %42, i64 1
  %44 = bitcast %struct.cramfs_inode* %43 to i8*
  store i8* %44, i8** %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %30
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %141

61:                                               ; preds = %47, %30
  %62 = load %struct.cramfs_inode*, %struct.cramfs_inode** %10, align 8
  %63 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 2
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 4, %67
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %8, align 4
  %73 = load %struct.dentry*, %struct.dentry** %6, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 3
  %78 = and i32 %77, -4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %61
  br label %24

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %100, %82
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = call i32 @mutex_unlock(i32* @read_mutex)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  %90 = call %struct.dentry* @ERR_PTR(i32 %89)
  store %struct.dentry* %90, %struct.dentry** %4, align 8
  br label %145

91:                                               ; preds = %83
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %12, align 4
  br label %83

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.dentry*, %struct.dentry** %6, align 8
  %106 = getelementptr inbounds %struct.dentry, %struct.dentry* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %104, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %24

111:                                              ; preds = %103
  %112 = load %struct.dentry*, %struct.dentry** %6, align 8
  %113 = getelementptr inbounds %struct.dentry, %struct.dentry* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @memcmp(i8* %115, i8* %116, i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %24

122:                                              ; preds = %111
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %122
  %126 = load %struct.cramfs_inode*, %struct.cramfs_inode** %10, align 8
  %127 = bitcast %struct.cramfs_inode* %14 to i8*
  %128 = bitcast %struct.cramfs_inode* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 4, i1 false)
  %129 = call i32 @mutex_unlock(i32* @read_mutex)
  %130 = load %struct.dentry*, %struct.dentry** %6, align 8
  %131 = load %struct.inode*, %struct.inode** %5, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32* @get_cramfs_inode(i32 %133, %struct.cramfs_inode* %14)
  %135 = call i32 @d_add(%struct.dentry* %130, i32* %134)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %145

136:                                              ; preds = %122
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %141

140:                                              ; preds = %136
  br label %24

141:                                              ; preds = %139, %60, %24
  %142 = call i32 @mutex_unlock(i32* @read_mutex)
  %143 = load %struct.dentry*, %struct.dentry** %6, align 8
  %144 = call i32 @d_add(%struct.dentry* %143, i32* null)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %145

145:                                              ; preds = %141, %125, %86
  %146 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %146
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @CRAMFS_SB(i32) #1

declare dso_local %struct.cramfs_inode* @cramfs_read(i32, i64, i64) #1

declare dso_local i64 @OFFSET(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @d_add(%struct.dentry*, i32*) #1

declare dso_local i32* @get_cramfs_inode(i32, %struct.cramfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
