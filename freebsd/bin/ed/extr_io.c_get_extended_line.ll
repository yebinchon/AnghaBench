; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_get_extended_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_get_extended_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_extended_line.cvbuf = internal global i8* null, align 8
@get_extended_line.cvbufsz = internal global i32 0, align 4
@ibufp = common dso_local global i8* null, align 8
@ibuf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"unexpected end-of-file\00", align 1
@errmsg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_extended_line(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** @ibufp, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %16, %2
  %11 = load i8*, i8** %8, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %8, align 8
  %13 = load i8, i8* %11, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 10
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %10

17:                                               ; preds = %10
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** @ibufp, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %34, label %25

25:                                               ; preds = %17
  %26 = load i8*, i8** @ibufp, align 8
  %27 = load i8*, i8** @ibufp, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  %32 = call i32 @has_trailing_escape(i8* %26, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25, %17
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i8*, i8** @ibufp, align 8
  store i8* %37, i8** %3, align 8
  br label %133

38:                                               ; preds = %25
  %39 = load i32*, i32** %4, align 8
  store i32 -1, i32* %39, align 4
  %40 = load i8*, i8** @get_extended_line.cvbuf, align 8
  %41 = load i32, i32* @get_extended_line.cvbufsz, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @REALLOC(i8* %40, i32 %41, i32 %42, i32* null)
  %44 = load i8*, i8** @get_extended_line.cvbuf, align 8
  %45 = load i8*, i8** @ibufp, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i8*, i8** @get_extended_line.cvbuf, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  store i8 10, i8* %53, align 1
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %38
  br label %60

60:                                               ; preds = %119, %59
  %61 = call i32 (...) @get_tty_line()
  store i32 %61, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i8* null, i8** %3, align 8
  br label %133

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** @ibuf, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 10
  br i1 %75, label %76, label %77

76:                                               ; preds = %67, %64
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  store i8* null, i8** %3, align 8
  br label %133

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** @get_extended_line.cvbuf, align 8
  %80 = load i32, i32* @get_extended_line.cvbufsz, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @REALLOC(i8* %79, i32 %80, i32 %83, i32* null)
  %85 = load i8*, i8** @get_extended_line.cvbuf, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8*, i8** @ibuf, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @memcpy(i8* %88, i8* %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %106, label %97

97:                                               ; preds = %78
  %98 = load i8*, i8** @get_extended_line.cvbuf, align 8
  %99 = load i8*, i8** @get_extended_line.cvbuf, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = getelementptr inbounds i8, i8* %102, i64 -1
  %104 = call i32 @has_trailing_escape(i8* %98, i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %97, %78
  br label %120

107:                                              ; preds = %97
  %108 = load i8*, i8** @get_extended_line.cvbuf, align 8
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = getelementptr inbounds i8, i8* %112, i64 -1
  store i8 10, i8* %113, align 1
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %116, %107
  br label %60

120:                                              ; preds = %106
  %121 = load i8*, i8** @get_extended_line.cvbuf, align 8
  %122 = load i32, i32* @get_extended_line.cvbufsz, align 4
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i32 @REALLOC(i8* %121, i32 %122, i32 %124, i32* null)
  %126 = load i8*, i8** @get_extended_line.cvbuf, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i32, i32* %6, align 4
  %131 = load i32*, i32** %4, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i8*, i8** @get_extended_line.cvbuf, align 8
  store i8* %132, i8** %3, align 8
  br label %133

133:                                              ; preds = %120, %76, %63, %34
  %134 = load i8*, i8** %3, align 8
  ret i8* %134
}

declare dso_local i32 @has_trailing_escape(i8*, i8*) #1

declare dso_local i32 @REALLOC(i8*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @get_tty_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
