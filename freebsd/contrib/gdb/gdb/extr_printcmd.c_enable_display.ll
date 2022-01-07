; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_enable_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_enable_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i32, %struct.display* }

@display_chain = common dso_local global %struct.display* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Arguments must be display numbers.\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"No display number %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @enable_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_display(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.display*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.display*, %struct.display** @display_chain, align 8
  store %struct.display* %13, %struct.display** %8, align 8
  br label %14

14:                                               ; preds = %20, %12
  %15 = load %struct.display*, %struct.display** %8, align 8
  %16 = icmp ne %struct.display* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.display*, %struct.display** %8, align 8
  %19 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %20

20:                                               ; preds = %17
  %21 = load %struct.display*, %struct.display** %8, align 8
  %22 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 2
  %23 = load %struct.display*, %struct.display** %22, align 8
  store %struct.display* %23, %struct.display** %8, align 8
  br label %14

24:                                               ; preds = %14
  br label %107

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %105, %25
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %106

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %44, %30
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 57
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  br label %32

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 32
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 9
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57, %52, %47
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @atoi(i8* %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.display*, %struct.display** @display_chain, align 8
  store %struct.display* %67, %struct.display** %8, align 8
  br label %68

68:                                               ; preds = %81, %64
  %69 = load %struct.display*, %struct.display** %8, align 8
  %70 = icmp ne %struct.display* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.display*, %struct.display** %8, align 8
  %73 = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.display*, %struct.display** %8, align 8
  %79 = getelementptr inbounds %struct.display, %struct.display* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %88

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.display*, %struct.display** %8, align 8
  %83 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 2
  %84 = load %struct.display*, %struct.display** %83, align 8
  store %struct.display* %84, %struct.display** %8, align 8
  br label %68

85:                                               ; preds = %68
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %77
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %5, align 8
  br label %90

90:                                               ; preds = %102, %88
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 9
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi i1 [ true, %90 ], [ %99, %95 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %5, align 8
  br label %90

105:                                              ; preds = %100
  br label %26

106:                                              ; preds = %26
  br label %107

107:                                              ; preds = %106, %24
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
