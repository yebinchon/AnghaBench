; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @msdos_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %9, align 8
  %18 = load i32, i32* @MSDOS_NAME, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @MSDOS_NAME, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load %struct.super_block*, %struct.super_block** %9, align 8
  %26 = call i32 @lock_super(%struct.super_block* %25)
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.super_block*, %struct.super_block** %36, align 8
  %38 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @msdos_format_name(i8* %30, i32 %34, i8* %21, i32* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  br label %85

44:                                               ; preds = %4
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.dentry*, %struct.dentry** %8, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load %struct.super_block*, %struct.super_block** %54, align 8
  %56 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @msdos_format_name(i8* %48, i32 %52, i8* %24, i32* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %85

62:                                               ; preds = %44
  %63 = load %struct.dentry*, %struct.dentry** %8, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 46
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = getelementptr inbounds i8, i8* %24, i64 0
  %73 = load i8, i8* %72, align 16
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 46
  br label %76

76:                                               ; preds = %71, %62
  %77 = phi i1 [ false, %62 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = load %struct.dentry*, %struct.dentry** %6, align 8
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = load %struct.dentry*, %struct.dentry** %8, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @do_msdos_rename(%struct.inode* %79, i8* %21, %struct.dentry* %80, %struct.inode* %81, i8* %24, %struct.dentry* %82, i32 %83)
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %76, %61, %43
  %86 = load %struct.super_block*, %struct.super_block** %9, align 8
  %87 = call i32 @unlock_super(%struct.super_block* %86)
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.super_block*, %struct.super_block** %9, align 8
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = call i32 @fat_flush_inodes(%struct.super_block* %91, %struct.inode* %92, %struct.inode* %93)
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %13, align 4
  %97 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %97)
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lock_super(%struct.super_block*) #2

declare dso_local i32 @msdos_format_name(i8*, i32, i8*, i32*) #2

declare dso_local %struct.TYPE_4__* @MSDOS_SB(%struct.super_block*) #2

declare dso_local i32 @do_msdos_rename(%struct.inode*, i8*, %struct.dentry*, %struct.inode*, i8*, %struct.dentry*, i32) #2

declare dso_local i32 @unlock_super(%struct.super_block*) #2

declare dso_local i32 @fat_flush_inodes(%struct.super_block*, %struct.inode*, %struct.inode*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
