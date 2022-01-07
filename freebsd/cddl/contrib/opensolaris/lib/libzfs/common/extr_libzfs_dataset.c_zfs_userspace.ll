; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_userspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_userspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ZFS_IOC_USERSPACE_MANY = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot get used/quota for %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_userspace(%struct.TYPE_7__* %0, i32 %1, i32 (i8*, i32, i32, i32)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i32, i32, i32)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca [100 x %struct.TYPE_6__], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca [1024 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i8*, i32, i32, i32)* %2, i32 (i8*, i32, i32, i32)** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strlcpy(i32 %21, i32 %24, i32 4)
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds [100 x %struct.TYPE_6__], [100 x %struct.TYPE_6__]* %11, i64 0, i64 0
  %29 = ptrtoint %struct.TYPE_6__* %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %83, %4
  %32 = getelementptr inbounds [100 x %struct.TYPE_6__], [100 x %struct.TYPE_6__]* %11, i64 0, i64 0
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 1200, i32* %33, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* @ZFS_IOC_USERSPACE_MANY, align 4
  %36 = call i64 @zfs_ioctl(i32* %34, i32 %35, %struct.TYPE_8__* %10)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %40 = load i32, i32* @TEXT_DOMAIN, align 4
  %41 = call i8* @dgettext(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snprintf(i8* %39, i32 1024, i8* %41, i32 %43)
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* @errno, align 4
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %48 = call i32 @zfs_standard_error_fmt(i32* %45, i32 %46, i8* %47)
  store i32 %48, i32* %5, align 4
  br label %85

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %84

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %75, %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 %60(i8* %61, i32 %64, i32 %67, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %5, align 4
  br label %85

75:                                               ; preds = %59
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 1
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = sub i64 %80, 12
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  br label %55

83:                                               ; preds = %55
  br label %31

84:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %73, %38
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_standard_error_fmt(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
