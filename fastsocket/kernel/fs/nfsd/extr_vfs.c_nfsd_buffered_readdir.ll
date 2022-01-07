; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_buffered_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_buffered_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.readdir_cd = type { i64 }
%struct.readdir_data = type { i32, i8*, i64 }
%struct.buffered_dirent = type { i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfserr_eof = common dso_local global i64 0, align 8
@nfsd_buffered_filldir = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)*, %struct.readdir_cd*, i32*)* @nfsd_buffered_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd_buffered_readdir(%struct.file* %0, i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)* %1, %struct.readdir_cd* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)*, align 8
  %8 = alloca %struct.readdir_cd*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.readdir_data, align 8
  %11 = alloca %struct.buffered_dirent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)* %1, i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)** %7, align 8
  store %struct.readdir_cd* %2, %struct.readdir_cd** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @__get_free_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %10, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %10, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i64 @nfserrno(i32 %26)
  store i64 %27, i64* %5, align 8
  br label %147

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %28, %127
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.inode*, %struct.inode** %36, align 8
  store %struct.inode* %37, %struct.inode** %15, align 8
  %38 = load i64, i64* @nfserr_eof, align 8
  %39 = load %struct.readdir_cd*, %struct.readdir_cd** %8, align 8
  %40 = getelementptr inbounds %struct.readdir_cd, %struct.readdir_cd* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %10, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %10, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.file*, %struct.file** %6, align 8
  %44 = load i32, i32* @nfsd_buffered_filldir, align 4
  %45 = call i32 @vfs_readdir(%struct.file* %43, i32 %44, %struct.readdir_data* %10)
  store i32 %45, i32* %12, align 4
  %46 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %10, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %131

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %131

60:                                               ; preds = %54
  %61 = load %struct.inode*, %struct.inode** %15, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock_killable(i32* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %131

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %10, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = bitcast i8* %69 to %struct.buffered_dirent*
  store %struct.buffered_dirent* %70, %struct.buffered_dirent** %11, align 8
  br label %71

71:                                               ; preds = %105, %67
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %120

74:                                               ; preds = %71
  %75 = load %struct.buffered_dirent*, %struct.buffered_dirent** %11, align 8
  %76 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %14, align 4
  %78 = load i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)*, i64 (%struct.readdir_cd*, i32, i64, i32, i32, i32)** %7, align 8
  %79 = load %struct.readdir_cd*, %struct.readdir_cd** %8, align 8
  %80 = load %struct.buffered_dirent*, %struct.buffered_dirent** %11, align 8
  %81 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.buffered_dirent*, %struct.buffered_dirent** %11, align 8
  %84 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.buffered_dirent*, %struct.buffered_dirent** %11, align 8
  %87 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.buffered_dirent*, %struct.buffered_dirent** %11, align 8
  %90 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.buffered_dirent*, %struct.buffered_dirent** %11, align 8
  %93 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 %78(%struct.readdir_cd* %79, i32 %82, i64 %85, i32 %88, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %74
  br label %120

98:                                               ; preds = %74
  %99 = load %struct.readdir_cd*, %struct.readdir_cd** %8, align 8
  %100 = getelementptr inbounds %struct.readdir_cd, %struct.readdir_cd* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @nfs_ok, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %120

105:                                              ; preds = %98
  %106 = load %struct.buffered_dirent*, %struct.buffered_dirent** %11, align 8
  %107 = getelementptr inbounds %struct.buffered_dirent, %struct.buffered_dirent* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 24, %108
  %110 = call i32 @ALIGN(i64 %109, i32 4)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sub i32 %112, %111
  store i32 %113, i32* %13, align 4
  %114 = load %struct.buffered_dirent*, %struct.buffered_dirent** %11, align 8
  %115 = bitcast %struct.buffered_dirent* %114 to i8*
  %116 = load i32, i32* %16, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = bitcast i8* %118 to %struct.buffered_dirent*
  store %struct.buffered_dirent* %119, %struct.buffered_dirent** %11, align 8
  br label %71

120:                                              ; preds = %104, %97, %71
  %121 = load %struct.inode*, %struct.inode** %15, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* %13, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %131

127:                                              ; preds = %120
  %128 = load %struct.file*, %struct.file** %6, align 8
  %129 = load i32, i32* @SEEK_CUR, align 4
  %130 = call i32 @vfs_llseek(%struct.file* %128, i32 0, i32 %129)
  store i32 %130, i32* %14, align 4
  br label %31

131:                                              ; preds = %126, %66, %59, %53
  %132 = getelementptr inbounds %struct.readdir_data, %struct.readdir_data* %10, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = call i32 @free_page(i64 %134)
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* %12, align 4
  %140 = call i64 @nfserrno(i32 %139)
  store i64 %140, i64* %5, align 8
  br label %147

141:                                              ; preds = %131
  %142 = load i32, i32* %14, align 4
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  %144 = load %struct.readdir_cd*, %struct.readdir_cd** %8, align 8
  %145 = getelementptr inbounds %struct.readdir_cd, %struct.readdir_cd* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %5, align 8
  br label %147

147:                                              ; preds = %141, %138, %24
  %148 = load i64, i64* %5, align 8
  ret i64 %148
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @vfs_readdir(%struct.file*, i32, %struct.readdir_data*) #1

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfs_llseek(%struct.file*, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
