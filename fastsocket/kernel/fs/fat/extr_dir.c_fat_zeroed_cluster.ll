; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_zeroed_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_zeroed_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, %struct.buffer_head**, i32)* @fat_zeroed_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_zeroed_cluster(%struct.inode* %0, i64 %1, i32 %2, %struct.buffer_head** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.super_block*, %struct.super_block** %12, align 8
  %22 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %20, %24
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %112, %5
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %113

35:                                               ; preds = %31
  %36 = load %struct.super_block*, %struct.super_block** %12, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %36, i64 %37)
  %39 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %41
  store %struct.buffer_head* %38, %struct.buffer_head** %42, align 8
  %43 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %43, i64 %45
  %47 = load %struct.buffer_head*, %struct.buffer_head** %46, align 8
  %48 = icmp ne %struct.buffer_head* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %141

52:                                               ; preds = %35
  %53 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %53, i64 %55
  %57 = load %struct.buffer_head*, %struct.buffer_head** %56, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.super_block*, %struct.super_block** %12, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memset(i32 %59, i32 0, i32 %62)
  %64 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %64, i64 %66
  %68 = load %struct.buffer_head*, %struct.buffer_head** %67, align 8
  %69 = call i32 @set_buffer_uptodate(%struct.buffer_head* %68)
  %70 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %70, i64 %72
  %74 = load %struct.buffer_head*, %struct.buffer_head** %73, align 8
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %74, %struct.inode* %75)
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %16, align 4
  %79 = load i64, i64* %8, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %8, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %52
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = call i64 @IS_DIRSYNC(%struct.inode* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @fat_sync_bhs(%struct.buffer_head** %89, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %141

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %84
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %108, %96
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %102, i64 %104
  %106 = load %struct.buffer_head*, %struct.buffer_head** %105, align 8
  %107 = call i32 @brelse(%struct.buffer_head* %106)
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %97

111:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  br label %112

112:                                              ; preds = %111, %52
  br label %31

113:                                              ; preds = %31
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = call i64 @IS_DIRSYNC(%struct.inode* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @fat_sync_bhs(%struct.buffer_head** %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %141

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %113
  store i32 0, i32* %15, align 4
  br label %126

126:                                              ; preds = %137, %125
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %131, i64 %133
  %135 = load %struct.buffer_head*, %struct.buffer_head** %134, align 8
  %136 = call i32 @brelse(%struct.buffer_head* %135)
  br label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %126

140:                                              ; preds = %126
  store i32 0, i32* %6, align 4
  br label %158

141:                                              ; preds = %123, %94, %49
  store i32 0, i32* %15, align 4
  br label %142

142:                                              ; preds = %153, %141
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %147, i64 %149
  %151 = load %struct.buffer_head*, %struct.buffer_head** %150, align 8
  %152 = call i32 @bforget(%struct.buffer_head* %151)
  br label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %142

156:                                              ; preds = %142
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %156, %140
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @fat_sync_bhs(%struct.buffer_head**, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
