; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_minus_o.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_minus_o.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Current option settings\0A\00", align 1
@optname = common dso_local global i8* null, align 8
@NOPTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%-16.*s%s\0A\00", align 1
@optval = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s %co %.*s%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Illegal option -o %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @minus_o to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minus_o(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %96

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %10
  %14 = call i32 @out1str(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %15 = load i8*, i8** @optname, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %35, %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NOPTS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i64*, i64** @optval, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %34 = call i32 (i8*, ...) @out1fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %23, i8* %25, i8* %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, 1
  %42 = load i8*, i8** %6, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %6, align 8
  br label %16

45:                                               ; preds = %16
  br label %95

46:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  %47 = load i8*, i8** @optname, align 8
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %84, %46
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NOPTS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %94

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = srem i32 %53, 6
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %58 = load i64*, i64** @optval, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 45, i32 43
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i32, i32* %5, align 4
  %72 = srem i32 %71, 6
  %73 = icmp eq i32 %72, 5
  br i1 %73, label %79, label %74

74:                                               ; preds = %52
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @NOPTS, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp eq i32 %75, %77
  br label %79

79:                                               ; preds = %74, %52
  %80 = phi i1 [ true, %52 ], [ %78, %74 ]
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %83 = call i32 (i8*, ...) @out1fmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %57, i32 %65, i32 %68, i8* %70, i8* %82)
  br label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %89, 1
  %91 = load i8*, i8** %6, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %6, align 8
  br label %48

94:                                               ; preds = %48
  br label %95

95:                                               ; preds = %94, %45
  br label %135

96:                                               ; preds = %2
  %97 = load i8*, i8** %3, align 8
  %98 = call i64 @strlen(i8* %97)
  store i64 %98, i64* %7, align 8
  store i32 0, i32* %5, align 4
  %99 = load i8*, i8** @optname, align 8
  store i8* %99, i8** %6, align 8
  br label %100

100:                                              ; preds = %122, %96
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @NOPTS, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %100
  %105 = load i8*, i8** %6, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  %108 = load i64, i64* %7, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8*, i8** %3, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i64 @memcmp(i8* %112, i8* %113, i64 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @setoptionbyindex(i32 %118, i32 %119)
  br label %135

121:                                              ; preds = %110, %104
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  %125 = load i8*, i8** %6, align 8
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = add nsw i32 %127, 1
  %129 = load i8*, i8** %6, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %6, align 8
  br label %100

132:                                              ; preds = %100
  %133 = load i8*, i8** %3, align 8
  %134 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %117, %132, %95
  ret void
}

declare dso_local i32 @out1str(i8*) #1

declare dso_local i32 @out1fmt(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @setoptionbyindex(i32, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
