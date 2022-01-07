; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_inode.c_qnx4_block_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_inode.c_qnx4_block_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.qnx4_xblk = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qnx4_inode_entry = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"qnx4: I/O error reading xtnt block [%ld])\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"IamXblk\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"qnx4: block at %ld is not a valid xtnt\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"qnx4: mapping block %ld of inode %ld = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qnx4_block_map(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.qnx4_xblk*, align 8
  %12 = alloca %struct.qnx4_inode_entry*, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store %struct.qnx4_xblk* null, %struct.qnx4_xblk** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.qnx4_inode_entry* @qnx4_raw_inode(%struct.inode* %14)
  store %struct.qnx4_inode_entry* %15, %struct.qnx4_inode_entry** %12, align 8
  %16 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %12, align 8
  %17 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le16_to_cpu(i32 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %12, align 8
  %22 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %12, align 8
  %29 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %32, %33
  %35 = sub nsw i64 %34, 1
  store i64 %35, i64* %9, align 8
  br label %149

36:                                               ; preds = %2
  %37 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %12, align 8
  %38 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %12, align 8
  %43 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32_to_cpu(i32 %45)
  %47 = sub nsw i64 %41, %46
  store i64 %47, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %141, %36
  %49 = load i64, i64* %13, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %13, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %142

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %52
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %8, align 8
  %60 = sub nsw i64 %59, 1
  %61 = call %struct.buffer_head* @sb_bread(i32 %58, i64 %60)
  store %struct.buffer_head* %61, %struct.buffer_head** %10, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %63 = icmp ne %struct.buffer_head* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %8, align 8
  %66 = sub nsw i64 %65, 1
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @QNX4DEBUG(i8* %67)
  %69 = load i64, i64* @EIO, align 8
  %70 = sub i64 0, %69
  store i64 %70, i64* %3, align 8
  br label %158

71:                                               ; preds = %55
  %72 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.qnx4_xblk*
  store %struct.qnx4_xblk* %75, %struct.qnx4_xblk** %11, align 8
  %76 = load %struct.qnx4_xblk*, %struct.qnx4_xblk** %11, align 8
  %77 = getelementptr inbounds %struct.qnx4_xblk, %struct.qnx4_xblk* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @memcmp(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %71
  %82 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %12, align 8
  %83 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @QNX4DEBUG(i8* %86)
  %88 = load i64, i64* @EIO, align 8
  %89 = sub i64 0, %88
  store i64 %89, i64* %3, align 8
  br label %158

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90, %52
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.qnx4_xblk*, %struct.qnx4_xblk** %11, align 8
  %94 = getelementptr inbounds %struct.qnx4_xblk, %struct.qnx4_xblk* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @le32_to_cpu(i32 %100)
  %102 = icmp slt i64 %92, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %91
  %104 = load %struct.qnx4_xblk*, %struct.qnx4_xblk** %11, align 8
  %105 = getelementptr inbounds %struct.qnx4_xblk, %struct.qnx4_xblk* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @le32_to_cpu(i32 %111)
  %113 = load i64, i64* %7, align 8
  %114 = add nsw i64 %112, %113
  %115 = sub nsw i64 %114, 1
  store i64 %115, i64* %9, align 8
  br label %142

116:                                              ; preds = %91
  %117 = load %struct.qnx4_xblk*, %struct.qnx4_xblk** %11, align 8
  %118 = getelementptr inbounds %struct.qnx4_xblk, %struct.qnx4_xblk* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @le32_to_cpu(i32 %124)
  %126 = load i64, i64* %7, align 8
  %127 = sub nsw i64 %126, %125
  store i64 %127, i64* %7, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  %130 = load %struct.qnx4_xblk*, %struct.qnx4_xblk** %11, align 8
  %131 = getelementptr inbounds %struct.qnx4_xblk, %struct.qnx4_xblk* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp sge i32 %129, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %116
  %135 = load %struct.qnx4_xblk*, %struct.qnx4_xblk** %11, align 8
  %136 = getelementptr inbounds %struct.qnx4_xblk, %struct.qnx4_xblk* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @le32_to_cpu(i32 %137)
  store i64 %138, i64* %8, align 8
  store i32 0, i32* %6, align 4
  %139 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %140 = call i32 @brelse(%struct.buffer_head* %139)
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  br label %141

141:                                              ; preds = %134, %116
  br label %48

142:                                              ; preds = %103, %48
  %143 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %144 = icmp ne %struct.buffer_head* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %147 = call i32 @brelse(%struct.buffer_head* %146)
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %27
  %150 = load i64, i64* %5, align 8
  %151 = load %struct.inode*, %struct.inode** %4, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %9, align 8
  %155 = inttoptr i64 %154 to i8*
  %156 = call i32 @QNX4DEBUG(i8* %155)
  %157 = load i64, i64* %9, align 8
  store i64 %157, i64* %3, align 8
  br label %158

158:                                              ; preds = %149, %81, %64
  %159 = load i64, i64* %3, align 8
  ret i64 %159
}

declare dso_local %struct.qnx4_inode_entry* @qnx4_raw_inode(%struct.inode*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i32 @QNX4DEBUG(i8*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
