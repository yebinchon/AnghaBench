; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_CIFSCreateMFSymLink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_CIFSCreateMFSymLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32, %struct.nls_table* }
%struct.nls_table = type { i32 }
%struct.cifs_io_parms = type { i32, i64, %struct.cifs_tcon*, i32, i32 }

@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@CIFS_MF_SYMLINK_FILE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@FILE_CREATE = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*)* @CIFSCreateMFSymLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CIFSCreateMFSymLink(i32 %0, %struct.cifs_tcon* %1, i8* %2, i8* %3, %struct.cifs_sb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cifs_sb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.cifs_io_parms, align 8
  %20 = alloca %struct.nls_table*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.cifs_sb_info* %4, %struct.cifs_sb_info** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* @CREATE_NOT_DIR, align 4
  store i32 %21, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %23 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %22, i32 0, i32 1
  %24 = load %struct.nls_table*, %struct.nls_table** %23, align 8
  store %struct.nls_table* %24, %struct.nls_table** %20, align 8
  %25 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %26 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kmalloc(i32 %30, i32 %31)
  store i32* %32, i32** %17, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %106

38:                                               ; preds = %5
  %39 = load i32*, i32** %17, align 8
  %40 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @CIFSFormatMFSymlink(i32* %39, i32 %40, i8* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32*, i32** %17, align 8
  %47 = call i32 @kfree(i32* %46)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %106

49:                                               ; preds = %38
  %50 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %51 = call i64 @backup_cred(%struct.cifs_sb_info* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %55 = load i32, i32* %15, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @FILE_CREATE, align 4
  %62 = load i32, i32* @GENERIC_WRITE, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.nls_table*, %struct.nls_table** %20, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @CIFSSMBOpen(i32 %58, %struct.cifs_tcon* %59, i8* %60, i32 %61, i32 %62, i32 %63, i32* %16, i32* %13, i32* null, %struct.nls_table* %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load i32*, i32** %17, align 8
  %71 = call i32 @kfree(i32* %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %106

73:                                               ; preds = %57
  %74 = load i32, i32* %16, align 4
  %75 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %19, i32 0, i32 4
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %19, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %81 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %19, i32 0, i32 2
  store %struct.cifs_tcon* %80, %struct.cifs_tcon** %81, align 8
  %82 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %19, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %84 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %19, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %17, align 8
  %87 = call i32 @CIFSSMBWrite(i32 %85, %struct.cifs_io_parms* %19, i32* %18, i32* %86, i32* null, i32 0)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @CIFSSMBClose(i32 %88, %struct.cifs_tcon* %89, i32 %90)
  %92 = load i32*, i32** %17, align 8
  %93 = call i32 @kfree(i32* %92)
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %73
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %6, align 4
  br label %106

98:                                               ; preds = %73
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %106

105:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %102, %96, %69, %45, %35
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @CIFSFormatMFSymlink(i32*, i32, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @CIFSSMBOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, i32*, %struct.nls_table*, i32) #1

declare dso_local i32 @CIFSSMBWrite(i32, %struct.cifs_io_parms*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
