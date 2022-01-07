; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_sub.c_extract_subst_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_sub.c_extract_subst_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ibufp = common dso_local global i8* null, align 8
@rhbuf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"no previous substitution\00", align 1
@errmsg = common dso_local global i8* null, align 8
@rhbufsz = common dso_local global i32 0, align 4
@isglobal = common dso_local global i32 0, align 4
@ibuf = common dso_local global i8* null, align 8
@stdin = common dso_local global i32 0, align 4
@rhbufi = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @extract_subst_template() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** @ibufp, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** @ibufp, align 8
  %8 = load i8, i8* %6, align 1
  store i8 %8, i8* %5, align 1
  %9 = load i8*, i8** @ibufp, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %29

13:                                               ; preds = %0
  %14 = load i8*, i8** @ibufp, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* %5, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i8*, i8** @ibufp, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** @ibufp, align 8
  %24 = load i8*, i8** @rhbuf, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i8*, i8** @rhbuf, align 8
  store i8* %28, i8** %1, align 8
  br label %126

29:                                               ; preds = %13, %0
  br label %30

30:                                               ; preds = %114, %29
  %31 = load i8*, i8** @ibufp, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* %5, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %115

37:                                               ; preds = %30
  %38 = load i8*, i8** @rhbuf, align 8
  %39 = load i32, i32* @rhbufsz, align 4
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 2
  %42 = call i32 @REALLOC(i8* %38, i32 %39, i32 %41, i32* null)
  %43 = load i8*, i8** @ibufp, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** @ibufp, align 8
  %45 = load i8, i8* %43, align 1
  %46 = load i8*, i8** @rhbuf, align 8
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8 %45, i8* %50, align 1
  store i8 %45, i8* %4, align 1
  %51 = sext i8 %45 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %63

53:                                               ; preds = %37
  %54 = load i8*, i8** @ibufp, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %3, align 4
  %61 = load i8*, i8** @ibufp, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** @ibufp, align 8
  br label %115

63:                                               ; preds = %53, %37
  %64 = load i8, i8* %4, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 92
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %113

68:                                               ; preds = %63
  %69 = load i8*, i8** @ibufp, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** @ibufp, align 8
  %71 = load i8, i8* %69, align 1
  %72 = load i8*, i8** @rhbuf, align 8
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 %71, i8* %76, align 1
  %77 = sext i8 %71 to i32
  %78 = icmp ne i32 %77, 10
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %112

80:                                               ; preds = %68
  %81 = load i32, i32* @isglobal, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %111, label %83

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %103, %83
  %85 = call i32 (...) @get_tty_line()
  store i32 %85, i32* %2, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %2, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i8*, i8** @ibuf, align 8
  %92 = load i32, i32* %2, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 10
  br label %99

99:                                               ; preds = %90, %87
  %100 = phi i1 [ false, %87 ], [ %98, %90 ]
  br label %101

101:                                              ; preds = %99, %84
  %102 = phi i1 [ true, %84 ], [ %100, %99 ]
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = load i32, i32* @stdin, align 4
  %105 = call i32 @clearerr(i32 %104)
  br label %84

106:                                              ; preds = %101
  %107 = load i32, i32* %2, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i8* null, i8** %1, align 8
  br label %126

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111, %79
  br label %113

113:                                              ; preds = %112, %67
  br label %114

114:                                              ; preds = %113
  br label %30

115:                                              ; preds = %58, %30
  %116 = load i8*, i8** @rhbuf, align 8
  %117 = load i32, i32* @rhbufsz, align 4
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i32 @REALLOC(i8* %116, i32 %117, i32 %119, i32* null)
  %121 = load i8*, i8** @rhbuf, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  store i64 %123, i64* @rhbufi, align 8
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** @rhbuf, align 8
  store i8* %125, i8** %1, align 8
  br label %126

126:                                              ; preds = %115, %109, %27
  %127 = load i8*, i8** %1, align 8
  ret i8* %127
}

declare dso_local i32 @REALLOC(i8*, i32, i32, i32*) #1

declare dso_local i32 @get_tty_line(...) #1

declare dso_local i32 @clearerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
