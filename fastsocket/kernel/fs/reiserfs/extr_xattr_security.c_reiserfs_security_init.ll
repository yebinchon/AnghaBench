; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_security.c_reiserfs_security_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_security.c_reiserfs_security_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.reiserfs_security_handle = type { i64, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@i_has_xattr_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_security_init(%struct.inode* %0, %struct.inode* %1, %struct.reiserfs_security_handle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.reiserfs_security_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.reiserfs_security_handle* %2, %struct.reiserfs_security_handle** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %11 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %10, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i64 @IS_PRIVATE(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %20 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %19, i32 0, i32 2
  %21 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %22 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %21, i32 0, i32 1
  %23 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %24 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %23, i32 0, i32 0
  %25 = call i32 @security_inode_init_security(%struct.inode* %17, %struct.inode* %18, i32** %20, i32** %22, i64* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %16
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %36 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %38 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %40 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %64

42:                                               ; preds = %16
  %43 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %44 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i32 @reiserfs_xattr_jcreate_nblocks(%struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %52 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @reiserfs_xattr_nblocks(%struct.inode* %50, i64 %53)
  %55 = add nsw i32 %49, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @i_has_xattr_dir, align 4
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %47, %42
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %34, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @security_inode_init_security(%struct.inode*, %struct.inode*, i32**, i32**, i64*) #1

declare dso_local i32 @reiserfs_xattr_jcreate_nblocks(%struct.inode*) #1

declare dso_local i32 @reiserfs_xattr_nblocks(%struct.inode*, i64) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
