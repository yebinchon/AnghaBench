; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_acl.c_jffs2_acl_getxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_acl.c_jffs2_acl_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64)* @jffs2_acl_getxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_acl_getxattr(%struct.inode* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.posix_acl* @jffs2_get_acl(%struct.inode* %12, i32 %13)
  store %struct.posix_acl* %14, %struct.posix_acl** %10, align 8
  %15 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %16 = call i64 @IS_ERR(%struct.posix_acl* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.posix_acl* %19)
  store i32 %20, i32* %5, align 4
  br label %35

21:                                               ; preds = %4
  %22 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %23 = icmp ne %struct.posix_acl* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENODATA, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %21
  %28 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %28, i8* %29, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %33 = call i32 @posix_acl_release(%struct.posix_acl* %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %24, %18
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.posix_acl* @jffs2_get_acl(%struct.inode*, i32) #1

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
