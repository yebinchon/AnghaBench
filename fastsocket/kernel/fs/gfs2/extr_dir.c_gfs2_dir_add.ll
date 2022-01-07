; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.gfs2_inode = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_dirent = type { i32 }
%struct.gfs2_leaf = type { i32 }

@gfs2_dirent_find_space = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@GFS2_DIR_MAX_DEPTH = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_add(%struct.inode* %0, %struct.qstr* %1, %struct.gfs2_inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.gfs2_dirent*, align 8
  %13 = alloca %struct.gfs2_leaf*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.gfs2_inode* %2, %struct.gfs2_inode** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %15)
  store %struct.gfs2_inode* %16, %struct.gfs2_inode** %10, align 8
  br label %17

17:                                               ; preds = %4, %98, %105, %132, %140
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = load %struct.qstr*, %struct.qstr** %7, align 8
  %20 = load i32, i32* @gfs2_dirent_find_space, align 4
  %21 = call %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode* %18, %struct.qstr* %19, i32 %20, %struct.buffer_head** %11)
  store %struct.gfs2_dirent* %21, %struct.gfs2_dirent** %12, align 8
  %22 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %23 = icmp ne %struct.gfs2_dirent* %22, null
  br i1 %23, label %24, label %85

24:                                               ; preds = %17
  %25 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %26 = call i64 @IS_ERR(%struct.gfs2_dirent* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %30 = call i32 @PTR_ERR(%struct.gfs2_dirent* %29)
  store i32 %30, i32* %5, align 4
  br label %146

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %34 = load %struct.qstr*, %struct.qstr** %7, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %36 = call %struct.gfs2_dirent* @gfs2_init_dirent(%struct.inode* %32, %struct.gfs2_dirent* %33, %struct.qstr* %34, %struct.buffer_head* %35)
  store %struct.gfs2_dirent* %36, %struct.gfs2_dirent** %12, align 8
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %38 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %39 = call i32 @gfs2_inum_out(%struct.gfs2_inode* %37, %struct.gfs2_dirent* %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @cpu_to_be16(i32 %40)
  %42 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %12, align 8
  %43 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %31
  %51 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %54, %struct.gfs2_leaf** %13, align 8
  %55 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %56 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %55, i32 0, i32 0
  %57 = call i32 @be16_add_cpu(i32* %56, i32 1)
  br label %58

58:                                               ; preds = %50, %31
  %59 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %60 = call i32 @brelse(%struct.buffer_head* %59)
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @CURRENT_TIME, align 4
  %66 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %67 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %70 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %65, i32* %71, align 8
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %73 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @S_ISDIR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %58
  %79 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %80 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %79, i32 0, i32 2
  %81 = call i32 @inc_nlink(%struct.TYPE_2__* %80)
  br label %82

82:                                               ; preds = %78, %58
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @mark_inode_dirty(%struct.inode* %83)
  store i32 0, i32* %14, align 4
  br label %144

85:                                               ; preds = %17
  %86 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %87 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = call i32 @dir_make_exhash(%struct.inode* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %144

98:                                               ; preds = %92
  br label %17

99:                                               ; preds = %85
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = load %struct.qstr*, %struct.qstr** %7, align 8
  %102 = call i32 @dir_split_leaf(%struct.inode* %100, %struct.qstr* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %17

106:                                              ; preds = %99
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %144

110:                                              ; preds = %106
  %111 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %112 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @GFS2_DIR_MAX_DEPTH, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %118 = call i32 @dir_double_exhash(%struct.gfs2_inode* %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %144

122:                                              ; preds = %116
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = load %struct.qstr*, %struct.qstr** %7, align 8
  %125 = call i32 @dir_split_leaf(%struct.inode* %123, %struct.qstr* %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %144

129:                                              ; preds = %122
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %17

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133, %110
  %135 = load %struct.inode*, %struct.inode** %6, align 8
  %136 = load %struct.qstr*, %struct.qstr** %7, align 8
  %137 = call i32 @dir_new_leaf(%struct.inode* %135, %struct.qstr* %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  br label %17

141:                                              ; preds = %134
  %142 = load i32, i32* @ENOSPC, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %141, %128, %121, %109, %97, %82
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %28
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode*, %struct.qstr*, i32, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local %struct.gfs2_dirent* @gfs2_init_dirent(%struct.inode*, %struct.gfs2_dirent*, %struct.qstr*, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_inum_out(%struct.gfs2_inode*, %struct.gfs2_dirent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @inc_nlink(%struct.TYPE_2__*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @dir_make_exhash(%struct.inode*) #1

declare dso_local i32 @dir_split_leaf(%struct.inode*, %struct.qstr*) #1

declare dso_local i32 @dir_double_exhash(%struct.gfs2_inode*) #1

declare dso_local i32 @dir_new_leaf(%struct.inode*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
