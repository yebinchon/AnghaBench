; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_namei.c_nilfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_namei.c_nilfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i8*, i32 }
%struct.dentry = type { %struct.inode* }
%struct.page = type { i32 }
%struct.nilfs_dir_entry = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i8* null, align 8
@EMLINK = common dso_local global i32 0, align 4
@NILFS_LINK_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @nilfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.nilfs_dir_entry*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.nilfs_dir_entry*, align 8
  %16 = alloca %struct.nilfs_transaction_info, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.nilfs_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %10, align 8
  %23 = load %struct.dentry*, %struct.dentry** %9, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %11, align 8
  store %struct.page* null, %struct.page** %12, align 8
  store %struct.nilfs_dir_entry* null, %struct.nilfs_dir_entry** %13, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @nilfs_transaction_begin(i32 %28, %struct.nilfs_transaction_info* %16, i32 1)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %5, align 4
  br label %176

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %17, align 4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = call %struct.nilfs_dir_entry* @nilfs_find_entry(%struct.inode* %38, %struct.dentry* %39, %struct.page** %14)
  store %struct.nilfs_dir_entry* %40, %struct.nilfs_dir_entry** %15, align 8
  %41 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %15, align 8
  %42 = icmp ne %struct.nilfs_dir_entry* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %170

44:                                               ; preds = %35
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @S_ISDIR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %17, align 4
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = call %struct.nilfs_dir_entry* @nilfs_dotdot(%struct.inode* %53, %struct.page** %12)
  store %struct.nilfs_dir_entry* %54, %struct.nilfs_dir_entry** %13, align 8
  %55 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %13, align 8
  %56 = icmp ne %struct.nilfs_dir_entry* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %165

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = icmp ne %struct.inode* %60, null
  br i1 %61, label %62, label %100

62:                                               ; preds = %59
  %63 = load i32, i32* @ENOTEMPTY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %17, align 4
  %65 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %13, align 8
  %66 = icmp ne %struct.nilfs_dir_entry* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = call i32 @nilfs_empty_dir(%struct.inode* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %156

72:                                               ; preds = %67, %62
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %17, align 4
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = load %struct.dentry*, %struct.dentry** %9, align 8
  %77 = call %struct.nilfs_dir_entry* @nilfs_find_entry(%struct.inode* %75, %struct.dentry* %76, %struct.page** %18)
  store %struct.nilfs_dir_entry* %77, %struct.nilfs_dir_entry** %19, align 8
  %78 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %19, align 8
  %79 = icmp ne %struct.nilfs_dir_entry* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %156

81:                                               ; preds = %72
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = call i32 @inode_inc_link_count(%struct.inode* %82)
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %19, align 8
  %86 = load %struct.page*, %struct.page** %18, align 8
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = call i32 @nilfs_set_link(%struct.inode* %84, %struct.nilfs_dir_entry* %85, %struct.page* %86, %struct.inode* %87)
  %89 = load i8*, i8** @CURRENT_TIME, align 8
  %90 = load %struct.inode*, %struct.inode** %11, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %13, align 8
  %93 = icmp ne %struct.nilfs_dir_entry* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %81
  %95 = load %struct.inode*, %struct.inode** %11, align 8
  %96 = call i32 @drop_nlink(%struct.inode* %95)
  br label %97

97:                                               ; preds = %94, %81
  %98 = load %struct.inode*, %struct.inode** %11, align 8
  %99 = call i32 @inode_dec_link_count(%struct.inode* %98)
  br label %131

100:                                              ; preds = %59
  %101 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %13, align 8
  %102 = icmp ne %struct.nilfs_dir_entry* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i32, i32* @EMLINK, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %17, align 4
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NILFS_LINK_MAX, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %156

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %100
  %114 = load %struct.inode*, %struct.inode** %10, align 8
  %115 = call i32 @inode_inc_link_count(%struct.inode* %114)
  %116 = load %struct.dentry*, %struct.dentry** %9, align 8
  %117 = load %struct.inode*, %struct.inode** %10, align 8
  %118 = call i32 @nilfs_add_link(%struct.dentry* %116, %struct.inode* %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = call i32 @inode_dec_link_count(%struct.inode* %122)
  br label %156

124:                                              ; preds = %113
  %125 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %13, align 8
  %126 = icmp ne %struct.nilfs_dir_entry* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.inode*, %struct.inode** %8, align 8
  %129 = call i32 @inode_inc_link_count(%struct.inode* %128)
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %97
  %132 = load i8*, i8** @CURRENT_TIME, align 8
  %133 = load %struct.inode*, %struct.inode** %10, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %15, align 8
  %136 = load %struct.page*, %struct.page** %14, align 8
  %137 = call i32 @nilfs_delete_entry(%struct.nilfs_dir_entry* %135, %struct.page* %136)
  %138 = load %struct.inode*, %struct.inode** %10, align 8
  %139 = call i32 @inode_dec_link_count(%struct.inode* %138)
  %140 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %13, align 8
  %141 = icmp ne %struct.nilfs_dir_entry* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %131
  %143 = load %struct.inode*, %struct.inode** %10, align 8
  %144 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %13, align 8
  %145 = load %struct.page*, %struct.page** %12, align 8
  %146 = load %struct.inode*, %struct.inode** %8, align 8
  %147 = call i32 @nilfs_set_link(%struct.inode* %143, %struct.nilfs_dir_entry* %144, %struct.page* %145, %struct.inode* %146)
  %148 = load %struct.inode*, %struct.inode** %6, align 8
  %149 = call i32 @inode_dec_link_count(%struct.inode* %148)
  br label %150

150:                                              ; preds = %142, %131
  %151 = load %struct.inode*, %struct.inode** %6, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @nilfs_transaction_commit(i32 %153)
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  store i32 %155, i32* %5, align 4
  br label %176

156:                                              ; preds = %121, %111, %80, %71
  %157 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %13, align 8
  %158 = icmp ne %struct.nilfs_dir_entry* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load %struct.page*, %struct.page** %12, align 8
  %161 = call i32 @kunmap(%struct.page* %160)
  %162 = load %struct.page*, %struct.page** %12, align 8
  %163 = call i32 @page_cache_release(%struct.page* %162)
  br label %164

164:                                              ; preds = %159, %156
  br label %165

165:                                              ; preds = %164, %57
  %166 = load %struct.page*, %struct.page** %14, align 8
  %167 = call i32 @kunmap(%struct.page* %166)
  %168 = load %struct.page*, %struct.page** %14, align 8
  %169 = call i32 @page_cache_release(%struct.page* %168)
  br label %170

170:                                              ; preds = %165, %43
  %171 = load %struct.inode*, %struct.inode** %6, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @nilfs_transaction_abort(i32 %173)
  %175 = load i32, i32* %17, align 4
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %170, %150, %33
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @nilfs_transaction_begin(i32, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nilfs_dir_entry* @nilfs_find_entry(%struct.inode*, %struct.dentry*, %struct.page**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.nilfs_dir_entry* @nilfs_dotdot(%struct.inode*, %struct.page**) #1

declare dso_local i32 @nilfs_empty_dir(%struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @nilfs_set_link(%struct.inode*, %struct.nilfs_dir_entry*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @nilfs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @nilfs_delete_entry(%struct.nilfs_dir_entry*, %struct.page*) #1

declare dso_local i32 @nilfs_transaction_commit(i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @nilfs_transaction_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
