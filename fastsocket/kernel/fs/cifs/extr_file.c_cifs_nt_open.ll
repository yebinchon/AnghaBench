; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_nt_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_nt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.cifs_tcon = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@CAP_NT_SMBS = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.inode*, %struct.cifs_sb_info*, %struct.cifs_tcon*, i32, i32*, i32*, i32)* @cifs_nt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_nt_open(i8* %0, %struct.inode* %1, %struct.cifs_sb_info* %2, %struct.cifs_tcon* %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.cifs_tcon*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %12, align 8
  store %struct.cifs_tcon* %3, %struct.cifs_tcon** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* @CREATE_NOT_DIR, align 4
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @cifs_convert_flags(i32 %24)
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @cifs_get_disposition(i32 %26)
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i32 4, i32 %28)
  store i32* %29, i32** %22, align 8
  %30 = load i32*, i32** %22, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %8
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %120

35:                                               ; preds = %8
  %36 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %37 = call i64 @backup_cred(%struct.cifs_sb_info* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %41 = load i32, i32* %21, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %21, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %45 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CAP_NT_SMBS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %43
  %53 = load i32, i32* %17, align 4
  %54 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %21, align 4
  %59 = load i32*, i32** %16, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %22, align 8
  %62 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %63 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %66 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @CIFSSMBOpen(i32 %53, %struct.cifs_tcon* %54, i8* %55, i32 %56, i32 %57, i32 %58, i32* %59, i32* %60, i32* %61, i32 %64, i32 %69)
  store i32 %70, i32* %18, align 4
  br label %90

71:                                               ; preds = %43
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* @CREATE_NOT_DIR, align 4
  %78 = load i32*, i32** %16, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = load i32*, i32** %22, align 8
  %81 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %82 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %85 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %88 = and i32 %86, %87
  %89 = call i32 @SMBLegacyOpen(i32 %72, %struct.cifs_tcon* %73, i8* %74, i32 %75, i32 %76, i32 %77, i32* %78, i32* %79, i32* %80, i32 %83, i32 %88)
  store i32 %89, i32* %18, align 4
  br label %90

90:                                               ; preds = %71, %52
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %116

94:                                               ; preds = %90
  %95 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %96 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i8*, i8** %10, align 8
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @cifs_get_inode_info_unix(%struct.inode** %11, i8* %100, i32 %103, i32 %104)
  store i32 %105, i32* %18, align 4
  br label %115

106:                                              ; preds = %94
  %107 = load i8*, i8** %10, align 8
  %108 = load i32*, i32** %22, align 8
  %109 = load %struct.inode*, %struct.inode** %11, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32*, i32** %16, align 8
  %114 = call i32 @cifs_get_inode_info(%struct.inode** %11, i8* %107, i32* %108, i32 %111, i32 %112, i32* %113)
  store i32 %114, i32* %18, align 4
  br label %115

115:                                              ; preds = %106, %99
  br label %116

116:                                              ; preds = %115, %93
  %117 = load i32*, i32** %22, align 8
  %118 = call i32 @kfree(i32* %117)
  %119 = load i32, i32* %18, align 4
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %32
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @cifs_convert_flags(i32) #1

declare dso_local i32 @cifs_get_disposition(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @CIFSSMBOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @SMBLegacyOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @cifs_get_inode_info_unix(%struct.inode**, i8*, i32, i32) #1

declare dso_local i32 @cifs_get_inode_info(%struct.inode**, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
