; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_read_script_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_read_script_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_desc = type { i8*, i8* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"description:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"args:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.script_desc*, i8*)* @read_script_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_script_info(%struct.script_desc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.script_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.script_desc* %0, %struct.script_desc** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @BUFSIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %103, %93, %78, %49, %37, %31, %20
  %22 = trunc i64 %12 to i32
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @fgets(i8* %14, i32 %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %104

26:                                               ; preds = %21
  %27 = call i8* @ltrim(i8* %14)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %21

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %21

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 33
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %21

50:                                               ; preds = %44, %38
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @ltrim(i8* %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %66, %56, %50
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @strncmp(i8* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i8*, i8** %8, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i8* @ltrim(i8* %83)
  %85 = call i8* @strdup(i8* %84)
  %86 = load %struct.script_desc*, %struct.script_desc** %4, align 8
  %87 = getelementptr inbounds %struct.script_desc, %struct.script_desc* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %21

88:                                               ; preds = %73
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %91 = call i32 @strncmp(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i8*, i8** %8, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i8* @ltrim(i8* %98)
  %100 = call i8* @strdup(i8* %99)
  %101 = load %struct.script_desc*, %struct.script_desc** %4, align 8
  %102 = getelementptr inbounds %struct.script_desc, %struct.script_desc* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %21

103:                                              ; preds = %88
  br label %21

104:                                              ; preds = %21
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @fclose(i32* %105)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %104, %19
  %108 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i8* @ltrim(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
