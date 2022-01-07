; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_srcpos.c_dtc_open_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_srcpos.c_dtc_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.search_path = type { %struct.search_path*, i32, i32*, i32*, i32* }
%struct.dtc_file = type { i8*, i8*, i32 }

@dtc_open_file.default_search = internal constant %struct.search_path zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Couldn't open \22%s\22: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dtc_file* @dtc_open_file(i8* %0, %struct.search_path* %1) #0 {
  %3 = alloca %struct.dtc_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.search_path*, align 8
  %6 = alloca %struct.dtc_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.search_path* %1, %struct.search_path** %5, align 8
  %9 = call i8* @xmalloc(i32 24)
  %10 = bitcast i8* %9 to %struct.dtc_file*
  store %struct.dtc_file* %10, %struct.dtc_file** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strrchr(i8* %11, i8 signext 47)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = add nsw i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = call i8* @xmalloc(i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memcpy(i8* %24, i8* %25, i32 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  %42 = getelementptr inbounds %struct.dtc_file, %struct.dtc_file* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %46

43:                                               ; preds = %2
  %44 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  %45 = getelementptr inbounds %struct.dtc_file, %struct.dtc_file* %44, i32 0, i32 0
  store i8* null, i8** %45, align 8
  br label %46

46:                                               ; preds = %43, %15
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @streq(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  %52 = getelementptr inbounds %struct.dtc_file, %struct.dtc_file* %51, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load i32, i32* @stdin, align 4
  %54 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  %55 = getelementptr inbounds %struct.dtc_file, %struct.dtc_file* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  store %struct.dtc_file* %56, %struct.dtc_file** %3, align 8
  br label %112

57:                                               ; preds = %46
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @fopen(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  %67 = getelementptr inbounds %struct.dtc_file, %struct.dtc_file* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  %69 = getelementptr inbounds %struct.dtc_file, %struct.dtc_file* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %107

73:                                               ; preds = %63
  %74 = load i8*, i8** %4, align 8
  %75 = call i8* @strdup(i8* %74)
  %76 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  %77 = getelementptr inbounds %struct.dtc_file, %struct.dtc_file* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  store %struct.dtc_file* %78, %struct.dtc_file** %3, align 8
  br label %112

79:                                               ; preds = %57
  %80 = load %struct.search_path*, %struct.search_path** %5, align 8
  %81 = icmp ne %struct.search_path* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store %struct.search_path* @dtc_open_file.default_search, %struct.search_path** %5, align 8
  br label %83

83:                                               ; preds = %82, %79
  br label %84

84:                                               ; preds = %102, %83
  %85 = load %struct.search_path*, %struct.search_path** %5, align 8
  %86 = icmp ne %struct.search_path* %85, null
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  %89 = load %struct.search_path*, %struct.search_path** %5, align 8
  %90 = getelementptr inbounds %struct.search_path, %struct.search_path* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = call i64 @dtc_open_one(%struct.dtc_file* %88, i32 %91, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load %struct.dtc_file*, %struct.dtc_file** %6, align 8
  store %struct.dtc_file* %96, %struct.dtc_file** %3, align 8
  br label %112

97:                                               ; preds = %87
  %98 = load i64, i64* @errno, align 8
  %99 = load i64, i64* @ENOENT, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %107

102:                                              ; preds = %97
  %103 = load %struct.search_path*, %struct.search_path** %5, align 8
  %104 = getelementptr inbounds %struct.search_path, %struct.search_path* %103, i32 0, i32 0
  %105 = load %struct.search_path*, %struct.search_path** %104, align 8
  store %struct.search_path* %105, %struct.search_path** %5, align 8
  br label %84

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %106, %101, %72
  %108 = load i8*, i8** %4, align 8
  %109 = load i64, i64* @errno, align 8
  %110 = call i32 @strerror(i64 %109)
  %111 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %108, i32 %110)
  br label %112

112:                                              ; preds = %107, %95, %73, %50
  %113 = load %struct.dtc_file*, %struct.dtc_file** %3, align 8
  ret %struct.dtc_file* %113
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @dtc_open_one(%struct.dtc_file*, i32, i8*) #1

declare dso_local i32 @die(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
