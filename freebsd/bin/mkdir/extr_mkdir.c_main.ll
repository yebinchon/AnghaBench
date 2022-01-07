; ModuleID = '/home/carl/AnghaBench/freebsd/bin/mkdir/extr_mkdir.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/mkdir/extr_mkdir.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"m:pv\00", align 1
@optarg = common dso_local global i8* null, align 8
@vflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid file mode: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %12, align 8
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %25 [
    i32 109, label %20
    i32 112, label %22
    i32 118, label %23
    i32 63, label %24
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** %12, align 8
  br label %27

22:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %27

23:                                               ; preds = %18
  store i32 1, i32* @vflag, align 4
  br label %27

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %18, %24
  %26 = call i32 (...) @usage()
  br label %27

27:                                               ; preds = %25, %23, %22, %20
  br label %13

28:                                               ; preds = %13
  %29 = load i64, i64* @optind, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load i64, i64* @optind, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 %34
  store i8** %36, i8*** %5, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %28
  %44 = load i8*, i8** %12, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* @S_IRWXU, align 4
  %48 = load i32, i32* @S_IRWXG, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @S_IRWXO, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %10, align 4
  br label %69

52:                                               ; preds = %43
  %53 = load i8*, i8** %12, align 8
  %54 = call i8* @setmode(i8* %53)
  store i8* %54, i8** %11, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* @S_IRWXU, align 4
  %62 = load i32, i32* @S_IRWXG, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @S_IRWXO, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @getmode(i8* %60, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @free(i8* %67)
  br label %69

69:                                               ; preds = %59, %46
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %136, %69
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %139

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @build(i8* %79, i32 %80)
  store i32 %81, i32* %8, align 4
  br label %115

82:                                               ; preds = %74
  %83 = load i8**, i8*** %5, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @mkdir(i8* %84, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load i64, i64* @errno, align 8
  %90 = load i64, i64* @ENOTDIR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @ENOENT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92, %88
  %97 = load i8**, i8*** %5, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @dirname(i8* %98)
  %100 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  br label %105

101:                                              ; preds = %92
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %101, %96
  store i32 0, i32* %8, align 4
  br label %114

106:                                              ; preds = %82
  store i32 1, i32* %8, align 4
  %107 = load i32, i32* @vflag, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i8**, i8*** %5, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %109, %106
  br label %114

114:                                              ; preds = %113, %105
  br label %115

115:                                              ; preds = %114, %77
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  store i32 1, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load i8*, i8** %12, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i8**, i8*** %5, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @chmod(i8* %127, i32 %128)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i8**, i8*** %5, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %133)
  store i32 1, i32* %7, align 4
  br label %135

135:                                              ; preds = %131, %125, %122, %119
  br label %136

136:                                              ; preds = %135
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i32 1
  store i8** %138, i8*** %5, align 8
  br label %70

139:                                              ; preds = %70
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @exit(i32 %140) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @setmode(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @getmode(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @build(i8*, i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @chmod(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
