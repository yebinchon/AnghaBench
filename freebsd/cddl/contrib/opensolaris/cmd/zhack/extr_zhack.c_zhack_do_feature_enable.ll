; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zhack/extr_zhack.c_zhack_do_feature_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zhack/extr_zhack.c_zhack_do_feature_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i64, i32, i32* }

@SPA_FEATURE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"zhack\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"rmd:\00", align 1
@ZFEATURE_FLAG_READONLY_COMPAT = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"zhack injected\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"error: missing feature or pool name\0A\00", align 1
@FTAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid feature guid: %s\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"'%s' is a real feature, will not enable\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"feature already enabled: %s\00", align 1
@zhack_feature_enable_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @zhack_do_feature_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zhack_do_feature_enable(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca [1 x i32], align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %13 = load i32, i32* @SPA_FEATURE_NONE, align 4
  store i32 %13, i32* %12, align 4
  store i8* null, i8** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 5
  store i32* %16, i32** %17, align 8
  %18 = load i32, i32* @SPA_FEATURE_NONE, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  store i32 1, i32* @optind, align 4
  br label %20

20:                                               ; preds = %39, %2
  %21 = load i32, i32* %3, align 4
  %22 = load i8**, i8*** %4, align 8
  %23 = call signext i8 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8 %23, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load i8, i8* %5, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %37 [
    i32 114, label %29
    i32 100, label %34
  ]

29:                                               ; preds = %26
  %30 = load i64, i64* @ZFEATURE_FLAG_READONLY_COMPAT, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = or i64 %32, %30
  store i64 %33, i64* %31, align 8
  br label %39

34:                                               ; preds = %26
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i8* @strdup(i8* %35)
  store i8* %36, i8** %6, align 8
  br label %39

37:                                               ; preds = %26
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %34, %29
  br label %20

40:                                               ; preds = %20
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i8* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* @optind, align 4
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @optind, align 4
  %52 = load i8**, i8*** %4, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  store i8** %54, i8*** %4, align 8
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 (...) @usage()
  br label %61

61:                                               ; preds = %57, %45
  %62 = load i8**, i8*** %4, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %7, align 8
  %65 = load i8**, i8*** %4, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @zfeature_is_valid_guid(i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* @FTAG, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @fatal(%struct.TYPE_9__* null, i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %73, %61
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* @B_FALSE, align 4
  %81 = load i32, i32* @FTAG, align 4
  %82 = call i32 @zhack_spa_open(i8* %79, i32 %80, i32 %81, %struct.TYPE_9__** %8)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @zfeature_is_supported(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = load i32, i32* @FTAG, align 4
  %93 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @fatal(%struct.TYPE_9__* %91, i32 %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %78
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @zap_contains(i32* %95, i32 %98, i8* %100)
  %102 = icmp eq i64 0, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = load i32, i32* @FTAG, align 4
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @fatal(%struct.TYPE_9__* %104, i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %103, %94
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = call i32 @spa_name(%struct.TYPE_9__* %110)
  %112 = load i32, i32* @zhack_feature_enable_sync, align 4
  %113 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %114 = call i32 @dsl_sync_task(i32 %111, i32* null, i32 %112, %struct.TYPE_8__* %10, i32 5, i32 %113)
  %115 = call i32 @VERIFY0(i32 %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %117 = load i32, i32* @FTAG, align 4
  %118 = call i32 @spa_close(%struct.TYPE_9__* %116, i32 %117)
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @free(i8* %119)
  ret void
}

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @zfeature_is_valid_guid(i8*) #1

declare dso_local i32 @fatal(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @zhack_spa_open(i8*, i32, i32, %struct.TYPE_9__**) #1

declare dso_local i64 @zfeature_is_supported(i8*) #1

declare dso_local i64 @zap_contains(i32*, i32, i8*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_sync_task(i32, i32*, i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_9__*) #1

declare dso_local i32 @spa_close(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
