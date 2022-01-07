; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_namei.c_ext2_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_namei.c_ext2_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i8*, i32 }
%struct.dentry = type { i32, %struct.inode* }
%struct.page = type { i32 }
%struct.ext2_dir_entry_2 = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i8* null, align 8
@EMLINK = common dso_local global i32 0, align 4
@EXT2_LINK_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @ext2_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.ext2_dir_entry_2*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.ext2_dir_entry_2*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.ext2_dir_entry_2*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.dentry*, %struct.dentry** %9, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %11, align 8
  store %struct.page* null, %struct.page** %12, align 8
  store %struct.ext2_dir_entry_2* null, %struct.ext2_dir_entry_2** %13, align 8
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %16, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = call %struct.ext2_dir_entry_2* @ext2_find_entry(%struct.inode* %27, i32* %29, %struct.page** %14)
  store %struct.ext2_dir_entry_2* %30, %struct.ext2_dir_entry_2** %15, align 8
  %31 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %15, align 8
  %32 = icmp ne %struct.ext2_dir_entry_2* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  br label %166

34:                                               ; preds = %4
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @S_ISDIR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %16, align 4
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call %struct.ext2_dir_entry_2* @ext2_dotdot(%struct.inode* %43, %struct.page** %12)
  store %struct.ext2_dir_entry_2* %44, %struct.ext2_dir_entry_2** %13, align 8
  %45 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %13, align 8
  %46 = icmp ne %struct.ext2_dir_entry_2* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %161

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.inode*, %struct.inode** %11, align 8
  %51 = icmp ne %struct.inode* %50, null
  br i1 %51, label %52, label %91

52:                                               ; preds = %49
  %53 = load i32, i32* @ENOTEMPTY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %16, align 4
  %55 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %13, align 8
  %56 = icmp ne %struct.ext2_dir_entry_2* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.inode*, %struct.inode** %11, align 8
  %59 = call i32 @ext2_empty_dir(%struct.inode* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %152

62:                                               ; preds = %57, %52
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %16, align 4
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = load %struct.dentry*, %struct.dentry** %9, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = call %struct.ext2_dir_entry_2* @ext2_find_entry(%struct.inode* %65, i32* %67, %struct.page** %17)
  store %struct.ext2_dir_entry_2* %68, %struct.ext2_dir_entry_2** %18, align 8
  %69 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %18, align 8
  %70 = icmp ne %struct.ext2_dir_entry_2* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %152

72:                                               ; preds = %62
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @inode_inc_link_count(%struct.inode* %73)
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %18, align 8
  %77 = load %struct.page*, %struct.page** %17, align 8
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = call i32 @ext2_set_link(%struct.inode* %75, %struct.ext2_dir_entry_2* %76, %struct.page* %77, %struct.inode* %78, i32 1)
  %80 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %81 = load %struct.inode*, %struct.inode** %11, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %13, align 8
  %84 = icmp ne %struct.ext2_dir_entry_2* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load %struct.inode*, %struct.inode** %11, align 8
  %87 = call i32 @drop_nlink(%struct.inode* %86)
  br label %88

88:                                               ; preds = %85, %72
  %89 = load %struct.inode*, %struct.inode** %11, align 8
  %90 = call i32 @inode_dec_link_count(%struct.inode* %89)
  br label %122

91:                                               ; preds = %49
  %92 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %13, align 8
  %93 = icmp ne %struct.ext2_dir_entry_2* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* @EMLINK, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %16, align 4
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @EXT2_LINK_MAX, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %152

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %91
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = call i32 @inode_inc_link_count(%struct.inode* %105)
  %107 = load %struct.dentry*, %struct.dentry** %9, align 8
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = call i32 @ext2_add_link(%struct.dentry* %107, %struct.inode* %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = call i32 @inode_dec_link_count(%struct.inode* %113)
  br label %152

115:                                              ; preds = %104
  %116 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %13, align 8
  %117 = icmp ne %struct.ext2_dir_entry_2* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.inode*, %struct.inode** %8, align 8
  %120 = call i32 @inode_inc_link_count(%struct.inode* %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %88
  %123 = load i8*, i8** @CURRENT_TIME_SEC, align 8
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %15, align 8
  %127 = load %struct.page*, %struct.page** %14, align 8
  %128 = call i32 @ext2_delete_entry(%struct.ext2_dir_entry_2* %126, %struct.page* %127)
  %129 = load %struct.inode*, %struct.inode** %10, align 8
  %130 = call i32 @inode_dec_link_count(%struct.inode* %129)
  %131 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %13, align 8
  %132 = icmp ne %struct.ext2_dir_entry_2* %131, null
  br i1 %132, label %133, label %151

133:                                              ; preds = %122
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = load %struct.inode*, %struct.inode** %8, align 8
  %136 = icmp ne %struct.inode* %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load %struct.inode*, %struct.inode** %10, align 8
  %139 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %13, align 8
  %140 = load %struct.page*, %struct.page** %12, align 8
  %141 = load %struct.inode*, %struct.inode** %8, align 8
  %142 = call i32 @ext2_set_link(%struct.inode* %138, %struct.ext2_dir_entry_2* %139, %struct.page* %140, %struct.inode* %141, i32 0)
  br label %148

143:                                              ; preds = %133
  %144 = load %struct.page*, %struct.page** %12, align 8
  %145 = call i32 @kunmap(%struct.page* %144)
  %146 = load %struct.page*, %struct.page** %12, align 8
  %147 = call i32 @page_cache_release(%struct.page* %146)
  br label %148

148:                                              ; preds = %143, %137
  %149 = load %struct.inode*, %struct.inode** %6, align 8
  %150 = call i32 @inode_dec_link_count(%struct.inode* %149)
  br label %151

151:                                              ; preds = %148, %122
  store i32 0, i32* %5, align 4
  br label %168

152:                                              ; preds = %112, %102, %71, %61
  %153 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %13, align 8
  %154 = icmp ne %struct.ext2_dir_entry_2* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.page*, %struct.page** %12, align 8
  %157 = call i32 @kunmap(%struct.page* %156)
  %158 = load %struct.page*, %struct.page** %12, align 8
  %159 = call i32 @page_cache_release(%struct.page* %158)
  br label %160

160:                                              ; preds = %155, %152
  br label %161

161:                                              ; preds = %160, %47
  %162 = load %struct.page*, %struct.page** %14, align 8
  %163 = call i32 @kunmap(%struct.page* %162)
  %164 = load %struct.page*, %struct.page** %14, align 8
  %165 = call i32 @page_cache_release(%struct.page* %164)
  br label %166

166:                                              ; preds = %161, %33
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %151
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.ext2_dir_entry_2* @ext2_find_entry(%struct.inode*, i32*, %struct.page**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.ext2_dir_entry_2* @ext2_dotdot(%struct.inode*, %struct.page**) #1

declare dso_local i32 @ext2_empty_dir(%struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @ext2_set_link(%struct.inode*, %struct.ext2_dir_entry_2*, %struct.page*, %struct.inode*, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @ext2_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext2_delete_entry(%struct.ext2_dir_entry_2*, %struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
