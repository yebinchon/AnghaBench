; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_exec.c_exec_parse_qanswer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_exec.c_exec_parse_qanswer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@INFO_MAX_LINE_LEN = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"line %d in \22%s\22 is too long\00", align 1
@CFM_SUN_MAP_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s returns %s\00", align 1
@gopt = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8*, i8*, i8**, i32*)* @exec_parse_qanswer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_parse_qanswer(%struct.TYPE_6__* %0, i32 %1, i8* %2, i8* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* @INFO_MAX_LINE_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %27

27:                                               ; preds = %134, %6
  %28 = trunc i64 %24 to i32
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @read_line(i8* %26, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %135

32:                                               ; preds = %27
  %33 = call i32 @strlen(i8* %26)
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %18, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %21, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %26, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 10
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i32, i32* @XLOG_WARNING, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @plog(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %46)
  store i32 1, i32* %17, align 4
  br label %53

48:                                               ; preds = %32
  %49 = load i32, i32* %21, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %26, i64 %51
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %48, %43
  %54 = call i8* @strchr(i8* %26, i8 signext 35)
  store i8* %54, i8** %20, align 8
  %55 = load i8*, i8** %20, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** %20, align 8
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %53
  store i8* %26, i8** %19, align 8
  br label %60

60:                                               ; preds = %79, %59
  %61 = load i8*, i8** %19, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i8*, i8** %19, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @isascii(i8 zeroext %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %19, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @isspace(i8 zeroext %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %70, %65, %60
  %77 = phi i1 [ false, %65 ], [ false, %60 ], [ %75, %70 ]
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %19, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %19, align 8
  br label %60

82:                                               ; preds = %76
  %83 = load i8*, i8** %19, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %116

87:                                               ; preds = %82
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = icmp ne %struct.TYPE_5__* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CFM_SUN_MAP_SYNTAX, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load i8*, i8** %11, align 8
  %103 = load i8*, i8** %19, align 8
  %104 = call i8* @sun_entry2amd(i8* %102, i8* %103)
  store i8* %104, i8** %16, align 8
  br label %108

105:                                              ; preds = %92, %87
  %106 = load i8*, i8** %19, align 8
  %107 = call i8* @xstrdup(i8* %106)
  store i8* %107, i8** %16, align 8
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i8*, i8** %16, align 8
  %110 = load i8**, i8*** %12, align 8
  store i8* %109, i8** %110, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 @dlog(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %111, i8* %112)
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @close(i32 %114)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %137

116:                                              ; preds = %86
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %132, %119
  %121 = trunc i64 %24 to i32
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gopt, i32 0, i32 0), align 4
  %124 = call i64 @fgets_timed(i8* %26, i32 %121, i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = call i8* @strchr(i8* %26, i8 signext 10)
  %128 = icmp ne i8* %127, null
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %126, %120
  %131 = phi i1 [ false, %120 ], [ %129, %126 ]
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  br label %120

133:                                              ; preds = %130
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %133, %116
  br label %27

135:                                              ; preds = %27
  %136 = load i32, i32* @ENOENT, align 4
  store i32 %136, i32* %7, align 4
  store i32 1, i32* %22, align 4
  br label %137

137:                                              ; preds = %135, %108
  %138 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @read_line(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @plog(i32, i8*, i32, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @isascii(i8 zeroext) #2

declare dso_local i32 @isspace(i8 zeroext) #2

declare dso_local i8* @sun_entry2amd(i8*, i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @dlog(i8*, i8*, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @fgets_timed(i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
