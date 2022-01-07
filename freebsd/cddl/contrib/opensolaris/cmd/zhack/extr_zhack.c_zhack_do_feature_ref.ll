; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zhack/extr_zhack.c_zhack_do_feature_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zhack/extr_zhack.c_zhack_do_feature_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { i8*, i8*, i32, i32, i32*, i32* }

@B_FALSE = common dso_local global i64 0, align 8
@SPA_FEATURE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"zhack\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@ZFEATURE_FLAG_MOS = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"error: missing feature or pool name\0A\00", align 1
@FTAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid feature guid: %s\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"'%s' is a real feature, will not change refcount\00", align 1
@ZFEATURE_FLAG_READONLY_COMPAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"feature is not enabled: %s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"feature refcount already 0: %s\00", align 1
@feature_decr_sync = common dso_local global i32 0, align 4
@feature_incr_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @zhack_do_feature_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zhack_do_feature_ref(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca [1 x i32], align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = load i64, i64* @B_FALSE, align 8
  store i64 %13, i64* %7, align 8
  %14 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %15 = load i32, i32* @SPA_FEATURE_NONE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* @SPA_FEATURE_NONE, align 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  store i32 1, i32* @optind, align 4
  br label %23

23:                                               ; preds = %41, %2
  %24 = load i32, i32* %3, align 4
  %25 = load i8**, i8*** %4, align 8
  %26 = call signext i8 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8 %26, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i8, i8* %5, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %39 [
    i32 109, label %32
    i32 100, label %37
  ]

32:                                               ; preds = %29
  %33 = load i32, i32* @ZFEATURE_FLAG_MOS, align 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 8
  br label %41

37:                                               ; preds = %29
  %38 = load i64, i64* @B_TRUE, align 8
  store i64 %38, i64* %7, align 8
  br label %41

39:                                               ; preds = %29
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %37, %32
  br label %23

42:                                               ; preds = %23
  %43 = load i32, i32* @optind, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @optind, align 4
  %47 = load i8**, i8*** %4, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  store i8** %49, i8*** %4, align 8
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %52, %42
  %57 = load i8**, i8*** %4, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %6, align 8
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @zfeature_is_valid_guid(i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* @FTAG, align 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @fatal(%struct.TYPE_11__* null, i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %68, %56
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* @B_FALSE, align 8
  %76 = load i32, i32* @FTAG, align 4
  %77 = call i32 @zhack_spa_open(i8* %74, i64 %75, i32 %76, %struct.TYPE_11__** %8)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @zfeature_is_supported(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %73
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = load i32, i32* @FTAG, align 4
  %88 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @fatal(%struct.TYPE_11__* %86, i32 %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %73
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @zap_contains(i32* %90, i32 %93, i8* %95)
  %97 = icmp eq i64 0, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load i32, i32* @ZFEATURE_FLAG_READONLY_COMPAT, align 4
  %100 = xor i32 %99, -1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %100
  store i32 %103, i32* %101, align 8
  br label %125

104:                                              ; preds = %89
  %105 = load i32*, i32** %9, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @zap_contains(i32* %105, i32 %108, i8* %110)
  %112 = icmp eq i64 0, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load i32, i32* @ZFEATURE_FLAG_READONLY_COMPAT, align 4
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 8
  br label %124

118:                                              ; preds = %104
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %120 = load i32, i32* @FTAG, align 4
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @fatal(%struct.TYPE_11__* %119, i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %118, %113
  br label %125

125:                                              ; preds = %124, %98
  %126 = load i64, i64* %7, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = call i64 @feature_get_refcount_from_disk(%struct.TYPE_11__* %129, %struct.TYPE_10__* %10, i64* %12)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load i64, i64* %12, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %137 = load i32, i32* @FTAG, align 4
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @fatal(%struct.TYPE_11__* %136, i32 %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %135, %132, %128
  br label %142

142:                                              ; preds = %141, %125
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %144 = call i32 @spa_name(%struct.TYPE_11__* %143)
  %145 = load i64, i64* %7, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @feature_decr_sync, align 4
  br label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @feature_incr_sync, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  %153 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %154 = call i32 @dsl_sync_task(i32 %144, i32* null, i32 %152, %struct.TYPE_10__* %10, i32 5, i32 %153)
  %155 = call i32 @VERIFY0(i32 %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %157 = load i32, i32* @FTAG, align 4
  %158 = call i32 @spa_close(%struct.TYPE_11__* %156, i32 %157)
  ret void
}

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @zfeature_is_valid_guid(i8*) #1

declare dso_local i32 @fatal(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @zhack_spa_open(i8*, i64, i32, %struct.TYPE_11__**) #1

declare dso_local i64 @zfeature_is_supported(i8*) #1

declare dso_local i64 @zap_contains(i32*, i32, i8*) #1

declare dso_local i64 @feature_get_refcount_from_disk(%struct.TYPE_11__*, %struct.TYPE_10__*, i64*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_sync_task(i32, i32*, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_11__*) #1

declare dso_local i32 @spa_close(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
