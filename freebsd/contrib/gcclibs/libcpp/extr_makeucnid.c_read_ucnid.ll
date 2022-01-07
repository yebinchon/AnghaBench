; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_makeucnid.c_read_ucnid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_makeucnid.c_read_ucnid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"opening ucnid.tab\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"[C99]\0A\00", align 1
@C99 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"[CXX]\0A\00", align 1
@CXX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"parsing ucnid.tab [1]\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"parsing ucnid.tab, end before start\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"parsing ucnid.tab, junk after range\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"parsing ucnid.tab, end too large\00", align 1
@flags = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"reading ucnid.tab\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_ucnid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_ucnid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  br label %17

17:                                               ; preds = %121, %16
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @fgets(i8* %18, i32 256, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %122

23:                                               ; preds = %17
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @C99, align 4
  store i32 %28, i32* %4, align 4
  br label %121

29:                                               ; preds = %23
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @CXX, align 4
  store i32 %34, i32* %4, align 4
  br label %120

35:                                               ; preds = %29
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = call i64 @isxdigit(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %119

40:                                               ; preds = %35
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %117, %40
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %118

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strtoul(i8* %47, i8** %9, i32 16)
  store i64 %48, i64* %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 45
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isspace(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57, %46
  %63 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57, %52
  %65 = load i8*, i8** %9, align 8
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 45
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i64, i64* %7, align 8
  store i64 %71, i64* %8, align 8
  br label %90

72:                                               ; preds = %64
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = call i64 @strtoul(i8* %74, i8** %9, i32 16)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %72
  %82 = load i8*, i8** %9, align 8
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isspace(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %81
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %96, %90
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isspace(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %6, align 8
  br label %91

99:                                               ; preds = %91
  %100 = load i64, i64* %8, align 8
  %101 = icmp ugt i64 %100, 65535
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 @fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %99
  br label %105

105:                                              ; preds = %109, %104
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp ule i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i32, i32* %4, align 4
  %111 = load i32*, i32** @flags, align 8
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %7, align 8
  %114 = getelementptr inbounds i32, i32* %111, i64 %112
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %110
  store i32 %116, i32* %114, align 4
  br label %105

117:                                              ; preds = %105
  br label %42

118:                                              ; preds = %42
  br label %119

119:                                              ; preds = %118, %35
  br label %120

120:                                              ; preds = %119, %33
  br label %121

121:                                              ; preds = %120, %27
  br label %17

122:                                              ; preds = %22
  %123 = load i32*, i32** %3, align 8
  %124 = call i64 @ferror(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %122
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @fclose(i32* %129)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
