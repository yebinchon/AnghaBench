; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ps/extr_fmt.c_shquote.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ps/extr_fmt.c_shquote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shquote.buf_size = internal global i64 0, align 8
@shquote.buf = internal global i8* null, align 8
@_SC_ARG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"sysconf _SC_ARG_MAX failed\00", align 1
@LONG_MAX = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"sysconf _SC_ARG_MAX preposterously large\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@VIS_NL = common dso_local global i32 0, align 4
@VIS_CSTYLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @shquote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @shquote(i8** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %9 = load i8*, i8** @shquote.buf, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load i32, i32* @_SC_ARG_MAX, align 4
  %13 = call i64 @sysconf(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @LONG_MAX, align 4
  %20 = sdiv i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @SIZE_MAX, align 4
  %26 = sdiv i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %17
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i64, i64* %4, align 8
  %33 = mul nsw i64 4, %32
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* @shquote.buf_size, align 8
  %35 = load i64, i64* @shquote.buf_size, align 8
  %36 = call i8* @malloc(i64 %35)
  store i8* %36, i8** @shquote.buf, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %31
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i8**, i8*** %3, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** @shquote.buf, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** @shquote.buf, align 8
  store i8* %48, i8** %2, align 8
  br label %129

49:                                               ; preds = %41
  %50 = load i8*, i8** @shquote.buf, align 8
  store i8* %50, i8** %7, align 8
  %51 = load i8**, i8*** %3, align 8
  store i8** %51, i8*** %6, align 8
  br label %52

52:                                               ; preds = %112, %62, %49
  %53 = load i8**, i8*** %6, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %6, align 8
  %55 = load i8*, i8** %53, align 8
  store i8* %55, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %113

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %52

63:                                               ; preds = %57
  %64 = load i64, i64* @shquote.buf_size, align 8
  %65 = sub i64 %64, 1
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** @shquote.buf, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sub i64 %65, %70
  %72 = udiv i64 %71, 4
  store i64 %72, i64* %5, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = load i64, i64* %5, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @strlen(i8* %80)
  br label %84

82:                                               ; preds = %63
  %83 = load i64, i64* %5, align 8
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i64 [ %81, %79 ], [ %83, %82 ]
  %86 = load i32, i32* @VIS_NL, align 4
  %87 = load i32, i32* @VIS_CSTYLE, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @strvisx(i8* %73, i8* %74, i64 %85, i32 %88)
  br label %90

90:                                               ; preds = %95, %84
  %91 = load i8*, i8** %7, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %7, align 8
  br label %90

98:                                               ; preds = %90
  %99 = load i64, i64* @shquote.buf_size, align 8
  %100 = sub i64 %99, 1
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** @shquote.buf, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sub i64 %100, %105
  %107 = udiv i64 %106, 4
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %7, align 8
  store i8 32, i8* %110, align 1
  br label %112

112:                                              ; preds = %109, %98
  br label %52

113:                                              ; preds = %52
  %114 = load i8*, i8** %7, align 8
  %115 = load i8*, i8** @shquote.buf, align 8
  %116 = icmp ne i8* %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 32
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %125, i8** %7, align 8
  br label %126

126:                                              ; preds = %123, %117, %113
  %127 = load i8*, i8** %7, align 8
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** @shquote.buf, align 8
  store i8* %128, i8** %2, align 8
  br label %129

129:                                              ; preds = %126, %45
  %130 = load i8*, i8** %2, align 8
  ret i8* %130
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strvisx(i8*, i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
