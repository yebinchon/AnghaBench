; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_namei.c_sysv_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_namei.c_sysv_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32 }
%struct.dentry = type { %struct.inode* }
%struct.page = type { i32 }
%struct.sysv_dir_entry = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @sysv_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.sysv_dir_entry*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.sysv_dir_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.sysv_dir_entry*, align 8
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
  store %struct.sysv_dir_entry* null, %struct.sysv_dir_entry** %13, align 8
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %16, align 4
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = call %struct.sysv_dir_entry* @sysv_find_entry(%struct.dentry* %27, %struct.page** %14)
  store %struct.sysv_dir_entry* %28, %struct.sysv_dir_entry** %15, align 8
  %29 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %15, align 8
  %30 = icmp ne %struct.sysv_dir_entry* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  br label %152

32:                                               ; preds = %4
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @S_ISDIR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %16, align 4
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call %struct.sysv_dir_entry* @sysv_dotdot(%struct.inode* %41, %struct.page** %12)
  store %struct.sysv_dir_entry* %42, %struct.sysv_dir_entry** %13, align 8
  %43 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %44 = icmp ne %struct.sysv_dir_entry* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %147

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = icmp ne %struct.inode* %48, null
  br i1 %49, label %50, label %86

50:                                               ; preds = %47
  %51 = load i32, i32* @ENOTEMPTY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %16, align 4
  %53 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %54 = icmp ne %struct.sysv_dir_entry* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = call i32 @sysv_empty_dir(%struct.inode* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %138

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %16, align 4
  %63 = load %struct.dentry*, %struct.dentry** %9, align 8
  %64 = call %struct.sysv_dir_entry* @sysv_find_entry(%struct.dentry* %63, %struct.page** %17)
  store %struct.sysv_dir_entry* %64, %struct.sysv_dir_entry** %18, align 8
  %65 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %18, align 8
  %66 = icmp ne %struct.sysv_dir_entry* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %138

68:                                               ; preds = %60
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = call i32 @inode_inc_link_count(%struct.inode* %69)
  %71 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %18, align 8
  %72 = load %struct.page*, %struct.page** %17, align 8
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @sysv_set_link(%struct.sysv_dir_entry* %71, %struct.page* %72, %struct.inode* %73)
  %75 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %76 = load %struct.inode*, %struct.inode** %11, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %79 = icmp ne %struct.sysv_dir_entry* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load %struct.inode*, %struct.inode** %11, align 8
  %82 = call i32 @drop_nlink(%struct.inode* %81)
  br label %83

83:                                               ; preds = %80, %68
  %84 = load %struct.inode*, %struct.inode** %11, align 8
  %85 = call i32 @inode_dec_link_count(%struct.inode* %84)
  br label %122

86:                                               ; preds = %47
  %87 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %88 = icmp ne %struct.sysv_dir_entry* %87, null
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i32, i32* @EMLINK, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %16, align 4
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call %struct.TYPE_2__* @SYSV_SB(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %94, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %138

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %86
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = call i32 @inode_inc_link_count(%struct.inode* %105)
  %107 = load %struct.dentry*, %struct.dentry** %9, align 8
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = call i32 @sysv_add_link(%struct.dentry* %107, %struct.inode* %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = call i32 @inode_dec_link_count(%struct.inode* %113)
  br label %138

115:                                              ; preds = %104
  %116 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %117 = icmp ne %struct.sysv_dir_entry* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.inode*, %struct.inode** %8, align 8
  %120 = call i32 @inode_inc_link_count(%struct.inode* %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %83
  %123 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %15, align 8
  %124 = load %struct.page*, %struct.page** %14, align 8
  %125 = call i32 @sysv_delete_entry(%struct.sysv_dir_entry* %123, %struct.page* %124)
  %126 = load %struct.inode*, %struct.inode** %10, align 8
  %127 = call i32 @inode_dec_link_count(%struct.inode* %126)
  %128 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %129 = icmp ne %struct.sysv_dir_entry* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %122
  %131 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %132 = load %struct.page*, %struct.page** %12, align 8
  %133 = load %struct.inode*, %struct.inode** %8, align 8
  %134 = call i32 @sysv_set_link(%struct.sysv_dir_entry* %131, %struct.page* %132, %struct.inode* %133)
  %135 = load %struct.inode*, %struct.inode** %6, align 8
  %136 = call i32 @inode_dec_link_count(%struct.inode* %135)
  br label %137

137:                                              ; preds = %130, %122
  store i32 0, i32* %5, align 4
  br label %154

138:                                              ; preds = %112, %102, %67, %59
  %139 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %13, align 8
  %140 = icmp ne %struct.sysv_dir_entry* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.page*, %struct.page** %12, align 8
  %143 = call i32 @kunmap(%struct.page* %142)
  %144 = load %struct.page*, %struct.page** %12, align 8
  %145 = call i32 @page_cache_release(%struct.page* %144)
  br label %146

146:                                              ; preds = %141, %138
  br label %147

147:                                              ; preds = %146, %45
  %148 = load %struct.page*, %struct.page** %14, align 8
  %149 = call i32 @kunmap(%struct.page* %148)
  %150 = load %struct.page*, %struct.page** %14, align 8
  %151 = call i32 @page_cache_release(%struct.page* %150)
  br label %152

152:                                              ; preds = %147, %31
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %137
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.sysv_dir_entry* @sysv_find_entry(%struct.dentry*, %struct.page**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.sysv_dir_entry* @sysv_dotdot(%struct.inode*, %struct.page**) #1

declare dso_local i32 @sysv_empty_dir(%struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @sysv_set_link(%struct.sysv_dir_entry*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @SYSV_SB(i32) #1

declare dso_local i32 @sysv_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @sysv_delete_entry(%struct.sysv_dir_entry*, %struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
