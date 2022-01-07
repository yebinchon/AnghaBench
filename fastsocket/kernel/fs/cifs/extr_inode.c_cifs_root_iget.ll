; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_root_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_root_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32*, i32*, i32 }
%struct.super_block = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.cifs_tcon = type { i64, i32, i64 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"ipc connection - fake read inode\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@cifs_ipc_inode_ops = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @cifs_root_iget(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %10)
  store %struct.cifs_sb_info* %11, %struct.cifs_sb_info** %5, align 8
  store %struct.inode* null, %struct.inode** %6, align 8
  %12 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %13 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %12)
  store %struct.cifs_tcon* %13, %struct.cifs_tcon** %9, align 8
  %14 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %15 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %16 = call i8* @cifs_build_path_to_root(%struct.cifs_sb_info* %14, %struct.cifs_tcon* %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i64, i64* @ENOMEM, align 8
  %21 = sub nsw i64 0, %20
  %22 = call %struct.inode* @ERR_PTR(i64 %21)
  store %struct.inode* %22, %struct.inode** %2, align 8
  br label %92

23:                                               ; preds = %1
  %24 = call i32 (...) @GetXid()
  store i32 %24, i32* %4, align 4
  %25 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %26 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @cifs_get_inode_info_unix(%struct.inode** %6, i8* %30, %struct.super_block* %31, i32 %32)
  store i64 %33, i64* %7, align 8
  br label %39

34:                                               ; preds = %23
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.super_block*, %struct.super_block** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @cifs_get_inode_info(%struct.inode** %6, i8* %35, i32* null, %struct.super_block* %36, i32 %37, i32* null)
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = icmp ne %struct.inode* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = call %struct.inode* @ERR_PTR(i64 %43)
  store %struct.inode* %44, %struct.inode** %6, align 8
  br label %86

45:                                               ; preds = %39
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %50 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @S_IFDIR, align 4
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  store i32 2, i32* %61, align 8
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 4
  store i32* @cifs_ipc_inode_ops, i32** %63, align 8
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 3
  store i32* @simple_dir_operations, i32** %65, align 8
  %66 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %67 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %72 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %85

76:                                               ; preds = %48, %45
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = call i32 @iget_failed(%struct.inode* %80)
  %82 = load i64, i64* %7, align 8
  %83 = call %struct.inode* @ERR_PTR(i64 %82)
  store %struct.inode* %83, %struct.inode** %6, align 8
  br label %84

84:                                               ; preds = %79, %76
  br label %85

85:                                               ; preds = %84, %53
  br label %86

86:                                               ; preds = %85, %42
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @kfree(i8* %87)
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @_FreeXid(i32 %89)
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %91, %struct.inode** %2, align 8
  br label %92

92:                                               ; preds = %86, %19
  %93 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %93
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i8* @cifs_build_path_to_root(%struct.cifs_sb_info*, %struct.cifs_tcon*) #1

declare dso_local %struct.inode* @ERR_PTR(i64) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i64 @cifs_get_inode_info_unix(%struct.inode**, i8*, %struct.super_block*, i32) #1

declare dso_local i64 @cifs_get_inode_info(%struct.inode**, i8*, i32*, %struct.super_block*, i32, i32*) #1

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @_FreeXid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
