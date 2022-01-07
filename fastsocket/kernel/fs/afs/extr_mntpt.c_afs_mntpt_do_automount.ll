; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_mntpt.c_afs_mntpt_do_automount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_mntpt.c_afs_mntpt_do_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.afs_super_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%s}\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cell=\00", align 1
@AFSVL_RWVOL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c",rwpath\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"--- attempting mount %s -o %s ---\00", align 1
@afs_fs_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"--- mount result %p ---\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.dentry*)* @afs_mntpt_do_automount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @afs_mntpt_do_automount(%struct.dentry* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.afs_super_info*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.page* null, %struct.page** %6, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %133

37:                                               ; preds = %1
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64 @get_zeroed_page(i32 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %133

46:                                               ; preds = %37
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i64 @get_zeroed_page(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %133

53:                                               ; preds = %46
  %54 = load %struct.dentry*, %struct.dentry** %3, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.page* @read_mapping_page(i32 %58, i32 0, i32* null)
  store %struct.page* %59, %struct.page** %6, align 8
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = call i64 @IS_ERR(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load %struct.page*, %struct.page** %6, align 8
  %65 = call i32 @PTR_ERR(%struct.page* %64)
  store i32 %65, i32* %11, align 4
  br label %133

66:                                               ; preds = %53
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  %69 = load %struct.page*, %struct.page** %6, align 8
  %70 = call i64 @PageError(%struct.page* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %133

73:                                               ; preds = %66
  %74 = load %struct.page*, %struct.page** %6, align 8
  %75 = load i32, i32* @KM_USER0, align 4
  %76 = call i8* @kmap_atomic(%struct.page* %74, i32 %75)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %7, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i8* %77, i8* %78, i32 %80)
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* @KM_USER0, align 4
  %84 = call i32 @kunmap_atomic(i8* %82, i32 %83)
  %85 = load %struct.page*, %struct.page** %6, align 8
  %86 = call i32 @page_cache_release(%struct.page* %85)
  store %struct.page* null, %struct.page** %6, align 8
  %87 = load %struct.dentry*, %struct.dentry** %3, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.afs_super_info* @AFS_FS_S(i32 %89)
  store %struct.afs_super_info* %90, %struct.afs_super_info** %4, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @memcpy(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 5
  %95 = load %struct.afs_super_info*, %struct.afs_super_info** %4, align 8
  %96 = getelementptr inbounds %struct.afs_super_info, %struct.afs_super_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strcpy(i8* %94, i32 %101)
  %103 = load %struct.afs_super_info*, %struct.afs_super_info** %4, align 8
  %104 = getelementptr inbounds %struct.afs_super_info, %struct.afs_super_info* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AFSVL_RWVOL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %73
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @strcat(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %73
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 (i8*, i8*, ...) @_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %114, i8* %115)
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = call %struct.vfsmount* @vfs_kern_mount(i32* @afs_fs_type, i32 0, i8* %117, i8* %118)
  store %struct.vfsmount* %119, %struct.vfsmount** %5, align 8
  %120 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %121 = bitcast %struct.vfsmount* %120 to i8*
  %122 = call i32 (i8*, i8*, ...) @_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  %123 = load i8*, i8** %9, align 8
  %124 = ptrtoint i8* %123 to i64
  %125 = call i32 @free_page(i64 %124)
  %126 = load i8*, i8** %10, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = call i32 @free_page(i64 %127)
  %129 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %130 = ptrtoint %struct.vfsmount* %129 to i32
  %131 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  store %struct.vfsmount* %132, %struct.vfsmount** %2, align 8
  br label %158

133:                                              ; preds = %72, %63, %52, %45, %36
  %134 = load %struct.page*, %struct.page** %6, align 8
  %135 = icmp ne %struct.page* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.page*, %struct.page** %6, align 8
  %138 = call i32 @page_cache_release(%struct.page* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i8*, i8** %9, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i8*, i8** %9, align 8
  %144 = ptrtoint i8* %143 to i64
  %145 = call i32 @free_page(i64 %144)
  br label %146

146:                                              ; preds = %142, %139
  %147 = load i8*, i8** %10, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i8*, i8** %10, align 8
  %151 = ptrtoint i8* %150 to i64
  %152 = call i32 @free_page(i64 %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = call %struct.vfsmount* @ERR_PTR(i32 %156)
  store %struct.vfsmount* %157, %struct.vfsmount** %2, align 8
  br label %158

158:                                              ; preds = %153, %113
  %159 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %159
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local %struct.page* @read_mapping_page(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local %struct.afs_super_info* @AFS_FS_S(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @_debug(i8*, i8*, ...) #1

declare dso_local %struct.vfsmount* @vfs_kern_mount(i32*, i32, i8*, i8*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
