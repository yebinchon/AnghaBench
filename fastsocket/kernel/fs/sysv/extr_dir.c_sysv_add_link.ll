; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_add_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_dir.c_sysv_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, i32 }
%struct.page = type { i32 }
%struct.sysv_dir_entry = type { i64, i32 }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@SYSV_DIRSIZE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@SYSV_NAMELEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv_add_link(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.sysv_dir_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %6, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  store %struct.page* null, %struct.page** %9, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i64 @dir_pages(%struct.inode* %29)
  store i64 %30, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %86, %2
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call %struct.page* @dir_get_page(%struct.inode* %36, i64 %37)
  store %struct.page* %38, %struct.page** %9, align 8
  %39 = load %struct.page*, %struct.page** %9, align 8
  %40 = call i32 @PTR_ERR(%struct.page* %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.page*, %struct.page** %9, align 8
  %42 = call i64 @IS_ERR(%struct.page* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %160

45:                                               ; preds = %35
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = call i64 @page_address(%struct.page* %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = bitcast i8* %49 to %struct.sysv_dir_entry*
  store %struct.sysv_dir_entry* %50, %struct.sysv_dir_entry** %10, align 8
  %51 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %52 = load i32, i32* @SYSV_DIRSIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %51, %53
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8* %56, i8** %13, align 8
  br label %57

57:                                               ; preds = %80, %45
  %58 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %59 = bitcast %struct.sysv_dir_entry* %58 to i8*
  %60 = load i8*, i8** %13, align 8
  %61 = icmp ule i8* %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %57
  %63 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %64 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %93

68:                                               ; preds = %62
  %69 = load i32, i32* @EEXIST, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @SYSV_NAMELEN, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %75 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @namecompare(i32 %71, i32 %72, i8* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %157

80:                                               ; preds = %68
  %81 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %82 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %81, i32 1
  store %struct.sysv_dir_entry* %82, %struct.sysv_dir_entry** %10, align 8
  br label %57

83:                                               ; preds = %57
  %84 = load %struct.page*, %struct.page** %9, align 8
  %85 = call i32 @dir_put_page(%struct.page* %84)
  br label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %31

89:                                               ; preds = %31
  %90 = call i32 (...) @BUG()
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %165

93:                                               ; preds = %67
  %94 = load %struct.page*, %struct.page** %9, align 8
  %95 = call i32 @page_offset(%struct.page* %94)
  %96 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %97 = bitcast %struct.sysv_dir_entry* %96 to i8*
  %98 = sext i32 %95 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load %struct.page*, %struct.page** %9, align 8
  %101 = call i64 @page_address(%struct.page* %100)
  %102 = inttoptr i64 %101 to i8*
  %103 = ptrtoint i8* %99 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %14, align 4
  %107 = load %struct.page*, %struct.page** %9, align 8
  %108 = call i32 @lock_page(%struct.page* %107)
  %109 = load %struct.page*, %struct.page** %9, align 8
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @SYSV_DIRSIZE, align 4
  %114 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %115 = call i32 @__sysv_write_begin(i32* null, i32 %111, i32 %112, i32 %113, i32 %114, %struct.page** %9, i32* null)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %93
  br label %162

119:                                              ; preds = %93
  %120 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %121 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @memcpy(i32 %122, i8* %123, i32 %124)
  %126 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %127 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* @SYSV_DIRSIZE, align 4
  %132 = load i32, i32* %8, align 4
  %133 = sub nsw i32 %131, %132
  %134 = sub nsw i32 %133, 2
  %135 = call i32 @memset(i32 %130, i32 0, i32 %134)
  %136 = load %struct.inode*, %struct.inode** %5, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @SYSV_SB(i32 %138)
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @cpu_to_fs16(i32 %139, i32 %142)
  %144 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %10, align 8
  %145 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.page*, %struct.page** %9, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* @SYSV_DIRSIZE, align 4
  %149 = call i32 @dir_commit_chunk(%struct.page* %146, i32 %147, i32 %148)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %151 = load %struct.inode*, %struct.inode** %6, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.inode*, %struct.inode** %6, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  %155 = load %struct.inode*, %struct.inode** %6, align 8
  %156 = call i32 @mark_inode_dirty(%struct.inode* %155)
  br label %157

157:                                              ; preds = %162, %119, %79
  %158 = load %struct.page*, %struct.page** %9, align 8
  %159 = call i32 @dir_put_page(%struct.page* %158)
  br label %160

160:                                              ; preds = %157, %44
  %161 = load i32, i32* %15, align 4
  store i32 %161, i32* %3, align 4
  br label %165

162:                                              ; preds = %118
  %163 = load %struct.page*, %struct.page** %9, align 8
  %164 = call i32 @unlock_page(%struct.page* %163)
  br label %157

165:                                              ; preds = %160, %89
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @namecompare(i32, i32, i8*, i32) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @__sysv_write_begin(i32*, i32, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @cpu_to_fs16(i32, i32) #1

declare dso_local i32 @SYSV_SB(i32) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
