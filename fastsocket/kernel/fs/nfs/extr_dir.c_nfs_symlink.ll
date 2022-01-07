; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pagevec = type { i32 }
%struct.page = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)* }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"NFS: symlink(%s/%ld, %s, %s)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"NFS: symlink(%s/%ld, %s, %s) error %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @nfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pagevec, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iattr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @VFS, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (i32, i8*, i32, i32, i32, i8*, ...) @dfprintk(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %28, i8* %29)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ENAMETOOLONG, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %131

37:                                               ; preds = %3
  %38 = load i32, i32* @S_IFLNK, align 4
  %39 = load i32, i32* @S_IRWXUGO, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @ATTR_MODE, align 4
  %43 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @GFP_HIGHUSER, align 4
  %45 = call %struct.page* @alloc_page(i32 %44)
  store %struct.page* %45, %struct.page** %9, align 8
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = icmp ne %struct.page* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %131

51:                                               ; preds = %37
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = load i32, i32* @KM_USER0, align 4
  %54 = call i8* @kmap_atomic(%struct.page* %52, i32 %53)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @memcpy(i8* %55, i8* %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %51
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub i32 %67, %68
  %70 = call i32 @memset(i8* %66, i32 0, i32 %69)
  br label %71

71:                                               ; preds = %62, %51
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* @KM_USER0, align 4
  %74 = call i32 @kunmap_atomic(i8* %72, i32 %73)
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = call %struct.TYPE_8__* @NFS_PROTO(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)*, i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)** %77, align 8
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = load %struct.dentry*, %struct.dentry** %6, align 8
  %81 = load %struct.page*, %struct.page** %9, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 %78(%struct.inode* %79, %struct.dentry* %80, %struct.page* %81, i32 %82, %struct.iattr* %11)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %71
  %87 = load i32, i32* @VFS, align 4
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.dentry*, %struct.dentry** %6, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 (i32, i8*, i32, i32, i32, i8*, ...) @dfprintk(i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95, i32 %99, i8* %100, i32 %101)
  %103 = load %struct.dentry*, %struct.dentry** %6, align 8
  %104 = call i32 @d_drop(%struct.dentry* %103)
  %105 = load %struct.page*, %struct.page** %9, align 8
  %106 = call i32 @__free_page(%struct.page* %105)
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %4, align 4
  br label %131

108:                                              ; preds = %71
  %109 = call i32 @pagevec_init(%struct.pagevec* %8, i32 0)
  %110 = load %struct.page*, %struct.page** %9, align 8
  %111 = load %struct.dentry*, %struct.dentry** %6, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32 @add_to_page_cache(%struct.page* %110, i32 %115, i32 0, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %108
  %120 = load %struct.page*, %struct.page** %9, align 8
  %121 = call i32 @pagevec_add(%struct.pagevec* %8, %struct.page* %120)
  %122 = call i32 @pagevec_lru_add_file(%struct.pagevec* %8)
  %123 = load %struct.page*, %struct.page** %9, align 8
  %124 = call i32 @SetPageUptodate(%struct.page* %123)
  %125 = load %struct.page*, %struct.page** %9, align 8
  %126 = call i32 @unlock_page(%struct.page* %125)
  br label %130

127:                                              ; preds = %108
  %128 = load %struct.page*, %struct.page** %9, align 8
  %129 = call i32 @__free_page(%struct.page* %128)
  br label %130

130:                                              ; preds = %127, %119
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %86, %48, %34
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i32, i8*, ...) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local %struct.TYPE_8__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @add_to_page_cache(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local i32 @pagevec_lru_add_file(%struct.pagevec*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
