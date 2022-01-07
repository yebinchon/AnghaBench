; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_getblk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_getblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i32, i64 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"call get_create_access\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"not a new buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext4_getblk(i32* %0, %struct.inode* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.buffer_head, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %5
  %23 = phi i1 [ true, %5 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @J_ASSERT(i32 %24)
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  store i32 -1000, i32* %27, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 2
  %29 = call i32 @buffer_trace_init(i32* %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %34 = load i32, i32* %15, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %15, align 4
  br label %36

36:                                               ; preds = %32, %22
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @ext4_get_blocks(i32* %37, %struct.inode* %38, i32 %39, i32 1, %struct.buffer_head* %12, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %14, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @WARN_ON(i32 1)
  br label %49

49:                                               ; preds = %47, %44
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %135, label %55

55:                                               ; preds = %50
  %56 = call i64 @buffer_mapped(%struct.buffer_head* %12)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %135

58:                                               ; preds = %55
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_2__* %61, i32 %63)
  store %struct.buffer_head* %64, %struct.buffer_head** %16, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %66 = icmp ne %struct.buffer_head* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  br label %136

71:                                               ; preds = %58
  %72 = call i64 @buffer_new(%struct.buffer_head* %12)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %122

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @J_ASSERT(i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @J_ASSERT(i32 %81)
  %83 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %84 = call i32 @lock_buffer(%struct.buffer_head* %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %86 = call i32 @BUFFER_TRACE(%struct.buffer_head* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %89 = call i32 @ext4_journal_get_create_access(i32* %87, %struct.buffer_head* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %74
  %93 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %94 = call i32 @buffer_uptodate(%struct.buffer_head* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memset(i32 %99, i32 0, i32 %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %107 = call i32 @set_buffer_uptodate(%struct.buffer_head* %106)
  br label %108

108:                                              ; preds = %96, %92, %74
  %109 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %110 = call i32 @unlock_buffer(%struct.buffer_head* %109)
  %111 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %112 = call i32 @BUFFER_TRACE(%struct.buffer_head* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %116 = call i32 @ext4_handle_dirty_metadata(i32* %113, %struct.inode* %114, %struct.buffer_head* %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %119, %108
  br label %125

122:                                              ; preds = %71
  %123 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %124 = call i32 @BUFFER_TRACE(%struct.buffer_head* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %121
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* %13, align 4
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  %131 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %132 = call i32 @brelse(%struct.buffer_head* %131)
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  br label %133

133:                                              ; preds = %128, %125
  %134 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  store %struct.buffer_head* %134, %struct.buffer_head** %6, align 8
  br label %137

135:                                              ; preds = %55, %50
  br label %136

136:                                              ; preds = %135, %67
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  br label %137

137:                                              ; preds = %136, %133
  %138 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %138
}

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @buffer_trace_init(i32*) #1

declare dso_local i32 @ext4_get_blocks(i32*, %struct.inode*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_create_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
