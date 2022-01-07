; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_do_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_do_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { i32 }

@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dentry*, i8*, %struct.dentry*, i8*)* @cifs_do_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_do_rename(i32 %0, %struct.dentry* %1, i8* %2, %struct.dentry* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.tcon_link*, align 8
  %14 = alloca %struct.cifs_tcon*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.dentry*, %struct.dentry** %8, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.cifs_sb_info* @CIFS_SB(i32 %20)
  store %struct.cifs_sb_info* %21, %struct.cifs_sb_info** %12, align 8
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %23 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %22)
  store %struct.tcon_link* %23, %struct.tcon_link** %13, align 8
  %24 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %25 = call i64 @IS_ERR(%struct.tcon_link* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %29 = call i32 @PTR_ERR(%struct.tcon_link* %28)
  store i32 %29, i32* %6, align 4
  br label %108

30:                                               ; preds = %5
  %31 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %32 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %31)
  store %struct.cifs_tcon* %32, %struct.cifs_tcon** %14, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %38 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %41 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @CIFSSMBRename(i32 %33, %struct.cifs_tcon* %34, i8* %35, i8* %36, i32 %39, i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %30
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @ETXTBSY, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %30
  br label %104

54:                                               ; preds = %48
  %55 = load %struct.dentry*, %struct.dentry** %10, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.dentry*, %struct.dentry** %8, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %104

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @FILE_OPEN, align 4
  %68 = load i32, i32* @DELETE, align 4
  %69 = load i32, i32* @CREATE_NOT_DIR, align 4
  %70 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %71 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %74 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @CIFSSMBOpen(i32 %64, %struct.cifs_tcon* %65, i8* %66, i32 %67, i32 %68, i32 %69, i32* %15, i32* %16, i32* null, i32 %72, i32 %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %63
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.dentry*, %struct.dentry** %10, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %91 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %94 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %97 = and i32 %95, %96
  %98 = call i32 @CIFSSMBRenameOpenFile(i32 %82, %struct.cifs_tcon* %83, i32 %84, i8* %89, i32 %92, i32 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @CIFSSMBClose(i32 %99, %struct.cifs_tcon* %100, i32 %101)
  br label %103

103:                                              ; preds = %81, %63
  br label %104

104:                                              ; preds = %103, %62, %53
  %105 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %106 = call i32 @cifs_put_tlink(%struct.tcon_link* %105)
  %107 = load i32, i32* %17, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %27
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @CIFSSMBRename(i32, %struct.cifs_tcon*, i8*, i8*, i32, i32) #1

declare dso_local i32 @CIFSSMBOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @CIFSSMBRenameOpenFile(i32, %struct.cifs_tcon*, i32, i8*, i32, i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
