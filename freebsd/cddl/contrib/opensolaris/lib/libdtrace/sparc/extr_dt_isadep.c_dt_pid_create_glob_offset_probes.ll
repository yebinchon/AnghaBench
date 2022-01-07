; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/sparc/extr_dt_isadep.c_dt_pid_create_glob_offset_probes.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/sparc/extr_dt_isadep.c_dt_pid_create_glob_offset_probes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i64*, i32 }
%struct.TYPE_11__ = type { i64, i64 }

@DTFTP_OFFSETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@FASTTRAPIOC_MAKEPROBE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"fasttrap probe creation ioctl failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_pid_create_glob_offset_probes(%struct.ps_prochandle* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, %struct.TYPE_11__* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [17 x i8], align 16
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* @DTFTP_OFFSETS, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i64, i64* %43, i64 %48
  store i64 %40, i64* %49, align 8
  br label %50

50:                                               ; preds = %39
  %51 = load i64, i64* %12, align 8
  %52 = add nsw i64 %51, 4
  store i64 %52, i64* %12, align 8
  br label %33

53:                                               ; preds = %33
  br label %85

54:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %55

55:                                               ; preds = %81, %54
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = getelementptr inbounds [17 x i8], [17 x i8]* %13, i64 0, i64 0
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = getelementptr inbounds [17 x i8], [17 x i8]* %13, i64 0, i64 0
  %66 = load i8*, i8** %11, align 8
  %67 = call i64 @gmatch(i8* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %73, i64 %78
  store i64 %70, i64* %79, align 8
  br label %80

80:                                               ; preds = %69, %61
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %12, align 8
  %83 = add nsw i64 %82, 4
  store i64 %83, i64* %12, align 8
  br label %55

84:                                               ; preds = %55
  br label %85

85:                                               ; preds = %84, %53
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @FASTTRAPIOC_MAKEPROBE, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = call i64 @ioctl(i32 %88, i32 %89, %struct.TYPE_9__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @strerror(i32 %94)
  %96 = call i32 @dt_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = load i32, i32* @errno, align 4
  %99 = call i32 @dt_set_errno(%struct.TYPE_10__* %97, i32 %98)
  store i32 %99, i32* %6, align 4
  br label %104

100:                                              ; preds = %85
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %93
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i64 @gmatch(i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dt_dprintf(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
