; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs1_read_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs1_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i8*, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, i32, i32, i32, i32, i8*, i8*, %struct.super_block* }
%struct.TYPE_17__ = type { i64, i8* }
%struct.TYPE_16__ = type { i64, i8* }
%struct.TYPE_15__ = type { i64, i8* }
%struct.super_block = type { i32 }
%struct.ufs_inode = type { %struct.TYPE_20__, %struct.TYPE_19__, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ufs_inode_info = type { %struct.TYPE_11__, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i64*, i64* }

@.str = private unnamed_addr constant [15 x i8] c"ufs_read_inode\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"inode %lu has zero nlink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ufs_inode*)* @ufs1_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs1_read_inode(%struct.inode* %0, %struct.ufs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ufs_inode*, align 8
  %6 = alloca %struct.ufs_inode_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ufs_inode* %1, %struct.ufs_inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %9)
  store %struct.ufs_inode_info* %10, %struct.ufs_inode_info** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 11
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %16 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @fs16_to_cpu(%struct.super_block* %14, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 10
  store i8* %18, i8** %20, align 8
  %21 = load %struct.super_block*, %struct.super_block** %7, align 8
  %22 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %23 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @fs16_to_cpu(%struct.super_block* %21, i32 %24)
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 9
  store i8* %25, i8** %27, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 9
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.super_block*, %struct.super_block** %7, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ufs_error(%struct.super_block* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %3, align 4
  br label %168

38:                                               ; preds = %2
  %39 = load %struct.super_block*, %struct.super_block** %7, align 8
  %40 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %41 = call i32 @ufs_get_inode_uid(%struct.super_block* %39, %struct.ufs_inode* %40)
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.super_block*, %struct.super_block** %7, align 8
  %45 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %46 = call i32 @ufs_get_inode_gid(%struct.super_block* %44, %struct.ufs_inode* %45)
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.super_block*, %struct.super_block** %7, align 8
  %50 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %51 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @fs64_to_cpu(%struct.super_block* %49, i32 %52)
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.super_block*, %struct.super_block** %7, align 8
  %57 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %58 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @fs32_to_cpu(%struct.super_block* %56, i32 %60)
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.super_block*, %struct.super_block** %7, align 8
  %66 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %67 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @fs32_to_cpu(%struct.super_block* %65, i32 %69)
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.super_block*, %struct.super_block** %7, align 8
  %75 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %76 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @fs32_to_cpu(%struct.super_block* %74, i32 %78)
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.super_block*, %struct.super_block** %7, align 8
  %93 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %94 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @fs32_to_cpu(%struct.super_block* %92, i32 %95)
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.super_block*, %struct.super_block** %7, align 8
  %100 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %101 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @fs32_to_cpu(%struct.super_block* %99, i32 %102)
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.super_block*, %struct.super_block** %7, align 8
  %107 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %108 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @fs32_to_cpu(%struct.super_block* %106, i32 %109)
  %111 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %112 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.super_block*, %struct.super_block** %7, align 8
  %114 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %115 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @fs32_to_cpu(%struct.super_block* %113, i32 %118)
  %120 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %121 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.super_block*, %struct.super_block** %7, align 8
  %123 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %124 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @fs32_to_cpu(%struct.super_block* %122, i32 %127)
  %129 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %130 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i64 @S_ISCHR(i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %38
  %135 = load i8*, i8** %8, align 8
  %136 = call i64 @S_ISBLK(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %138, %134, %38
  %144 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %145 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %149 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 1
  %151 = call i32 @memcpy(i64* %147, i32* %150, i32 4)
  br label %167

152:                                              ; preds = %138
  %153 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %154 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load %struct.ufs_inode*, %struct.ufs_inode** %5, align 8
  %158 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @memcpy(i64* %156, i32* %160, i32 7)
  %162 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %163 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 7
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %152, %143
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %32
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local i8* @fs16_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @ufs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local i32 @ufs_get_inode_uid(%struct.super_block*, %struct.ufs_inode*) #1

declare dso_local i32 @ufs_get_inode_gid(%struct.super_block*, %struct.ufs_inode*) #1

declare dso_local i32 @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i64 @S_ISCHR(i8*) #1

declare dso_local i64 @S_ISBLK(i8*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
