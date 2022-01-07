; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_set_cifs_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_set_cifs_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ntsd = type { i32 }
%struct.inode = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }

@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@CIFS_ACL_OWNER = common dso_local global i32 0, align 4
@CIFS_ACL_GROUP = common dso_local global i32 0, align 4
@WRITE_OWNER = common dso_local global i32 0, align 4
@WRITE_DAC = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to open file to set ACL\00", align 1
@DBG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"SetCIFSACL rc = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_cifs_acl(%struct.cifs_ntsd* %0, i32 %1, %struct.inode* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_ntsd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cifs_tcon*, align 8
  %19 = alloca %struct.cifs_sb_info*, align 8
  %20 = alloca %struct.tcon_link*, align 8
  store %struct.cifs_ntsd* %0, %struct.cifs_ntsd** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cifs_sb_info* @CIFS_SB(i32 %23)
  store %struct.cifs_sb_info* %24, %struct.cifs_sb_info** %19, align 8
  %25 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %26 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %25)
  store %struct.tcon_link* %26, %struct.tcon_link** %20, align 8
  %27 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %28 = call i64 @IS_ERR(%struct.tcon_link* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %32 = call i32 @PTR_ERR(%struct.tcon_link* %31)
  store i32 %32, i32* %6, align 4
  br label %97

33:                                               ; preds = %5
  %34 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %35 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %34)
  store %struct.cifs_tcon* %35, %struct.cifs_tcon** %18, align 8
  %36 = call i32 (...) @GetXid()
  store i32 %36, i32* %13, align 4
  %37 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %38 = call i64 @backup_cred(%struct.cifs_sb_info* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %42 = load i32, i32* %16, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @CIFS_ACL_OWNER, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @CIFS_ACL_GROUP, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @WRITE_OWNER, align 4
  store i32 %53, i32* %15, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @WRITE_DAC, align 4
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.cifs_tcon*, %struct.cifs_tcon** %18, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @FILE_OPEN, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %64 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %67 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @CIFSSMBOpen(i32 %57, %struct.cifs_tcon* %58, i8* %59, i32 %60, i32 %61, i32 %62, i32* %17, i32* %12, i32* null, i32 %65, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %56
  %75 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %91

76:                                               ; preds = %56
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.cifs_tcon*, %struct.cifs_tcon** %18, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @CIFSSMBSetCIFSACL(i32 %77, %struct.cifs_tcon* %78, i32 %79, %struct.cifs_ntsd* %80, i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* @DBG2, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @cFYI(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.cifs_tcon*, %struct.cifs_tcon** %18, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @CIFSSMBClose(i32 %87, %struct.cifs_tcon* %88, i32 %89)
  br label %91

91:                                               ; preds = %76, %74
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @FreeXid(i32 %92)
  %94 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %95 = call i32 @cifs_put_tlink(%struct.tcon_link* %94)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %91, %30
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @CIFSSMBOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local i32 @CIFSSMBSetCIFSACL(i32, %struct.cifs_tcon*, i32, %struct.cifs_ntsd*, i32, i32) #1

declare dso_local i32 @cFYI(i32, i8*, i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
