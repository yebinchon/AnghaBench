; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_security.c_reiserfs_security_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_security.c_reiserfs_security_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { i32 }
%struct.reiserfs_security_handle = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_security_write(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, %struct.reiserfs_security_handle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reiserfs_transaction_handle*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.reiserfs_security_handle*, align 8
  %8 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.reiserfs_security_handle* %2, %struct.reiserfs_security_handle** %7, align 8
  %9 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %10 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strlen(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %22 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %25 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %7, align 8
  %28 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @XATTR_CREATE, align 4
  %31 = call i32 @reiserfs_xattr_set_handle(%struct.reiserfs_transaction_handle* %19, %struct.inode* %20, i32 %23, i32 %26, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ENODATA, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %18
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %18
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @reiserfs_xattr_set_handle(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
