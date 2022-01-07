; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_alloc_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_alloc_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8**, i8*, %struct.buffer_head* }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*, i32, i32*, %struct.TYPE_4__*)* @ext2_alloc_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_alloc_branch(%struct.inode* %0, i32 %1, i32* %2, i32 %3, i32* %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %33 = call i32 @ext2_alloc_blocks(%struct.inode* %27, i32 %28, i32 %29, i32 %31, i32* %32, i32* %17)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %7, align 4
  br label %167

38:                                               ; preds = %6
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  store i32 1, i32* %16, align 4
  br label %45

45:                                               ; preds = %160, %38
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %163

49:                                               ; preds = %45
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_5__* %52, i32 %57)
  store %struct.buffer_head* %58, %struct.buffer_head** %18, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store %struct.buffer_head* %59, %struct.buffer_head** %64, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %66 = call i32 @lock_buffer(%struct.buffer_head* %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @memset(i64 %69, i32 0, i32 %70)
  %72 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8**
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %75, i64 %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i8** %82, i8*** %87, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i8* %92, i8** %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  store i8* %103, i8** %109, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %49
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %21, align 4
  store i32 1, i32* %15, align 4
  br label %118

118:                                              ; preds = %135, %113
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %118
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %21, align 4
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  store i8* %125, i8** %134, align 8
  br label %135

135:                                              ; preds = %122
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %118

138:                                              ; preds = %118
  br label %139

139:                                              ; preds = %138, %49
  %140 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %141 = call i32 @set_buffer_uptodate(%struct.buffer_head* %140)
  %142 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %143 = call i32 @unlock_buffer(%struct.buffer_head* %142)
  %144 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %145 = load %struct.inode*, %struct.inode** %8, align 8
  %146 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %144, %struct.inode* %145)
  %147 = load %struct.inode*, %struct.inode** %8, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @S_ISDIR(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %139
  %153 = load %struct.inode*, %struct.inode** %8, align 8
  %154 = call i64 @IS_DIRSYNC(%struct.inode* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %158 = call i32 @sync_dirty_buffer(%struct.buffer_head* %157)
  br label %159

159:                                              ; preds = %156, %152, %139
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %45

163:                                              ; preds = %45
  %164 = load i32, i32* %19, align 4
  %165 = load i32*, i32** %10, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %17, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %163, %36
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32 @ext2_alloc_blocks(%struct.inode*, i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
