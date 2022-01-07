; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32 }
%struct.dentry = type { %struct.inode* }
%struct.minix_sb_info = type { i64 }
%struct.page = type { i32 }
%struct.minix_dir_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @minix_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.minix_sb_info*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.minix_dir_entry*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.minix_dir_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.minix_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.minix_sb_info* @minix_sb(i32 %22)
  store %struct.minix_sb_info* %23, %struct.minix_sb_info** %10, align 8
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %11, align 8
  %27 = load %struct.dentry*, %struct.dentry** %9, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %12, align 8
  store %struct.page* null, %struct.page** %13, align 8
  store %struct.minix_dir_entry* null, %struct.minix_dir_entry** %14, align 8
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %17, align 4
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = call %struct.minix_dir_entry* @minix_find_entry(%struct.dentry* %32, %struct.page** %15)
  store %struct.minix_dir_entry* %33, %struct.minix_dir_entry** %16, align 8
  %34 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %16, align 8
  %35 = icmp ne %struct.minix_dir_entry* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %4
  br label %154

37:                                               ; preds = %4
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @S_ISDIR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %17, align 4
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = call %struct.minix_dir_entry* @minix_dotdot(%struct.inode* %46, %struct.page** %13)
  store %struct.minix_dir_entry* %47, %struct.minix_dir_entry** %14, align 8
  %48 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %14, align 8
  %49 = icmp ne %struct.minix_dir_entry* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %149

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.inode*, %struct.inode** %12, align 8
  %54 = icmp ne %struct.inode* %53, null
  br i1 %54, label %55, label %91

55:                                               ; preds = %52
  %56 = load i32, i32* @ENOTEMPTY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %17, align 4
  %58 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %14, align 8
  %59 = icmp ne %struct.minix_dir_entry* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = call i32 @minix_empty_dir(%struct.inode* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %140

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %17, align 4
  %68 = load %struct.dentry*, %struct.dentry** %9, align 8
  %69 = call %struct.minix_dir_entry* @minix_find_entry(%struct.dentry* %68, %struct.page** %18)
  store %struct.minix_dir_entry* %69, %struct.minix_dir_entry** %19, align 8
  %70 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %19, align 8
  %71 = icmp ne %struct.minix_dir_entry* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %140

73:                                               ; preds = %65
  %74 = load %struct.inode*, %struct.inode** %11, align 8
  %75 = call i32 @inode_inc_link_count(%struct.inode* %74)
  %76 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %19, align 8
  %77 = load %struct.page*, %struct.page** %18, align 8
  %78 = load %struct.inode*, %struct.inode** %11, align 8
  %79 = call i32 @minix_set_link(%struct.minix_dir_entry* %76, %struct.page* %77, %struct.inode* %78)
  %80 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %81 = load %struct.inode*, %struct.inode** %12, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %14, align 8
  %84 = icmp ne %struct.minix_dir_entry* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load %struct.inode*, %struct.inode** %12, align 8
  %87 = call i32 @drop_nlink(%struct.inode* %86)
  br label %88

88:                                               ; preds = %85, %73
  %89 = load %struct.inode*, %struct.inode** %12, align 8
  %90 = call i32 @inode_dec_link_count(%struct.inode* %89)
  br label %124

91:                                               ; preds = %52
  %92 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %14, align 8
  %93 = icmp ne %struct.minix_dir_entry* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i32, i32* @EMLINK, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %17, align 4
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %101 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %140

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %91
  %107 = load %struct.inode*, %struct.inode** %11, align 8
  %108 = call i32 @inode_inc_link_count(%struct.inode* %107)
  %109 = load %struct.dentry*, %struct.dentry** %9, align 8
  %110 = load %struct.inode*, %struct.inode** %11, align 8
  %111 = call i32 @minix_add_link(%struct.dentry* %109, %struct.inode* %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load %struct.inode*, %struct.inode** %11, align 8
  %116 = call i32 @inode_dec_link_count(%struct.inode* %115)
  br label %140

117:                                              ; preds = %106
  %118 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %14, align 8
  %119 = icmp ne %struct.minix_dir_entry* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.inode*, %struct.inode** %8, align 8
  %122 = call i32 @inode_inc_link_count(%struct.inode* %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %88
  %125 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %16, align 8
  %126 = load %struct.page*, %struct.page** %15, align 8
  %127 = call i32 @minix_delete_entry(%struct.minix_dir_entry* %125, %struct.page* %126)
  %128 = load %struct.inode*, %struct.inode** %11, align 8
  %129 = call i32 @inode_dec_link_count(%struct.inode* %128)
  %130 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %14, align 8
  %131 = icmp ne %struct.minix_dir_entry* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %124
  %133 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %14, align 8
  %134 = load %struct.page*, %struct.page** %13, align 8
  %135 = load %struct.inode*, %struct.inode** %8, align 8
  %136 = call i32 @minix_set_link(%struct.minix_dir_entry* %133, %struct.page* %134, %struct.inode* %135)
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = call i32 @inode_dec_link_count(%struct.inode* %137)
  br label %139

139:                                              ; preds = %132, %124
  store i32 0, i32* %5, align 4
  br label %156

140:                                              ; preds = %114, %104, %72, %64
  %141 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %14, align 8
  %142 = icmp ne %struct.minix_dir_entry* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.page*, %struct.page** %13, align 8
  %145 = call i32 @kunmap(%struct.page* %144)
  %146 = load %struct.page*, %struct.page** %13, align 8
  %147 = call i32 @page_cache_release(%struct.page* %146)
  br label %148

148:                                              ; preds = %143, %140
  br label %149

149:                                              ; preds = %148, %50
  %150 = load %struct.page*, %struct.page** %15, align 8
  %151 = call i32 @kunmap(%struct.page* %150)
  %152 = load %struct.page*, %struct.page** %15, align 8
  %153 = call i32 @page_cache_release(%struct.page* %152)
  br label %154

154:                                              ; preds = %149, %36
  %155 = load i32, i32* %17, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %154, %139
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local %struct.minix_sb_info* @minix_sb(i32) #1

declare dso_local %struct.minix_dir_entry* @minix_find_entry(%struct.dentry*, %struct.page**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.minix_dir_entry* @minix_dotdot(%struct.inode*, %struct.page**) #1

declare dso_local i32 @minix_empty_dir(%struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @minix_set_link(%struct.minix_dir_entry*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @minix_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @minix_delete_entry(%struct.minix_dir_entry*, %struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
