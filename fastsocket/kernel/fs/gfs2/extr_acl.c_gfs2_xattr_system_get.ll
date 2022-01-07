; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_acl.c_gfs2_xattr_system_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_acl.c_gfs2_xattr_system_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64)* @gfs2_xattr_system_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_xattr_system_get(%struct.inode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.posix_acl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %10, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %56

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @gfs2_acl_type(i8* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @GFS2_I(%struct.inode* %32)
  %34 = load i32, i32* %12, align 4
  %35 = call %struct.posix_acl* @gfs2_acl_get(i32 %33, i32 %34)
  store %struct.posix_acl* %35, %struct.posix_acl** %11, align 8
  %36 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %37 = call i64 @IS_ERR(%struct.posix_acl* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %41 = call i32 @PTR_ERR(%struct.posix_acl* %40)
  store i32 %41, i32* %5, align 4
  br label %56

42:                                               ; preds = %31
  %43 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %44 = icmp eq %struct.posix_acl* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @ENODATA, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %56

48:                                               ; preds = %42
  %49 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %49, i8* %50, i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %54 = call i32 @posix_acl_release(%struct.posix_acl* %53)
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %48, %45, %39, %29, %21
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_acl_type(i8*) #1

declare dso_local %struct.posix_acl* @gfs2_acl_get(i32, i32) #1

declare dso_local i32 @GFS2_I(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_to_xattr(%struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
