; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_handle_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_handle_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }

@RETURN_DATAERR = common dso_local global i32 0, align 4
@ET_CORE = common dso_local global i64 0, align 8
@style = common dso_local global i64 0, align 8
@STYLE_SYSV = common dso_local global i64 0, align 8
@PT_NOTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"note\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"interp\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"shlib\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"phdr\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"eh_frame_hdr\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"segment\00", align 1
@STYLE_BERKELEY = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"core file invoked as\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"core file\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c" (core file invoked as %s)\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c" (core file)\0A\0A\00", align 1
@RETURN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_10__*)* @handle_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_core(i8* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = icmp eq %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14, %3
  %21 = load i32, i32* @RETURN_DATAERR, align 4
  store i32 %21, i32* %4, align 4
  br label %122

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ET_CORE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %22
  %34 = load i32, i32* @RETURN_DATAERR, align 4
  store i32 %34, i32* %4, align 4
  br label %122

35:                                               ; preds = %27
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %36 = load i64, i64* @style, align 8
  %37 = load i64, i64* @STYLE_SYSV, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @sysv_header(i8* %40, i32* null)
  br label %44

42:                                               ; preds = %35
  %43 = call i32 (...) @berkeley_header()
  br label %44

44:                                               ; preds = %42, %39
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %89, %44
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %45
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32* @gelf_getphdr(i32* %52, i64 %53, %struct.TYPE_9__* %8)
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %88

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PT_NOTE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @handle_phdr(i32* %62, %struct.TYPE_10__* %63, %struct.TYPE_9__* %8, i64 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = call i32 @handle_core_note(i32* %66, %struct.TYPE_10__* %67, %struct.TYPE_9__* %8, i8** %10)
  br label %87

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %80 [
    i32 130, label %72
    i32 131, label %73
    i32 135, label %74
    i32 132, label %75
    i32 128, label %76
    i32 129, label %77
    i32 134, label %78
    i32 133, label %79
  ]

72:                                               ; preds = %69
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %81

73:                                               ; preds = %69
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %81

74:                                               ; preds = %69
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %81

75:                                               ; preds = %69
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %81

76:                                               ; preds = %69
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %81

77:                                               ; preds = %69
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %81

78:                                               ; preds = %69
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %81

79:                                               ; preds = %69
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %81

80:                                               ; preds = %69
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %11, align 8
  br label %81

81:                                               ; preds = %80, %79, %78, %77, %76, %75, %74, %73, %72
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @handle_phdr(i32* %82, %struct.TYPE_10__* %83, %struct.TYPE_9__* %8, i64 %84, i8* %85)
  br label %87

87:                                               ; preds = %81, %61
  br label %88

88:                                               ; preds = %87, %51
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %45

92:                                               ; preds = %45
  %93 = load i64, i64* @style, align 8
  %94 = load i64, i64* @STYLE_BERKELEY, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load i8*, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i8*, i8** %10, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @berkeley_footer(i8* %100, i8* %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %107

103:                                              ; preds = %96
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @berkeley_footer(i8* %104, i8* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %99
  br label %118

108:                                              ; preds = %92
  %109 = call i32 (...) @sysv_footer()
  %110 = load i8*, i8** %10, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %113)
  br label %117

115:                                              ; preds = %108
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  br label %118

118:                                              ; preds = %117, %107
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i32, i32* @RETURN_OK, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %33, %20
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @sysv_header(i8*, i32*) #1

declare dso_local i32 @berkeley_header(...) #1

declare dso_local i32* @gelf_getphdr(i32*, i64, %struct.TYPE_9__*) #1

declare dso_local i32 @handle_phdr(i32*, %struct.TYPE_10__*, %struct.TYPE_9__*, i64, i8*) #1

declare dso_local i32 @handle_core_note(i32*, %struct.TYPE_10__*, %struct.TYPE_9__*, i8**) #1

declare dso_local i32 @berkeley_footer(i8*, i8*, i8*) #1

declare dso_local i32 @sysv_footer(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
