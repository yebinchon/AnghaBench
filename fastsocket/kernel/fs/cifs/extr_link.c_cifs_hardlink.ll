; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_cifs_hardlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_cifs_hardlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { i64 }
%struct.cifsInodeInfo = type { i64 }

@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_hardlink(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.tcon_link*, align 8
  %14 = alloca %struct.cifs_tcon*, align 8
  %15 = alloca %struct.cifsInodeInfo*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %16 = load i32, i32* @EACCES, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cifs_sb_info* @CIFS_SB(i32 %20)
  store %struct.cifs_sb_info* %21, %struct.cifs_sb_info** %12, align 8
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %23 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %22)
  store %struct.tcon_link* %23, %struct.tcon_link** %13, align 8
  %24 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %25 = call i64 @IS_ERR(%struct.tcon_link* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %29 = call i32 @PTR_ERR(%struct.tcon_link* %28)
  store i32 %29, i32* %4, align 4
  br label %127

30:                                               ; preds = %3
  %31 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %32 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %31)
  store %struct.cifs_tcon* %32, %struct.cifs_tcon** %14, align 8
  %33 = call i32 (...) @GetXid()
  store i32 %33, i32* %9, align 4
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = call i8* @build_path_from_dentry(%struct.dentry* %34)
  store i8* %35, i8** %10, align 8
  %36 = load %struct.dentry*, %struct.dentry** %7, align 8
  %37 = call i8* @build_path_from_dentry(%struct.dentry* %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i8*, i8** %11, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %30
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %117

46:                                               ; preds = %40
  %47 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %48 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %57 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %60 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @CIFSUnixCreateHardLink(i32 %52, %struct.cifs_tcon* %53, i8* %54, i8* %55, i32 %58, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %92

65:                                               ; preds = %46
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %71 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %74 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @CIFSCreateHardLink(i32 %66, %struct.cifs_tcon* %67, i8* %68, i8* %69, i32 %72, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %65
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %65
  %89 = load i32, i32* @EOPNOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %83
  br label %92

92:                                               ; preds = %91, %51
  %93 = load %struct.dentry*, %struct.dentry** %7, align 8
  %94 = call i32 @d_drop(%struct.dentry* %93)
  %95 = load %struct.dentry*, %struct.dentry** %5, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = icmp ne %struct.TYPE_2__* %97, null
  br i1 %98, label %99, label %116

99:                                               ; preds = %92
  %100 = load %struct.dentry*, %struct.dentry** %5, align 8
  %101 = getelementptr inbounds %struct.dentry, %struct.dentry* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = call %struct.cifsInodeInfo* @CIFS_I(%struct.TYPE_2__* %102)
  store %struct.cifsInodeInfo* %103, %struct.cifsInodeInfo** %15, align 8
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.dentry*, %struct.dentry** %5, align 8
  %108 = getelementptr inbounds %struct.dentry, %struct.dentry* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %106, %99
  %114 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %15, align 8
  %115 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %92
  br label %117

117:                                              ; preds = %116, %43
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 @kfree(i8* %118)
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @kfree(i8* %120)
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @FreeXid(i32 %122)
  %124 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %125 = call i32 @cifs_put_tlink(%struct.tcon_link* %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %117, %27
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @CIFSUnixCreateHardLink(i32, %struct.cifs_tcon*, i8*, i8*, i32, i32) #1

declare dso_local i32 @CIFSCreateHardLink(i32, %struct.cifs_tcon*, i8*, i8*, i32, i32) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
