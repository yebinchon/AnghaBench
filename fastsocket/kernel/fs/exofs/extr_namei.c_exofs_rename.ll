; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_namei.c_exofs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_namei.c_exofs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i8*, i32 }
%struct.dentry = type { %struct.inode* }
%struct.page = type { i32 }
%struct.exofs_dir_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i8* null, align 8
@EMLINK = common dso_local global i32 0, align 4
@EXOFS_LINK_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @exofs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exofs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.exofs_dir_entry*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.exofs_dir_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.exofs_dir_entry*, align 8
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
  store %struct.exofs_dir_entry* null, %struct.exofs_dir_entry** %13, align 8
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %16, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = call %struct.exofs_dir_entry* @exofs_find_entry(%struct.inode* %27, %struct.dentry* %28, %struct.page** %14)
  store %struct.exofs_dir_entry* %29, %struct.exofs_dir_entry** %15, align 8
  %30 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %31 = icmp ne %struct.exofs_dir_entry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %162

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
  %43 = call %struct.exofs_dir_entry* @exofs_dotdot(%struct.inode* %42, %struct.page** %12)
  store %struct.exofs_dir_entry* %43, %struct.exofs_dir_entry** %13, align 8
  %44 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %45 = icmp ne %struct.exofs_dir_entry* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %157

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %33
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = icmp ne %struct.inode* %49, null
  br i1 %50, label %51, label %93

51:                                               ; preds = %48
  %52 = load i32, i32* @ENOTEMPTY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %16, align 4
  %54 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %55 = icmp ne %struct.exofs_dir_entry* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = call i32 @exofs_empty_dir(%struct.inode* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %148

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %16, align 4
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = load %struct.dentry*, %struct.dentry** %9, align 8
  %66 = call %struct.exofs_dir_entry* @exofs_find_entry(%struct.inode* %64, %struct.dentry* %65, %struct.page** %17)
  store %struct.exofs_dir_entry* %66, %struct.exofs_dir_entry** %18, align 8
  %67 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %18, align 8
  %68 = icmp ne %struct.exofs_dir_entry* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  br label %148

70:                                               ; preds = %61
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = call i32 @inode_inc_link_count(%struct.inode* %71)
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %18, align 8
  %75 = load %struct.page*, %struct.page** %17, align 8
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = call i32 @exofs_set_link(%struct.inode* %73, %struct.exofs_dir_entry* %74, %struct.page* %75, %struct.inode* %76)
  store i32 %77, i32* %16, align 4
  %78 = load i8*, i8** @CURRENT_TIME, align 8
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %82 = icmp ne %struct.exofs_dir_entry* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load %struct.inode*, %struct.inode** %11, align 8
  %85 = call i32 @drop_nlink(%struct.inode* %84)
  br label %86

86:                                               ; preds = %83, %70
  %87 = load %struct.inode*, %struct.inode** %11, align 8
  %88 = call i32 @inode_dec_link_count(%struct.inode* %87)
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %148

92:                                               ; preds = %86
  br label %124

93:                                               ; preds = %48
  %94 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %95 = icmp ne %struct.exofs_dir_entry* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, i32* @EMLINK, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %16, align 4
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @EXOFS_LINK_MAX, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %148

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %93
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = call i32 @inode_inc_link_count(%struct.inode* %107)
  %109 = load %struct.dentry*, %struct.dentry** %9, align 8
  %110 = load %struct.inode*, %struct.inode** %10, align 8
  %111 = call i32 @exofs_add_link(%struct.dentry* %109, %struct.inode* %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = call i32 @inode_dec_link_count(%struct.inode* %115)
  br label %148

117:                                              ; preds = %106
  %118 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %119 = icmp ne %struct.exofs_dir_entry* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.inode*, %struct.inode** %8, align 8
  %122 = call i32 @inode_inc_link_count(%struct.inode* %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %92
  %125 = load i8*, i8** @CURRENT_TIME, align 8
  %126 = load %struct.inode*, %struct.inode** %10, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %129 = load %struct.page*, %struct.page** %14, align 8
  %130 = call i32 @exofs_delete_entry(%struct.exofs_dir_entry* %128, %struct.page* %129)
  %131 = load %struct.inode*, %struct.inode** %10, align 8
  %132 = call i32 @inode_dec_link_count(%struct.inode* %131)
  %133 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %134 = icmp ne %struct.exofs_dir_entry* %133, null
  br i1 %134, label %135, label %147

135:                                              ; preds = %124
  %136 = load %struct.inode*, %struct.inode** %10, align 8
  %137 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %138 = load %struct.page*, %struct.page** %12, align 8
  %139 = load %struct.inode*, %struct.inode** %8, align 8
  %140 = call i32 @exofs_set_link(%struct.inode* %136, %struct.exofs_dir_entry* %137, %struct.page* %138, %struct.inode* %139)
  store i32 %140, i32* %16, align 4
  %141 = load %struct.inode*, %struct.inode** %6, align 8
  %142 = call i32 @inode_dec_link_count(%struct.inode* %141)
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %148

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146, %124
  store i32 0, i32* %5, align 4
  br label %164

148:                                              ; preds = %145, %114, %104, %91, %69, %60
  %149 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %13, align 8
  %150 = icmp ne %struct.exofs_dir_entry* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load %struct.page*, %struct.page** %12, align 8
  %153 = call i32 @kunmap(%struct.page* %152)
  %154 = load %struct.page*, %struct.page** %12, align 8
  %155 = call i32 @page_cache_release(%struct.page* %154)
  br label %156

156:                                              ; preds = %151, %148
  br label %157

157:                                              ; preds = %156, %46
  %158 = load %struct.page*, %struct.page** %14, align 8
  %159 = call i32 @kunmap(%struct.page* %158)
  %160 = load %struct.page*, %struct.page** %14, align 8
  %161 = call i32 @page_cache_release(%struct.page* %160)
  br label %162

162:                                              ; preds = %157, %32
  %163 = load i32, i32* %16, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %162, %147
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local %struct.exofs_dir_entry* @exofs_find_entry(%struct.inode*, %struct.dentry*, %struct.page**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.exofs_dir_entry* @exofs_dotdot(%struct.inode*, %struct.page**) #1

declare dso_local i32 @exofs_empty_dir(%struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @exofs_set_link(%struct.inode*, %struct.exofs_dir_entry*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @exofs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @exofs_delete_entry(%struct.exofs_dir_entry*, %struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
