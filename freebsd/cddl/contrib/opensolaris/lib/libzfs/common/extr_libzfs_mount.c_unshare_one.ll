; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_unshare_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_unshare_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@PROTO_NFS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No SMB support in FreeBSD yet.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ZFS_EXPORTS_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EZFS_UNSHARENFSFAILED = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot unshare '%s'\00", align 1
@SA_INIT_ONE_SHARE_FROM_NAME = common dso_local global i32 0, align 4
@SA_OK = common dso_local global i32 0, align 4
@proto_table = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i8*, i64)* @unshare_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unshare_one(%struct.TYPE_8__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @PROTO_NFS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %25, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %44

26:                                               ; preds = %4
  %27 = load i32, i32* @ZFS_EXPORTS_PATH, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @fsunshare(i32 %27, i8* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @zfs_error_aux(%struct.TYPE_8__* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = load i32, i32* @EZFS_UNSHARENFSFAILED, align 4
  %39 = load i32, i32* @TEXT_DOMAIN, align 4
  %40 = call i32 @dgettext(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (%struct.TYPE_8__*, i32, i32, i8*, ...) @zfs_error_fmt(%struct.TYPE_8__* %37, i32 %38, i32 %40, i8* %41)
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %44

43:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %44

44:                                               ; preds = %43, %32, %22
  %45 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @fsunshare(i32, i8*) #2

declare dso_local i32 @zfs_error_aux(%struct.TYPE_8__*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @zfs_error_fmt(%struct.TYPE_8__*, i32, i32, i8*, ...) #2

declare dso_local i32 @dgettext(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
