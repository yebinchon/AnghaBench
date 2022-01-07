; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_cifs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_cifs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32* }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Full path: %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"symname is %s\00", align 1
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Create symlink ok, getinodeinfo fail rc = %d\00", align 1
@cifs_ci_dentry_ops = common dso_local global i32 0, align 4
@cifs_dentry_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_sb_info*, align 8
  %10 = alloca %struct.tcon_link*, align 8
  %11 = alloca %struct.cifs_tcon*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cifs_sb_info* @CIFS_SB(i32 %18)
  store %struct.cifs_sb_info* %19, %struct.cifs_sb_info** %9, align 8
  store i8* null, i8** %12, align 8
  store %struct.inode* null, %struct.inode** %13, align 8
  %20 = call i32 (...) @GetXid()
  store i32 %20, i32* %8, align 4
  %21 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %22 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %21)
  store %struct.tcon_link* %22, %struct.tcon_link** %10, align 8
  %23 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %24 = call i64 @IS_ERR(%struct.tcon_link* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %28 = call i32 @PTR_ERR(%struct.tcon_link* %27)
  store i32 %28, i32* %7, align 4
  br label %117

29:                                               ; preds = %3
  %30 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %31 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %30)
  store %struct.cifs_tcon* %31, %struct.cifs_tcon** %11, align 8
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = call i8* @build_path_from_dentry(%struct.dentry* %32)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %117

39:                                               ; preds = %29
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %45 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %56 = call i32 @CIFSCreateMFSymLink(i32 %51, %struct.cifs_tcon* %52, i8* %53, i8* %54, %struct.cifs_sb_info* %55)
  store i32 %56, i32* %7, align 4
  br label %72

57:                                               ; preds = %39
  %58 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %59 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %68 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CIFSUnixCreateSymLink(i32 %63, %struct.cifs_tcon* %64, i8* %65, i8* %66, i32 %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %62, %57
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %116

75:                                               ; preds = %72
  %76 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %77 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i8*, i8** %12, align 8
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @cifs_get_inode_info_unix(%struct.inode** %13, i8* %81, i32 %84, i32 %85)
  store i32 %86, i32* %7, align 4
  br label %94

87:                                               ; preds = %75
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @cifs_get_inode_info(%struct.inode** %13, i8* %88, i32* null, i32 %91, i32 %92, i32* null)
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %87, %80
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %115

100:                                              ; preds = %94
  %101 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %102 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.dentry*, %struct.dentry** %5, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 0
  store i32* @cifs_ci_dentry_ops, i32** %107, align 8
  br label %111

108:                                              ; preds = %100
  %109 = load %struct.dentry*, %struct.dentry** %5, align 8
  %110 = getelementptr inbounds %struct.dentry, %struct.dentry* %109, i32 0, i32 0
  store i32* @cifs_dentry_ops, i32** %110, align 8
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.dentry*, %struct.dentry** %5, align 8
  %113 = load %struct.inode*, %struct.inode** %13, align 8
  %114 = call i32 @d_instantiate(%struct.dentry* %112, %struct.inode* %113)
  br label %115

115:                                              ; preds = %111, %97
  br label %116

116:                                              ; preds = %115, %72
  br label %117

117:                                              ; preds = %116, %36, %26
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @kfree(i8* %118)
  %120 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %121 = call i32 @cifs_put_tlink(%struct.tcon_link* %120)
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @FreeXid(i32 %122)
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @CIFSCreateMFSymLink(i32, %struct.cifs_tcon*, i8*, i8*, %struct.cifs_sb_info*) #1

declare dso_local i32 @CIFSUnixCreateSymLink(i32, %struct.cifs_tcon*, i8*, i8*, i32) #1

declare dso_local i32 @cifs_get_inode_info_unix(%struct.inode**, i8*, i32, i32) #1

declare dso_local i32 @cifs_get_inode_info(%struct.inode**, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @FreeXid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
