; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_symlink.c_ncp_symlink_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_symlink.c_ncp_symlink_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NCP_MAX_SYMLINK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@NCPI_KLUDGE_SYMLINK = common dso_local global i32 0, align 4
@NCP_MIN_SYMLINK_SIZE = common dso_local global i32 0, align 4
@NCP_SYMLINK_MAGIC0 = common dso_local global i64 0, align 8
@NCP_SYMLINK_MAGIC1 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @ncp_symlink_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_symlink_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i8* @kmap(%struct.page* %18)
  store i8* %19, i8** %12, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @NCP_MAX_SYMLINK_SIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i32 %22, i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %110

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = load i32, i32* @O_RDONLY, align 4
  %31 = call i64 @ncp_make_open(%struct.inode* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %105

34:                                               ; preds = %28
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @NCP_SERVER(%struct.inode* %35)
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call %struct.TYPE_4__* @NCP_FINFO(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NCP_MAX_SYMLINK_SIZE, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @ncp_read_kernel(i32 %36, i32 %40, i32 0, i32 %41, i8* %42, i32* %8)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @ncp_inode_close(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @ncp_make_closed(%struct.inode* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %105

51:                                               ; preds = %34
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call %struct.TYPE_4__* @NCP_FINFO(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NCPI_KLUDGE_SYMLINK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @NCP_MIN_SYMLINK_SIZE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %11, align 8
  %65 = bitcast i8* %64 to i64*
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NCP_SYMLINK_MAGIC0, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load i8*, i8** %11, align 8
  %72 = bitcast i8* %71 to i64*
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NCP_SYMLINK_MAGIC1, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %63, %59
  br label %105

78:                                               ; preds = %70
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 8
  store i8* %80, i8** %10, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 8
  store i32 %82, i32* %8, align 4
  br label %85

83:                                               ; preds = %51
  %84 = load i8*, i8** %11, align 8
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* @NCP_MAX_SYMLINK_SIZE, align 4
  store i32 %86, i32* %9, align 4
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = call i32 @NCP_SERVER(%struct.inode* %87)
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @ncp_vol2io(i32 %88, i8* %89, i32* %9, i8* %90, i32 %91, i32 0)
  store i32 %92, i32* %7, align 4
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @kfree(i8* %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %110

98:                                               ; preds = %85
  %99 = load %struct.page*, %struct.page** %5, align 8
  %100 = call i32 @SetPageUptodate(%struct.page* %99)
  %101 = load %struct.page*, %struct.page** %5, align 8
  %102 = call i32 @kunmap(%struct.page* %101)
  %103 = load %struct.page*, %struct.page** %5, align 8
  %104 = call i32 @unlock_page(%struct.page* %103)
  store i32 0, i32* %3, align 4
  br label %118

105:                                              ; preds = %77, %50, %33
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @kfree(i8* %108)
  br label %110

110:                                              ; preds = %105, %97, %27
  %111 = load %struct.page*, %struct.page** %5, align 8
  %112 = call i32 @SetPageError(%struct.page* %111)
  %113 = load %struct.page*, %struct.page** %5, align 8
  %114 = call i32 @kunmap(%struct.page* %113)
  %115 = load %struct.page*, %struct.page** %5, align 8
  %116 = call i32 @unlock_page(%struct.page* %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %110, %98
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @ncp_make_open(%struct.inode*, i32) #1

declare dso_local i32 @ncp_read_kernel(i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @NCP_SERVER(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @NCP_FINFO(%struct.inode*) #1

declare dso_local i32 @ncp_inode_close(%struct.inode*) #1

declare dso_local i32 @ncp_make_closed(%struct.inode*) #1

declare dso_local i32 @ncp_vol2io(i32, i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
