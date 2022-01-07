; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_inode.c_qnx4_checkroot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_inode.c_qnx4_checkroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.qnx4_inode_entry = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"no qnx4 filesystem (no root dir).\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"QNX4 filesystem found on dev %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to read root entry.\00", align 1
@QNX4_INODES_PER_BLOCK = common dso_local global i32 0, align 4
@QNX4_DIR_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Rootdir entry found : [%s]\0A\00", align 1
@QNX4_BMNAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"not enough memory for bitmap inode\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"bitmap file not found.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*)* @qnx4_checkroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qnx4_checkroot(%struct.super_block* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.qnx4_inode_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.TYPE_8__* @qnx4_sb(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 47
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %134

22:                                               ; preds = %1
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @QNX4DEBUG(i8* %27)
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = call %struct.TYPE_8__* @qnx4_sb(%struct.super_block* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = call %struct.TYPE_8__* @qnx4_sb(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %125, %22
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %128

52:                                               ; preds = %48
  %53 = load %struct.super_block*, %struct.super_block** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %54, %55
  %57 = call %struct.buffer_head* @sb_bread(%struct.super_block* %53, i32 %56)
  store %struct.buffer_head* %57, %struct.buffer_head** %4, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %59 = icmp eq %struct.buffer_head* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %134

61:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %115, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @QNX4_INODES_PER_BLOCK, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %118

66:                                               ; preds = %62
  %67 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @QNX4_DIR_ENTRY_SIZE, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = inttoptr i64 %74 to %struct.qnx4_inode_entry*
  store %struct.qnx4_inode_entry* %75, %struct.qnx4_inode_entry** %5, align 8
  %76 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %5, align 8
  %77 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %114

80:                                               ; preds = %66
  %81 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %5, align 8
  %82 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = bitcast i32* %83 to i8*
  %85 = call i32 @QNX4DEBUG(i8* %84)
  %86 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %5, align 8
  %87 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @QNX4_BMNAME, align 4
  %90 = call i32 @strncmp(i32* %88, i32 %89, i32 4)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %113, label %92

92:                                               ; preds = %80
  store i32 1, i32* %10, align 4
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i32 @kmalloc(i32 8, i32 %93)
  %95 = load %struct.super_block*, %struct.super_block** %3, align 8
  %96 = call %struct.TYPE_8__* @qnx4_sb(%struct.super_block* %95)
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.super_block*, %struct.super_block** %3, align 8
  %99 = call %struct.TYPE_8__* @qnx4_sb(%struct.super_block* %98)
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %92
  %104 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %105 = call i32 @brelse(%struct.buffer_head* %104)
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %134

106:                                              ; preds = %92
  %107 = load %struct.super_block*, %struct.super_block** %3, align 8
  %108 = call %struct.TYPE_8__* @qnx4_sb(%struct.super_block* %107)
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %5, align 8
  %112 = call i32 @memcpy(i32 %110, %struct.qnx4_inode_entry* %111, i32 8)
  br label %118

113:                                              ; preds = %80
  br label %114

114:                                              ; preds = %113, %66
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %62

118:                                              ; preds = %106, %62
  %119 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %120 = call i32 @brelse(%struct.buffer_head* %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %128

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %48

128:                                              ; preds = %123, %48
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %134

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132
  store i8* null, i8** %2, align 8
  br label %134

134:                                              ; preds = %133, %131, %103, %60, %21
  %135 = load i8*, i8** %2, align 8
  ret i8* %135
}

declare dso_local %struct.TYPE_8__* @qnx4_sb(%struct.super_block*) #1

declare dso_local i32 @QNX4DEBUG(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @strncmp(i32*, i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i32, %struct.qnx4_inode_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
