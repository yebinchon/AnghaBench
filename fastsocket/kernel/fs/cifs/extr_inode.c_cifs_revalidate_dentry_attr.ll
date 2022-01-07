; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_revalidate_dentry_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_revalidate_dentry_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.super_block*, %struct.inode* }
%struct.super_block = type { i32 }
%struct.inode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Update attributes: %s inode 0x%p count %d dentry: 0x%p d_time %ld jiffies %ld\00", align 1
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_revalidate_dentry_attr(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 2
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %7, align 8
  store i8* null, i8** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = icmp eq %struct.inode* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %71

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i32 @cifs_inode_needs_reval(%struct.inode* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %71

26:                                               ; preds = %20
  %27 = call i32 (...) @GetXid()
  store i32 %27, i32* %4, align 4
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = call i8* @build_path_from_dentry(%struct.dentry* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %65

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dentry*, %struct.dentry** %3, align 8
  %43 = load %struct.dentry*, %struct.dentry** %3, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @jiffies, align 4
  %47 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8* %36, %struct.inode* %37, i32 %41, %struct.dentry* %42, i32 %45, i32 %46)
  %48 = load %struct.super_block*, %struct.super_block** %7, align 8
  %49 = call i32 @CIFS_SB(%struct.super_block* %48)
  %50 = call %struct.TYPE_4__* @cifs_sb_master_tcon(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %35
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.super_block*, %struct.super_block** %7, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @cifs_get_inode_info_unix(%struct.inode** %6, i8* %55, %struct.super_block* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %35
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.super_block*, %struct.super_block** %7, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @cifs_get_inode_info(%struct.inode** %6, i8* %60, i32* null, %struct.super_block* %61, i32 %62, i32* null)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %32
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @FreeXid(i32 %68)
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %65, %24, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @cifs_inode_needs_reval(%struct.inode*) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @cFYI(i32, i8*, i8*, %struct.inode*, i32, %struct.dentry*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @cifs_sb_master_tcon(i32) #1

declare dso_local i32 @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @cifs_get_inode_info_unix(%struct.inode**, i8*, %struct.super_block*, i32) #1

declare dso_local i32 @cifs_get_inode_info(%struct.inode**, i8*, i32*, %struct.super_block*, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @FreeXid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
