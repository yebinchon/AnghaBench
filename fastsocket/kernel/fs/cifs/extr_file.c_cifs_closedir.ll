; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_closedir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_closedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i64, i32 }
%struct.cifs_tcon = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Closedir inode = 0x%p\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Freeing private data in close dir\00", align 1
@cifs_file_list_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Closing uncompleted readdir with rc %d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"closedir free smb buf in srch struct\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_closedir(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifsFileInfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  store %struct.cifsFileInfo* %12, %struct.cifsFileInfo** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.inode* %13)
  %15 = call i32 (...) @GetXid()
  store i32 %15, i32* %6, align 4
  %16 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %17 = icmp ne %struct.cifsFileInfo* %16, null
  br i1 %17, label %18, label %84

18:                                               ; preds = %2
  %19 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %20 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cifs_tcon* @tlink_tcon(i32 %21)
  store %struct.cifs_tcon* %22, %struct.cifs_tcon** %9, align 8
  %23 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @spin_lock(i32* @cifs_file_list_lock)
  %25 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %26 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %18
  %31 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %32 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %37 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = call i32 @spin_unlock(i32* @cifs_file_list_lock)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %41 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %42 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @CIFSFindClose(i32 %39, %struct.cifs_tcon* %40, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i32 0, i32* %5, align 4
  br label %49

47:                                               ; preds = %30, %18
  %48 = call i32 @spin_unlock(i32* @cifs_file_list_lock)
  br label %49

49:                                               ; preds = %47, %35
  %50 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %51 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %49
  %57 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %59 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* null, i8** %60, align 8
  %61 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %62 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @cifs_small_buf_release(i8* %67)
  br label %72

69:                                               ; preds = %56
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @cifs_buf_release(i8* %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %49
  %74 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %75 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cifs_put_tlink(i32 %76)
  %78 = load %struct.file*, %struct.file** %4, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 0
  %80 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %79, align 8
  %81 = call i32 @kfree(%struct.cifsFileInfo* %80)
  %82 = load %struct.file*, %struct.file** %4, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 0
  store %struct.cifsFileInfo* null, %struct.cifsFileInfo** %83, align 8
  br label %84

84:                                               ; preds = %73, %2
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @FreeXid(i32 %85)
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @CIFSFindClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @cifs_small_buf_release(i8*) #1

declare dso_local i32 @cifs_buf_release(i8*) #1

declare dso_local i32 @cifs_put_tlink(i32) #1

declare dso_local i32 @kfree(%struct.cifsFileInfo*) #1

declare dso_local i32 @FreeXid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
