; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_parse_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_parse_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_NO_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@SEC_LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"noload\00", align 1
@SEC_NEVER_LOAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@SEC_READONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@SEC_CODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@SEC_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"rom\00", align 1
@SEC_ROM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"share\00", align 1
@SEC_COFF_SHARED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"unrecognized section flag `%s'\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"supported flags: %s\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"alloc, load, noload, readonly, debug, code, data, rom, share, contents\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @SEC_NO_FLAGS, align 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %153, %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 44)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %5, align 4
  br label %25

16:                                               ; preds = %8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %16, %13
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26, i64 %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @SEC_ALLOC, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %151

35:                                               ; preds = %25
  %36 = load i8*, i8** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %36, i64 %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @SEC_LOAD, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %150

45:                                               ; preds = %35
  %46 = load i8*, i8** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %46, i64 %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @SEC_NEVER_LOAD, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %149

55:                                               ; preds = %45
  %56 = load i8*, i8** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32 @strncasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %56, i64 %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @SEC_READONLY, align 4
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %148

65:                                               ; preds = %55
  %66 = load i8*, i8** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %66, i64 %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @SEC_DEBUGGING, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %147

75:                                               ; preds = %65
  %76 = load i8*, i8** %2, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %76, i64 %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @SEC_CODE, align 4
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %146

85:                                               ; preds = %75
  %86 = load i8*, i8** %2, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = call i32 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %86, i64 %88)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, i32* @SEC_DATA, align 4
  %93 = load i32, i32* %3, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %3, align 4
  br label %145

95:                                               ; preds = %85
  %96 = load i8*, i8** %2, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = call i32 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %96, i64 %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @SEC_ROM, align 4
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  br label %144

105:                                              ; preds = %95
  %106 = load i8*, i8** %2, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = call i32 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %106, i64 %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* @SEC_COFF_SHARED, align 4
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  br label %143

115:                                              ; preds = %105
  %116 = load i8*, i8** %2, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = call i32 @strncasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %116, i64 %118)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %123 = load i32, i32* %3, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %3, align 4
  br label %142

125:                                              ; preds = %115
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  %128 = call i8* @xmalloc(i32 %127)
  store i8* %128, i8** %6, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i8*, i8** %2, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @strncpy(i8* %129, i8* %130, i32 %131)
  %133 = load i8*, i8** %6, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 0, i8* %136, align 1
  %137 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @non_fatal(i32 %137, i8* %138)
  %140 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %141 = call i32 @fatal(i32 %140, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0))
  br label %142

142:                                              ; preds = %125, %121
  br label %143

143:                                              ; preds = %142, %111
  br label %144

144:                                              ; preds = %143, %101
  br label %145

145:                                              ; preds = %144, %91
  br label %146

146:                                              ; preds = %145, %81
  br label %147

147:                                              ; preds = %146, %71
  br label %148

148:                                              ; preds = %147, %61
  br label %149

149:                                              ; preds = %148, %51
  br label %150

150:                                              ; preds = %149, %41
  br label %151

151:                                              ; preds = %150, %31
  %152 = load i8*, i8** %4, align 8
  store i8* %152, i8** %2, align 8
  br label %153

153:                                              ; preds = %151
  %154 = load i8*, i8** %2, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %8, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @non_fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fatal(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
