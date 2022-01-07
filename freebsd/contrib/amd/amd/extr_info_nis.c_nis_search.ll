; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_nis_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_nis_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@gopt = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@has_yp_order = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CFM_SUN_MAP_SYNTAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"nis_search: %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nis_search(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gopt, i32 0, i32 0), align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %5
  %20 = call i32 (...) @determine_nis_domain()
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %6, align 4
  br label %118

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %5
  %27 = load i32, i32* @has_yp_order, align 4
  switch i32 %27, label %60 [
    i32 1, label %28
    i32 0, label %46
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gopt, i32 0, i32 0), align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @yp_order(i32 %29, i8* %30, i32* %14)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @EIO, align 4
  store i32 %34, i32* %6, align 4
  br label %118

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64*, i64** %11, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %11, align 8
  store i64 %43, i64* %44, align 8
  store i32 -1, i32* %6, align 4
  br label %118

45:                                               ; preds = %35
  br label %68

46:                                               ; preds = %26
  %47 = call i32 @time(i32* null)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %49, %51
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gopt, i32 0, i32 1), align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %11, align 8
  store i64 %57, i64* %58, align 8
  store i32 -1, i32* %6, align 4
  br label %118

59:                                               ; preds = %46
  br label %68

60:                                               ; preds = %26
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @nis_isup(%struct.TYPE_7__* %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %118

66:                                               ; preds = %60
  %67 = load i32, i32* @EIO, align 4
  store i32 %67, i32* %6, align 4
  br label %118

68:                                               ; preds = %59, %45
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gopt, i32 0, i32 0), align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = load i8**, i8*** %10, align 8
  %75 = call i32 @yp_match(i32 %69, i8* %70, i8* %71, i32 %73, i8** %74, i32* %12)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = icmp ne %struct.TYPE_6__* %78, null
  br i1 %79, label %80, label %106

80:                                               ; preds = %68
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CFM_SUN_MAP_SYNTAX, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %80
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load i8**, i8*** %10, align 8
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %16, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = call i8* @sun_entry2amd(i8* %95, i8* %96)
  %98 = load i8**, i8*** %10, align 8
  store i8* %97, i8** %98, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 @XFREE(i8* %99)
  %101 = load i8**, i8*** %10, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  store i32 -1, i32* %6, align 4
  br label %118

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105, %89, %80, %68
  %107 = load i32, i32* %13, align 4
  switch i32 %107, label %111 [
    i32 0, label %108
    i32 128, label %109
  ]

108:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %118

109:                                              ; preds = %106
  %110 = load i32, i32* @ENOENT, align 4
  store i32 %110, i32* %6, align 4
  br label %118

111:                                              ; preds = %106
  %112 = load i32, i32* @XLOG_ERROR, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @yperr_string(i32 %114)
  %116 = call i32 @plog(i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %113, i32 %115)
  %117 = load i32, i32* @EIO, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %111, %109, %108, %104, %66, %65, %55, %41, %33, %23
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @determine_nis_domain(...) #1

declare dso_local i32 @yp_order(i32, i8*, i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @nis_isup(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @yp_match(i32, i8*, i8*, i32, i8**, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @sun_entry2amd(i8*, i8*) #1

declare dso_local i32 @XFREE(i8*) #1

declare dso_local i32 @plog(i32, i8*, i8*, i32) #1

declare dso_local i32 @yperr_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
