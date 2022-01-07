; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i8*, i32 }
%struct.dentry = type { %struct.inode* }
%struct.page = type { i32 }
%struct.ufs_dir_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i8* null, align 8
@EMLINK = common dso_local global i32 0, align 4
@UFS_LINK_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @ufs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.ufs_dir_entry*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.ufs_dir_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.ufs_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.dentry*, %struct.dentry** %9, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %11, align 8
  store %struct.page* null, %struct.page** %12, align 8
  store %struct.ufs_dir_entry* null, %struct.ufs_dir_entry** %13, align 8
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %16, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = call %struct.ufs_dir_entry* @ufs_find_entry(%struct.inode* %27, %struct.dentry* %28, %struct.page** %14)
  store %struct.ufs_dir_entry* %29, %struct.ufs_dir_entry** %15, align 8
  %30 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %15, align 8
  %31 = icmp ne %struct.ufs_dir_entry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %155

33:                                               ; preds = %4
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %16, align 4
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call %struct.ufs_dir_entry* @ufs_dotdot(%struct.inode* %42, %struct.page** %12)
  store %struct.ufs_dir_entry* %43, %struct.ufs_dir_entry** %13, align 8
  %44 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %13, align 8
  %45 = icmp ne %struct.ufs_dir_entry* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %150

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %33
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = icmp ne %struct.inode* %49, null
  br i1 %50, label %51, label %89

51:                                               ; preds = %48
  %52 = load i32, i32* @ENOTEMPTY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %16, align 4
  %54 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %13, align 8
  %55 = icmp ne %struct.ufs_dir_entry* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = call i32 @ufs_empty_dir(%struct.inode* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %141

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %16, align 4
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = load %struct.dentry*, %struct.dentry** %9, align 8
  %66 = call %struct.ufs_dir_entry* @ufs_find_entry(%struct.inode* %64, %struct.dentry* %65, %struct.page** %17)
  store %struct.ufs_dir_entry* %66, %struct.ufs_dir_entry** %18, align 8
  %67 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %18, align 8
  %68 = icmp ne %struct.ufs_dir_entry* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  br label %141

70:                                               ; preds = %61
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = call i32 @inode_inc_link_count(%struct.inode* %71)
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %18, align 8
  %75 = load %struct.page*, %struct.page** %17, align 8
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = call i32 @ufs_set_link(%struct.inode* %73, %struct.ufs_dir_entry* %74, %struct.page* %75, %struct.inode* %76)
  %78 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %13, align 8
  %82 = icmp ne %struct.ufs_dir_entry* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load %struct.inode*, %struct.inode** %11, align 8
  %85 = call i32 @drop_nlink(%struct.inode* %84)
  br label %86

86:                                               ; preds = %83, %70
  %87 = load %struct.inode*, %struct.inode** %11, align 8
  %88 = call i32 @inode_dec_link_count(%struct.inode* %87)
  br label %120

89:                                               ; preds = %48
  %90 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %13, align 8
  %91 = icmp ne %struct.ufs_dir_entry* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* @EMLINK, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %16, align 4
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @UFS_LINK_MAX, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %141

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %89
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = call i32 @inode_inc_link_count(%struct.inode* %103)
  %105 = load %struct.dentry*, %struct.dentry** %9, align 8
  %106 = load %struct.inode*, %struct.inode** %10, align 8
  %107 = call i32 @ufs_add_link(%struct.dentry* %105, %struct.inode* %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load %struct.inode*, %struct.inode** %10, align 8
  %112 = call i32 @inode_dec_link_count(%struct.inode* %111)
  br label %141

113:                                              ; preds = %102
  %114 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %13, align 8
  %115 = icmp ne %struct.ufs_dir_entry* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = call i32 @inode_inc_link_count(%struct.inode* %117)
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %86
  %121 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.inode*, %struct.inode** %6, align 8
  %125 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %15, align 8
  %126 = load %struct.page*, %struct.page** %14, align 8
  %127 = call i32 @ufs_delete_entry(%struct.inode* %124, %struct.ufs_dir_entry* %125, %struct.page* %126)
  %128 = load %struct.inode*, %struct.inode** %10, align 8
  %129 = call i32 @inode_dec_link_count(%struct.inode* %128)
  %130 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %13, align 8
  %131 = icmp ne %struct.ufs_dir_entry* %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %120
  %133 = load %struct.inode*, %struct.inode** %10, align 8
  %134 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %13, align 8
  %135 = load %struct.page*, %struct.page** %12, align 8
  %136 = load %struct.inode*, %struct.inode** %8, align 8
  %137 = call i32 @ufs_set_link(%struct.inode* %133, %struct.ufs_dir_entry* %134, %struct.page* %135, %struct.inode* %136)
  %138 = load %struct.inode*, %struct.inode** %6, align 8
  %139 = call i32 @inode_dec_link_count(%struct.inode* %138)
  br label %140

140:                                              ; preds = %132, %120
  store i32 0, i32* %5, align 4
  br label %157

141:                                              ; preds = %110, %100, %69, %60
  %142 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %13, align 8
  %143 = icmp ne %struct.ufs_dir_entry* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.page*, %struct.page** %12, align 8
  %146 = call i32 @kunmap(%struct.page* %145)
  %147 = load %struct.page*, %struct.page** %12, align 8
  %148 = call i32 @page_cache_release(%struct.page* %147)
  br label %149

149:                                              ; preds = %144, %141
  br label %150

150:                                              ; preds = %149, %46
  %151 = load %struct.page*, %struct.page** %14, align 8
  %152 = call i32 @kunmap(%struct.page* %151)
  %153 = load %struct.page*, %struct.page** %14, align 8
  %154 = call i32 @page_cache_release(%struct.page* %153)
  br label %155

155:                                              ; preds = %150, %32
  %156 = load i32, i32* %16, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %140
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.ufs_dir_entry* @ufs_find_entry(%struct.inode*, %struct.dentry*, %struct.page**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.ufs_dir_entry* @ufs_dotdot(%struct.inode*, %struct.page**) #1

declare dso_local i32 @ufs_empty_dir(%struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @ufs_set_link(%struct.inode*, %struct.ufs_dir_entry*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @ufs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ufs_delete_entry(%struct.inode*, %struct.ufs_dir_entry*, %struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
