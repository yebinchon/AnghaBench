; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_cifs_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_cifs_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nameidata = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@CAP_UNIX = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Full path: %s inode = 0x%p\00", align 1
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cifs_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca %struct.tcon_link*, align 8
  %12 = alloca %struct.cifs_tcon*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %5, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cifs_sb_info* @CIFS_SB(i32 %20)
  store %struct.cifs_sb_info* %21, %struct.cifs_sb_info** %10, align 8
  store %struct.tcon_link* null, %struct.tcon_link** %11, align 8
  %22 = call i32 (...) @GetXid()
  store i32 %22, i32* %7, align 4
  %23 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %24 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %23)
  store %struct.tcon_link* %24, %struct.tcon_link** %11, align 8
  %25 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %26 = call i64 @IS_ERR(%struct.tcon_link* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %30 = call i32 @PTR_ERR(%struct.tcon_link* %29)
  store i32 %30, i32* %6, align 4
  store %struct.tcon_link* null, %struct.tcon_link** %11, align 8
  br label %106

31:                                               ; preds = %2
  %32 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %33 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %32)
  store %struct.cifs_tcon* %33, %struct.cifs_tcon** %12, align 8
  %34 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %35 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %31
  %41 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %42 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CAP_UNIX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @EACCES, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %106

52:                                               ; preds = %40, %31
  %53 = load %struct.dentry*, %struct.dentry** %3, align 8
  %54 = call i8* @build_path_from_dentry(%struct.dentry* %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %106

58:                                               ; preds = %52
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %59, %struct.inode* %60)
  %62 = load i32, i32* @EACCES, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  %64 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %65 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %58
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %75 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %78 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @CIFSQueryMFSymLink(i32 %71, %struct.cifs_tcon* %72, i8* %73, i8** %9, i32 %76, i32 %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %70, %58
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %88 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CAP_UNIX, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %100 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @CIFSSMBUnixQuerySymLink(i32 %96, %struct.cifs_tcon* %97, i8* %98, i8** %9, i32 %101)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %95, %86, %83
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @kfree(i8* %104)
  br label %106

106:                                              ; preds = %103, %57, %49, %28
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @kfree(i8* %110)
  %112 = load i32, i32* %6, align 4
  %113 = call i8* @ERR_PTR(i32 %112)
  store i8* %113, i8** %9, align 8
  br label %114

114:                                              ; preds = %109, %106
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @FreeXid(i32 %115)
  %117 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %118 = icmp ne %struct.tcon_link* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %121 = call i32 @cifs_put_tlink(%struct.tcon_link* %120)
  br label %122

122:                                              ; preds = %119, %114
  %123 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @nd_set_link(%struct.nameidata* %123, i8* %124)
  ret i8* null
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @cFYI(i32, i8*, i8*, %struct.inode*) #1

declare dso_local i32 @CIFSQueryMFSymLink(i32, %struct.cifs_tcon*, i8*, i8**, i32, i32) #1

declare dso_local i32 @CIFSSMBUnixQuerySymLink(i32, %struct.cifs_tcon*, i8*, i8**, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @nd_set_link(%struct.nameidata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
