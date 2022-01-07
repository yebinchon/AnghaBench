; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_addelem_tty.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_addelem_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listinfo = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.stat = type { i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"co\00", align 1
@_PATH_CONSOLE = common dso_local global i8* null, align 8
@_PATH_DEV = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i32 0, align 4
@_PATH_PTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s, %s, and %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@optfatal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s, %s, and %s: Not a terminal\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: Not a terminal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.listinfo*, i8*)* @addelem_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addelem_tty(%struct.listinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.listinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.listinfo* %0, %struct.listinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  store i8* null, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %23, align 16
  %24 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %24, align 16
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %37 [
    i32 47, label %28
    i32 99, label %30
  ]

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  store i8* %29, i8** %6, align 8
  br label %93

30:                                               ; preds = %2
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i8*, i8** @_PATH_CONSOLE, align 8
  store i8* %35, i8** %6, align 8
  br label %93

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %2, %36
  %38 = load i32, i32* @_PATH_DEV, align 4
  %39 = trunc i64 %14 to i32
  %40 = call i32 @strlcpy(i8* %16, i32 %38, i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = trunc i64 %14 to i32
  %43 = call i32 @strlcat(i8* %16, i8* %41, i32 %42)
  store i8* %16, i8** %6, align 8
  %44 = load i32, i32* @_PATH_TTY, align 4
  %45 = load i32, i32* @_PATH_TTY, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = call i32 @strncmp(i8* %16, i32 %44, i32 %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %93

50:                                               ; preds = %37
  %51 = load i32, i32* @_PATH_PTS, align 4
  %52 = load i32, i32* @_PATH_PTS, align 4
  %53 = call i32 @strlen(i32 %52)
  %54 = call i32 @strncmp(i8* %16, i32 %51, i32 %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %93

57:                                               ; preds = %50
  %58 = load i8*, i8** @_PATH_CONSOLE, align 8
  %59 = call i32 @strcmp(i8* %16, i8* %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %93

62:                                               ; preds = %57
  %63 = load i32, i32* @_PATH_TTY, align 4
  %64 = trunc i64 %18 to i32
  %65 = call i32 @strlcpy(i8* %19, i32 %63, i32 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = trunc i64 %18 to i32
  %68 = call i32 @strlcat(i8* %19, i8* %66, i32 %67)
  %69 = call i32 @stat(i8* %19, %struct.stat* %7)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @S_ISCHR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i8* null, i8** %6, align 8
  br label %93

77:                                               ; preds = %71, %62
  %78 = load i32, i32* @_PATH_PTS, align 4
  %79 = trunc i64 %21 to i32
  %80 = call i32 @strlcpy(i8* %22, i32 %78, i32 %79)
  %81 = load i8*, i8** %5, align 8
  %82 = trunc i64 %21 to i32
  %83 = call i32 @strlcat(i8* %22, i8* %81, i32 %82)
  %84 = call i32 @stat(i8* %22, %struct.stat* %7)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @S_ISCHR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i8* null, i8** %6, align 8
  br label %93

92:                                               ; preds = %86, %77
  br label %93

93:                                               ; preds = %92, %91, %76, %61, %56, %49, %34, %28
  %94 = load i8*, i8** %6, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %130

96:                                               ; preds = %93
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @stat(i8* %97, %struct.stat* %7)
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, i8* %22, i64 0
  %102 = load i8, i8* %101, align 16
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 (i8*, i8*, ...) @xo_warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %19, i8* %106)
  br label %111

108:                                              ; preds = %100
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 (i8*, i8*, ...) @xo_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %108, %105
  store i32 1, i32* @optfatal, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %153

112:                                              ; preds = %96
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @S_ISCHR(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds i8, i8* %22, i64 0
  %119 = load i8, i8* %118, align 16
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 (i8*, i8*, ...) @xo_warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %22, i8* %19, i8* %123)
  br label %128

125:                                              ; preds = %117
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 (i8*, i8*, ...) @xo_warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %125, %122
  store i32 1, i32* @optfatal, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %153

129:                                              ; preds = %112
  br label %130

130:                                              ; preds = %129, %93
  %131 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %132 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %135 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %140 = call i32 @expand_list(%struct.listinfo* %139)
  br label %141

141:                                              ; preds = %138, %130
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %145 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.listinfo*, %struct.listinfo** %4, align 8
  %149 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %143, i32* %152, align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %153

153:                                              ; preds = %141, %128, %111
  %154 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISCHR(i32) #2

declare dso_local i32 @xo_warn(i8*, i8*, ...) #2

declare dso_local i32 @xo_warnx(i8*, i8*, ...) #2

declare dso_local i32 @expand_list(%struct.listinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
