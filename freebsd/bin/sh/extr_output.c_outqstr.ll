; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_output.c_outqstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_output.c_outqstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"|&;<>()$`\\\22 \0A*?[~#=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outqstr(i8* %0, %struct.output* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.output*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.output* %1, %struct.output** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.output*, %struct.output** %4, align 8
  %13 = call i32 @outstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.output* %12)
  br label %96

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %69, %14
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 10
  br i1 %46, label %64, label %47

47:                                               ; preds = %39, %31, %23
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = and i32 %53, 128
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %47
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 39
  br i1 %63, label %64, label %68

64:                                               ; preds = %56, %47, %39
  %65 = load i8*, i8** %3, align 8
  %66 = load %struct.output*, %struct.output** %4, align 8
  %67 = call i32 @outdqstr(i8* %65, %struct.output* %66)
  br label %96

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %15

72:                                               ; preds = %15
  %73 = load i8*, i8** %3, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = call i64 @strcspn(i8* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load i8*, i8** %3, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80, %72
  %85 = load i8*, i8** %3, align 8
  %86 = load %struct.output*, %struct.output** %4, align 8
  %87 = call i32 @outstr(i8* %85, %struct.output* %86)
  br label %96

88:                                               ; preds = %80
  %89 = load %struct.output*, %struct.output** %4, align 8
  %90 = call i32 @outcslow(i8 signext 39, %struct.output* %89)
  %91 = load i8*, i8** %3, align 8
  %92 = load %struct.output*, %struct.output** %4, align 8
  %93 = call i32 @outstr(i8* %91, %struct.output* %92)
  %94 = load %struct.output*, %struct.output** %4, align 8
  %95 = call i32 @outcslow(i8 signext 39, %struct.output* %94)
  br label %96

96:                                               ; preds = %88, %84, %64, %11
  ret void
}

declare dso_local i32 @outstr(i8*, %struct.output*) #1

declare dso_local i32 @outdqstr(i8*, %struct.output*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @outcslow(i8 signext, %struct.output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
