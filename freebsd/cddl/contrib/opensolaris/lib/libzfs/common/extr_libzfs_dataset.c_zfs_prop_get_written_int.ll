; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_prop_get_written_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_prop_get_written_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@ZFS_IOC_SPACE_WRITTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_get_written_int(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strlcpy(i8* %14, i8* %17, i32 8)
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 64)
  %21 = getelementptr i8, i8* %20, i64 1
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 64)
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @strlcpy(i8* %27, i8* %28, i32 8)
  br label %52

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strlcpy(i8* %32, i8* %35, i32 8)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 64)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i8*, i8** %11, align 8
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %42, %30
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strlcat(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 8)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @strlcat(i8* %49, i8* %50, i32 8)
  br label %52

52:                                               ; preds = %44, %25
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ZFS_IOC_SPACE_WRITTEN, align 4
  %59 = call i32 @ioctl(i32 %57, i32 %58, %struct.TYPE_8__* %9)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %68

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %62
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
