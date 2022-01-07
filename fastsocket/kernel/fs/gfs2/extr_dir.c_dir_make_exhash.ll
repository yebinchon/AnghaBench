; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dir_make_exhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dir_make_exhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32, i32, i32, i32, i32 }
%struct.gfs2_sbd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_dirent = type { i8* }
%struct.qstr = type { i32, i64 }
%struct.buffer_head = type { i32, i64, i32 }
%struct.gfs2_leaf = type { i8* }

@ENOSPC = common dso_local global i32 0, align 4
@gfs2_dirent_last = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @dir_make_exhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_make_exhash(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_dirent*, align 8
  %7 = alloca %struct.qstr, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.gfs2_leaf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %18)
  store %struct.gfs2_sbd* %19, %struct.gfs2_sbd** %5, align 8
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %21 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %20, %struct.buffer_head** %9)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %2, align 4
  br label %175

26:                                               ; preds = %1
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.gfs2_leaf* @new_leaf(%struct.inode* %27, %struct.buffer_head** %8, i32 0)
  store %struct.gfs2_leaf* %28, %struct.gfs2_leaf** %10, align 8
  %29 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %30 = icmp ne %struct.gfs2_leaf* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOSPC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %175

34:                                               ; preds = %26
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %14, align 4
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 65536
  %43 = zext i1 %42 to i32
  %44 = call i32 @gfs2_assert(%struct.gfs2_sbd* %38, i32 %43)
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %46 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_be16(i32 %47)
  %49 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %10, align 8
  %50 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = call i32 @gfs2_buffer_copy_tail(%struct.buffer_head* %51, i32 8, %struct.buffer_head* %52, i32 4)
  store i32 0, i32* %12, align 4
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 4
  %59 = add i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %67 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %66, i32 0, i32 3
  %68 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @gfs2_dirent_last, align 4
  %75 = call %struct.gfs2_dirent* @gfs2_dirent_scan(i32* %67, i64 %70, i32 %73, i32 %74, %struct.qstr* %7, i32* null)
  store %struct.gfs2_dirent* %75, %struct.gfs2_dirent** %6, align 8
  %76 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %77 = icmp ne %struct.gfs2_dirent* %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %34
  %79 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  %81 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %82 = call i32 @brelse(%struct.buffer_head* %81)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %175

85:                                               ; preds = %34
  %86 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %87 = call i64 @IS_ERR(%struct.gfs2_dirent* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %91 = call i32 @brelse(%struct.buffer_head* %90)
  %92 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %93 = call i32 @brelse(%struct.buffer_head* %92)
  %94 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %95 = call i32 @PTR_ERR(%struct.gfs2_dirent* %94)
  store i32 %95, i32* %2, align 4
  br label %175

96:                                               ; preds = %85
  %97 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %98 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @be16_to_cpu(i8* %99)
  %101 = sext i32 %100 to i64
  %102 = add i64 %101, 4
  %103 = sub i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i8* @cpu_to_be16(i32 %104)
  %106 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %107 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %109 = call i32 @brelse(%struct.buffer_head* %108)
  %110 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %111 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %114 = call i32 @gfs2_trans_add_meta(i32 %112, %struct.buffer_head* %113)
  %115 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %116 = call i32 @gfs2_buffer_clear_tail(%struct.buffer_head* %115, i32 4)
  %117 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %118 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 4
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %13, align 8
  %122 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %123 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %133, %96
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %12, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @cpu_to_be64(i32 %130)
  %132 = load i32*, i32** %13, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %129
  %134 = load i32*, i32** %13, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %13, align 8
  br label %125

136:                                              ; preds = %125
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %139 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 2
  %143 = call i32 @i_size_write(%struct.inode* %137, i32 %142)
  %144 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %145 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %144, i32 0, i32 3
  %146 = call i32 @gfs2_add_inode_blocks(i32* %145, i32 1)
  %147 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %148 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %149 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %153 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %12, align 4
  store i32 -1, i32* %11, align 4
  br label %155

155:                                              ; preds = %159, %136
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = ashr i32 %160, 1
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %155

164:                                              ; preds = %155
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %167 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %169 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %170 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %168, i64 %171)
  %173 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %174 = call i32 @brelse(%struct.buffer_head* %173)
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %164, %89, %78, %31, %24
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local %struct.gfs2_leaf* @new_leaf(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @gfs2_buffer_copy_tail(%struct.buffer_head*, i32, %struct.buffer_head*, i32) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_scan(i32*, i64, i32, i32, %struct.qstr*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.buffer_head*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
