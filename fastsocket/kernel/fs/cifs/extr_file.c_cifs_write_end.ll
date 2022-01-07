; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.page = type { i32 }
%struct.cifs_sb_info = type { i32 }

@CIFS_MOUNT_RWPIDFORWARD = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"write_end for page %p from pos %lld with %d bytes\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @cifs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.cifsFileInfo*, align 8
  %18 = alloca %struct.cifs_sb_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %23 = load %struct.address_space*, %struct.address_space** %9, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %16, align 8
  %26 = load %struct.file*, %struct.file** %8, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %27, align 8
  store %struct.cifsFileInfo* %28, %struct.cifsFileInfo** %17, align 8
  %29 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %30 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.cifs_sb_info* @CIFS_SB(i32 %33)
  store %struct.cifs_sb_info* %34, %struct.cifs_sb_info** %18, align 8
  %35 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %18, align 8
  %36 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CIFS_MOUNT_RWPIDFORWARD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %7
  %42 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %43 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %19, align 4
  br label %49

45:                                               ; preds = %7
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %19, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.page*, %struct.page** %13, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.page* %50, i32 %51, i32 %52)
  %54 = load %struct.page*, %struct.page** %13, align 8
  %55 = call i64 @PageChecked(%struct.page* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.page*, %struct.page** %13, align 8
  %63 = call i32 @SetPageUptodate(%struct.page* %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = load %struct.page*, %struct.page** %13, align 8
  %66 = call i32 @ClearPageChecked(%struct.page* %65)
  br label %79

67:                                               ; preds = %49
  %68 = load %struct.page*, %struct.page** %13, align 8
  %69 = call i32 @PageUptodate(%struct.page* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.page*, %struct.page** %13, align 8
  %77 = call i32 @SetPageUptodate(%struct.page* %76)
  br label %78

78:                                               ; preds = %75, %71, %67
  br label %79

79:                                               ; preds = %78, %64
  %80 = load %struct.page*, %struct.page** %13, align 8
  %81 = call i32 @PageUptodate(%struct.page* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %86 = sub i32 %85, 1
  %87 = and i32 %84, %86
  store i32 %87, i32* %21, align 4
  %88 = call i32 (...) @GetXid()
  store i32 %88, i32* %22, align 4
  %89 = load %struct.page*, %struct.page** %13, align 8
  %90 = call i8* @kmap(%struct.page* %89)
  store i8* %90, i8** %20, align 8
  %91 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %92 = load i32, i32* %19, align 4
  %93 = load i8*, i8** %20, align 8
  %94 = load i32, i32* %21, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @cifs_write(%struct.cifsFileInfo* %91, i32 %92, i8* %96, i32 %97, i32* %10)
  store i32 %98, i32* %15, align 4
  %99 = load %struct.page*, %struct.page** %13, align 8
  %100 = call i32 @kunmap(%struct.page* %99)
  %101 = load i32, i32* %22, align 4
  %102 = call i32 @FreeXid(i32 %101)
  br label %110

103:                                              ; preds = %79
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load %struct.page*, %struct.page** %13, align 8
  %109 = call i32 @set_page_dirty(%struct.page* %108)
  br label %110

110:                                              ; preds = %103, %83
  %111 = load i32, i32* %15, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %110
  %114 = load %struct.inode*, %struct.inode** %16, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 1
  %116 = call i32 @spin_lock(i32* %115)
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.inode*, %struct.inode** %16, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ugt i32 %117, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = load %struct.inode*, %struct.inode** %16, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @i_size_write(%struct.inode* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %113
  %127 = load %struct.inode*, %struct.inode** %16, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 1
  %129 = call i32 @spin_unlock(i32* %128)
  br label %130

130:                                              ; preds = %126, %110
  %131 = load %struct.page*, %struct.page** %13, align 8
  %132 = call i32 @unlock_page(%struct.page* %131)
  %133 = load %struct.page*, %struct.page** %13, align 8
  %134 = call i32 @page_cache_release(%struct.page* %133)
  %135 = load i32, i32* %15, align 4
  ret i32 %135
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @cFYI(i32, i8*, %struct.page*, i32, i32) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @cifs_write(%struct.cifsFileInfo*, i32, i8*, i32, i32*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
