; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_toplvl.c_amfs_toplvl_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_toplvl.c_amfs_toplvl_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, i64*, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.stat = type { i32 }

@SIZEOF_OPTS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s is not a directory\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s%s,%s=%d,%s,map=%s\00", align 1
@MNTTAB_OPT_RW = common dso_local global i32 0, align 4
@MNTTAB_OPT_PORT = common dso_local global i32 0, align 4
@nfs_port = common dso_local global i32 0, align 4
@gopt = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@AMU_TYPE_TOPLVL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c",%s=%d\00", align 1
@MNTTAB_OPT_TIMEO = common dso_local global i32 0, align 4
@MNTTAB_OPT_RETRANS = common dso_local global i32 0, align 4
@XLOG_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"amfs_toplvl_mount: amfs_mount failed: %m\00", align 1
@MFF_IS_AUTOFS = common dso_local global i32 0, align 4
@MNTTAB_OPT_IGNORE = common dso_local global i8* null, align 8
@MNTTAB_OPT_INTR = common dso_local global i8* null, align 8
@MNTTAB_OPT_NOAC = common dso_local global i8* null, align 8
@MNTTAB_OPT_NOLOCK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amfs_toplvl_mount(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [40 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %13 = load i32, i32* @SIZEOF_OPTS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @SIZEOF_OPTS, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @stat(i32 %22, %struct.stat* %6)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_IFMT, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @S_IFDIR, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32, i32* @XLOG_WARNING, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @plog(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENOTDIR, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %43, align 16
  %44 = trunc i64 %14 to i32
  %45 = load i32, i32* @MNTTAB_OPT_RW, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* @MNTTAB_OPT_PORT, align 4
  %48 = load i32, i32* @nfs_port, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, i8*, i8*, i64, ...) @xsnprintf(i8* %16, i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %19, i64 %46, i32 %47, i32 %48, i32 %53, i32 %56)
  %58 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gopt, i32 0, i32 0), align 8
  %59 = load i64, i64* @AMU_TYPE_TOPLVL, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %42
  %64 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %65 = load i32, i32* @MNTTAB_OPT_TIMEO, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gopt, i32 0, i32 0), align 8
  %69 = load i64, i64* @AMU_TYPE_TOPLVL, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, i32, i8*, i8*, i64, ...) @xsnprintf(i8* %64, i32 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %67, i64 %71)
  %73 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %74 = trunc i64 %14 to i32
  %75 = call i32 @xstrlcat(i8* %16, i8* %73, i32 %74)
  br label %76

76:                                               ; preds = %63, %42
  %77 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gopt, i32 0, i32 1), align 8
  %78 = load i64, i64* @AMU_TYPE_TOPLVL, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %84 = load i32, i32* @MNTTAB_OPT_RETRANS, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gopt, i32 0, i32 1), align 8
  %88 = load i64, i64* @AMU_TYPE_TOPLVL, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i8*, i32, i8*, i8*, i64, ...) @xsnprintf(i8* %83, i32 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %86, i64 %90)
  %92 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %93 = trunc i64 %14 to i32
  %94 = call i32 @xstrlcat(i8* %16, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %82, %76
  %96 = trunc i64 %18 to i32
  %97 = call i32 @set_auto_attrcache_timeout(i8* %19, i8* %16, i32 %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = call i32 @amfs_mount(%struct.TYPE_11__* %98, %struct.TYPE_10__* %99, i8* %16)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* @errno, align 4
  %105 = load i32, i32* @XLOG_FATAL, align 4
  %106 = call i32 (i32, i8*, ...) @plog(i32 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

108:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %108, %103, %34, %25
  %110 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @stat(i32, %struct.stat*) #2

declare dso_local i32 @plog(i32, i8*, ...) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*, i64, ...) #2

declare dso_local i32 @xstrlcat(i8*, i8*, i32) #2

declare dso_local i32 @set_auto_attrcache_timeout(i8*, i8*, i32) #2

declare dso_local i32 @amfs_mount(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
