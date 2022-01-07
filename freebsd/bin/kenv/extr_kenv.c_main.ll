; ModuleID = '/home/carl/AnghaBench/freebsd/bin/kenv/extr_kenv.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/kenv/extr_kenv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hNquv\00", align 1
@hflag = common dso_local global i64 0, align 8
@Nflag = common dso_local global i64 0, align 8
@qflag = common dso_local global i32 0, align 4
@uflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"kdumpenv\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unable to unset %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unable to get %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"unable to set %s to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %6, align 8
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %33 [
    i32 104, label %18
    i32 78, label %21
    i32 113, label %24
    i32 117, label %27
    i32 118, label %30
  ]

18:                                               ; preds = %16
  %19 = load i64, i64* @hflag, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @hflag, align 8
  br label %35

21:                                               ; preds = %16
  %22 = load i64, i64* @Nflag, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @Nflag, align 8
  br label %35

24:                                               ; preds = %16
  %25 = load i32, i32* @qflag, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @qflag, align 4
  br label %35

27:                                               ; preds = %16
  %28 = load i64, i64* @uflag, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @uflag, align 8
  br label %35

30:                                               ; preds = %16
  %31 = load i64, i64* @vflag, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @vflag, align 8
  br label %35

33:                                               ; preds = %16
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %30, %27, %24, %21, %18
  br label %11

36:                                               ; preds = %11
  %37 = load i64, i64* @optind, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %36
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 61)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  store i8 0, i8* %56, align 1
  %58 = load i8*, i8** %7, align 8
  store i8* %58, i8** %8, align 8
  br label %59

59:                                               ; preds = %55, %47
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %5, align 8
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %36
  %65 = load i64, i64* @hflag, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @Nflag, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (...) @usage()
  br label %75

75:                                               ; preds = %73, %70, %67
  %76 = load i32, i32* %4, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* @uflag, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* @vflag, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %6, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %75
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %87, %84, %81
  %90 = load i8*, i8** %6, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = call i32 (...) @kdumpenv()
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* @qflag, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96, %92
  br label %148

102:                                              ; preds = %89
  %103 = load i8*, i8** %8, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %133

105:                                              ; preds = %102
  %106 = load i64, i64* @uflag, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @kunsetenv(i8* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32, i32* @qflag, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %116, %113, %108
  br label %132

120:                                              ; preds = %105
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @kgetenv(i8* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32, i32* @qflag, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %128, %125, %120
  br label %132

132:                                              ; preds = %131, %119
  br label %147

133:                                              ; preds = %102
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @ksetenv(i8* %134, i8* %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load i32, i32* @qflag, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %139
  %143 = load i8*, i8** %6, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %143, i8* %144)
  br label %146

146:                                              ; preds = %142, %139, %133
  br label %147

147:                                              ; preds = %146, %132
  br label %148

148:                                              ; preds = %147, %101
  %149 = load i32, i32* %10, align 4
  ret i32 %149
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @kdumpenv(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @kunsetenv(i8*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @kgetenv(i8*) #1

declare dso_local i32 @ksetenv(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
