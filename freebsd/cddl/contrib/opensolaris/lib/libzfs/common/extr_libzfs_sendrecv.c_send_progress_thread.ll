; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_send_progress_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_send_progress_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.tm = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TIME        SENT   SNAPSHOT\0A\00", align 1
@ZFS_IOC_SEND_PROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"sending %s (%d%%: %llu/%llu)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%02d:%02d:%02d\09%llu\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%02d:%02d:%02d   %5s   %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @send_progress_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @send_progress_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %3, align 8
  %15 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlcpy(i32 %23, i8* %26, i32 4)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32, %1
  br label %41

41:                                               ; preds = %128, %40
  %42 = call i32 @sleep(i32 1)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @ZFS_IOC_SEND_PROGRESS, align 4
  %49 = call i64 @zfs_ioctl(i32* %47, i32 %48, %struct.TYPE_6__* %4)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  ret i8* inttoptr (i64 -1 to i8*)

52:                                               ; preds = %41
  %53 = call i32 @time(i32* %10)
  %54 = call %struct.tm* @localtime(i32* %10)
  store %struct.tm* %54, %struct.tm** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %7, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %52
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i64, i64* %7, align 8
  %69 = mul i64 100, %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = udiv i64 %69, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %12, align 4
  br label %76

75:                                               ; preds = %61
  store i32 100, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %67
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @setproctitle(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %80, i64 %81, i32 %85)
  br label %128

87:                                               ; preds = %52
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load i32, i32* @stderr, align 4
  %94 = load %struct.tm*, %struct.tm** %11, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.tm*, %struct.tm** %11, align 8
  %98 = getelementptr inbounds %struct.tm, %struct.tm* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.tm*, %struct.tm** %11, align 8
  %101 = getelementptr inbounds %struct.tm, %struct.tm* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %99, i32 %102, i64 %103, i8* %106)
  br label %127

108:                                              ; preds = %87
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %111 = call i32 @zfs_nicenum(i64 %109, i8* %110, i32 16)
  %112 = load i32, i32* @stderr, align 4
  %113 = load %struct.tm*, %struct.tm** %11, align 8
  %114 = getelementptr inbounds %struct.tm, %struct.tm* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.tm*, %struct.tm** %11, align 8
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.tm*, %struct.tm** %11, align 8
  %120 = getelementptr inbounds %struct.tm, %struct.tm* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %118, i32 %121, i8* %122, i8* %125)
  br label %127

127:                                              ; preds = %108, %92
  br label %128

128:                                              ; preds = %127, %76
  br label %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local i32 @setproctitle(i8*, i8*, i32, i64, i32) #2

declare dso_local i32 @zfs_nicenum(i64, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
