; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_listxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@XATTR_NAME_NFSV4_ACL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs4_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @XATTR_NAME_NFSV4_ACL, align 4
  %10 = call i32 @strlen(i32 %9)
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @NFS_SERVER(i32 %15)
  %17 = call i32 @nfs4_server_supports_acls(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %40

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* @ERANGE, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %4, align 8
  br label %40

30:                                               ; preds = %23, %20
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @XATTR_NAME_NFSV4_ACL, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @memcpy(i8* %34, i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %38, %27, %19
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @nfs4_server_supports_acls(i32) #1

declare dso_local i32 @NFS_SERVER(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
