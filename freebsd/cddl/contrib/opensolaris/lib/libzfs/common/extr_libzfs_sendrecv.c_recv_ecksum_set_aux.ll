; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_recv_ecksum_set_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_recv_ecksum_set_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"checksum mismatch or incomplete stream\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZFS_PROP_RECEIVE_RESUME_TOKEN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [166 x i8] c"checksum mismatch or incomplete stream.\0APartially received snapshot is saved.\0AA resuming stream can be generated on the sending system by running:\0A    zfs send -t %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @recv_ecksum_set_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_ecksum_set_aux(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @TEXT_DOMAIN, align 4
  %19 = call i32 @dgettext(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %17, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %56

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = trunc i64 %14 to i32
  %27 = call i32 @strlcpy(i8* %16, i8* %25, i32 %26)
  %28 = call i8* @strchr(i8* %16, i8 signext 64)
  store i8 0, i8* %28, align 1
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %31 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %32 = or i32 %30, %31
  %33 = call i32* @zfs_open(i32* %29, i8* %16, i32 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %56

37:                                               ; preds = %24
  %38 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %11, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* @ZFS_PROP_RECEIVE_RESUME_TOKEN, align 4
  %43 = trunc i64 %39 to i32
  %44 = load i32, i32* @B_TRUE, align 4
  %45 = call i32 @zfs_prop_get(i32* %41, i32 %42, i8* %40, i32 %43, i32* null, i32* null, i32 0, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @TEXT_DOMAIN, align 4
  %51 = call i32 @dgettext(i32 %50, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %49, i32 %51, i8* %40)
  br label %53

53:                                               ; preds = %48, %37
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @zfs_close(i32* %54)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %36, %23
  %57 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %9, align 4
  switch i32 %58, label %60 [
    i32 0, label %59
    i32 1, label %59
  ]

59:                                               ; preds = %56, %56
  ret void

60:                                               ; preds = %56
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zfs_error_aux(i32*, i32, ...) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @zfs_open(i32*, i8*, i32) #2

declare dso_local i32 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @zfs_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
