; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_getblk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_getblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i32, i64 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"call get_create_access\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"not a new buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext3_getblk(i32* %0, %struct.inode* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.buffer_head, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i1 [ true, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @J_ASSERT(i32 %23)
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  store i32 -1000, i32* %26, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 2
  %28 = call i32 @buffer_trace_init(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @ext3_get_blocks_handle(i32* %29, %struct.inode* %30, i64 %31, i32 1, %struct.buffer_head* %12, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load i32, i32* %14, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @WARN_ON(i32 1)
  br label %41

41:                                               ; preds = %39, %36
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %126, label %47

47:                                               ; preds = %42
  %48 = call i64 @buffer_mapped(%struct.buffer_head* %12)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %126

50:                                               ; preds = %47
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_2__* %53, i32 %55)
  store %struct.buffer_head* %56, %struct.buffer_head** %15, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %58 = icmp ne %struct.buffer_head* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  br label %127

63:                                               ; preds = %50
  %64 = call i64 @buffer_new(%struct.buffer_head* %12)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @J_ASSERT(i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = icmp ne i32* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @J_ASSERT(i32 %73)
  %75 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %76 = call i32 @lock_buffer(%struct.buffer_head* %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %78 = call i32 @BUFFER_TRACE(%struct.buffer_head* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %81 = call i32 @ext3_journal_get_create_access(i32* %79, %struct.buffer_head* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %66
  %85 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %86 = call i32 @buffer_uptodate(%struct.buffer_head* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memset(i32 %91, i32 0, i32 %96)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %99 = call i32 @set_buffer_uptodate(%struct.buffer_head* %98)
  br label %100

100:                                              ; preds = %88, %84, %66
  %101 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %102 = call i32 @unlock_buffer(%struct.buffer_head* %101)
  %103 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %104 = call i32 @BUFFER_TRACE(%struct.buffer_head* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %107 = call i32 @ext3_journal_dirty_metadata(i32* %105, %struct.buffer_head* %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %110, %100
  br label %116

113:                                              ; preds = %63
  %114 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %115 = call i32 @BUFFER_TRACE(%struct.buffer_head* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %112
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = load i32*, i32** %11, align 8
  store i32 %120, i32* %121, align 4
  %122 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %123 = call i32 @brelse(%struct.buffer_head* %122)
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %124

124:                                              ; preds = %119, %116
  %125 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %125, %struct.buffer_head** %6, align 8
  br label %128

126:                                              ; preds = %47, %42
  br label %127

127:                                              ; preds = %126, %59
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  br label %128

128:                                              ; preds = %127, %124
  %129 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %129
}

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @buffer_trace_init(i32*) #1

declare dso_local i32 @ext3_get_blocks_handle(i32*, %struct.inode*, i64, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_get_create_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
