; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_mail.c_chkmail.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_mail.c_chkmail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stackmark = type { i32 }
%struct.stat = type { i64, i64 }

@nmboxes = common dso_local global i32 0, align 4
@mailtime = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"you have mail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chkmail(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stackmark, align 4
  %8 = alloca %struct.stat, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 10, i32* @nmboxes, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32, i32* @nmboxes, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %103

16:                                               ; preds = %12
  %17 = call i32 @setstackmark(%struct.stackmark* %7)
  %18 = call i64 (...) @mpathset()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @mpathval()
  br label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @mailval()
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i8* @stsavestr(i32 %25)
  store i8* %26, i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %97, %24
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @nmboxes, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %100

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %100

38:                                               ; preds = %31
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @strchrnul(i8* %39, i8 signext 58)
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  store i8 0, i8* %46, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  %51 = icmp eq i8* %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %97

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i8*, i8** %5, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 37)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  store i8 0, i8* %60, align 1
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @stat(i8* %63, %struct.stat* %8)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** @mailtime, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %70, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %68
  %78 = load i32, i32* %2, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i8*, i8** %6, align 8
  br label %86

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i8* [ %84, %83 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %85 ]
  %88 = call i32 @out2str(i8* %87)
  %89 = call i32 @out2c(i8 signext 10)
  br label %90

90:                                               ; preds = %86, %77, %68
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** @mailtime, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %92, i64* %96, align 8
  br label %97

97:                                               ; preds = %90, %52
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %27

100:                                              ; preds = %37, %27
  %101 = load i32, i32* %3, align 4
  store i32 %101, i32* @nmboxes, align 4
  %102 = call i32 @popstackmark(%struct.stackmark* %7)
  br label %103

103:                                              ; preds = %100, %15
  ret void
}

declare dso_local i32 @setstackmark(%struct.stackmark*) #1

declare dso_local i8* @stsavestr(i32) #1

declare dso_local i64 @mpathset(...) #1

declare dso_local i32 @mpathval(...) #1

declare dso_local i32 @mailval(...) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @out2str(i8*) #1

declare dso_local i32 @out2c(i8 signext) #1

declare dso_local i32 @popstackmark(%struct.stackmark*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
