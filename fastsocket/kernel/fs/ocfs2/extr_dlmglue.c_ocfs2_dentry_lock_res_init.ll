; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dentry_lock_res_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dentry_lock_res_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dentry_lock = type { %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@OCFS2_DENTRY_LOCK_INO_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%c%016llx\00", align 1
@OCFS2_LOCK_TYPE_DENTRY = common dso_local global i32 0, align 4
@ocfs2_dentry_lops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_dentry_lock_res_init(%struct.ocfs2_dentry_lock* %0, i64 %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.ocfs2_dentry_lock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_dentry_lock* %0, %struct.ocfs2_dentry_lock** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @cpu_to_be64(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %17, i32 0, i32 0
  store %struct.ocfs2_lock_res* %18, %struct.ocfs2_lock_res** %10, align 8
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %20 = call i32 @ocfs2_lock_res_init_once(%struct.ocfs2_lock_res* %19)
  %21 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %22 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @OCFS2_DENTRY_LOCK_INO_START, align 4
  %25 = load i32, i32* @OCFS2_LOCK_TYPE_DENTRY, align 4
  %26 = call i32 @ocfs2_lock_type_char(i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @snprintf(i32* %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @OCFS2_DENTRY_LOCK_INO_START, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp ne i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %36 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @OCFS2_DENTRY_LOCK_INO_START, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @memcpy(i32* %40, i32* %9, i32 4)
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @OCFS2_SB(i32 %44)
  %46 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %47 = load i32, i32* @OCFS2_LOCK_TYPE_DENTRY, align 4
  %48 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %4, align 8
  %49 = call i32 @ocfs2_lock_res_init_common(i32 %45, %struct.ocfs2_lock_res* %46, i32 %47, i32* @ocfs2_dentry_lops, %struct.ocfs2_dentry_lock* %48)
  ret void
}

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @ocfs2_lock_res_init_once(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i64) #1

declare dso_local i32 @ocfs2_lock_type_char(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ocfs2_lock_res_init_common(i32, %struct.ocfs2_lock_res*, i32, i32*, %struct.ocfs2_dentry_lock*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
