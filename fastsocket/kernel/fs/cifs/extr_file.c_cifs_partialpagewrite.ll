; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_partialpagewrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_partialpagewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space*, i64 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i64, i32, i32, i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifsFileInfo = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No writeable filehandles for inode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32, i32)* @cifs_partialpagewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_partialpagewrite(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cifs_sb_info*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.cifsFileInfo*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %8, align 8
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %23 = shl i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.address_space*, %struct.address_space** %8, align 8
  %27 = icmp ne %struct.address_space* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.address_space*, %struct.address_space** %8, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 0
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  %32 = icmp ne %struct.inode* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %3
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %148

36:                                               ; preds = %28
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 0
  %39 = load %struct.address_space*, %struct.address_space** %38, align 8
  %40 = getelementptr inbounds %struct.address_space, %struct.address_space* %39, i32 0, i32 0
  %41 = load %struct.inode*, %struct.inode** %40, align 8
  store %struct.inode* %41, %struct.inode** %14, align 8
  %42 = load %struct.inode*, %struct.inode** %14, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.cifs_sb_info* @CIFS_SB(i32 %44)
  store %struct.cifs_sb_info* %45, %struct.cifs_sb_info** %13, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %9, align 8
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = call i8* @kmap(%struct.page* %50)
  store i8* %51, i8** %10, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %36
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %36
  %64 = load %struct.page*, %struct.page** %5, align 8
  %65 = call i32 @kunmap(%struct.page* %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %148

68:                                               ; preds = %59
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.address_space*, %struct.address_space** %8, align 8
  %71 = getelementptr inbounds %struct.address_space, %struct.address_space* %70, i32 0, i32 0
  %72 = load %struct.inode*, %struct.inode** %71, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %69, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.page*, %struct.page** %5, align 8
  %78 = call i32 @kunmap(%struct.page* %77)
  store i32 0, i32* %4, align 4
  br label %148

79:                                               ; preds = %68
  %80 = load %struct.address_space*, %struct.address_space** %8, align 8
  %81 = getelementptr inbounds %struct.address_space, %struct.address_space* %80, i32 0, i32 0
  %82 = load %struct.inode*, %struct.inode** %81, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load %struct.address_space*, %struct.address_space** %8, align 8
  %92 = getelementptr inbounds %struct.address_space, %struct.address_space* %91, i32 0, i32 0
  %93 = load %struct.inode*, %struct.inode** %92, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = sub nsw i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %90, %79
  %100 = load %struct.address_space*, %struct.address_space** %8, align 8
  %101 = getelementptr inbounds %struct.address_space, %struct.address_space* %100, i32 0, i32 0
  %102 = load %struct.inode*, %struct.inode** %101, align 8
  %103 = call i32 @CIFS_I(%struct.inode* %102)
  %104 = call %struct.cifsFileInfo* @find_writable_file(i32 %103, i32 0)
  store %struct.cifsFileInfo* %104, %struct.cifsFileInfo** %15, align 8
  %105 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %106 = icmp ne %struct.cifsFileInfo* %105, null
  br i1 %106, label %107, label %140

107:                                              ; preds = %99
  %108 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %109 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %110 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub i32 %113, %114
  %116 = call i32 @cifs_write(%struct.cifsFileInfo* %108, i32 %111, i8* %112, i32 %115, i64* %9)
  store i32 %116, i32* %12, align 4
  %117 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %118 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %117)
  %119 = load %struct.inode*, %struct.inode** %14, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @current_fs_time(i32 %121)
  %123 = load %struct.inode*, %struct.inode** %14, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load %struct.inode*, %struct.inode** %14, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 3
  store i32 %122, i32* %126, align 8
  %127 = load i32, i32* %12, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %107
  %130 = load i64, i64* %9, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  br label %139

133:                                              ; preds = %129, %107
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %136, %133
  br label %139

139:                                              ; preds = %138, %132
  br label %144

140:                                              ; preds = %99
  %141 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %140, %139
  %145 = load %struct.page*, %struct.page** %5, align 8
  %146 = call i32 @kunmap(%struct.page* %145)
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %144, %76, %63, %33
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local %struct.cifsFileInfo* @find_writable_file(i32, i32) #1

declare dso_local i32 @CIFS_I(%struct.inode*) #1

declare dso_local i32 @cifs_write(%struct.cifsFileInfo*, i32, i8*, i32, i64*) #1

declare dso_local i32 @cifsFileInfo_put(%struct.cifsFileInfo*) #1

declare dso_local i32 @current_fs_time(i32) #1

declare dso_local i32 @cFYI(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
