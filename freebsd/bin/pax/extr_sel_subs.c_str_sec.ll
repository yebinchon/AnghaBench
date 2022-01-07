; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_sel_subs.c_str_sec.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_sel_subs.c_str_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @str_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_sec(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call %struct.tm* @localtime(i32* %8)
  store %struct.tm* %9, %struct.tm** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 46)
  store i8* %11, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %7, align 8
  store i8 0, i8* %14, align 1
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %98

20:                                               ; preds = %13
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @ATOI2(i8* %21)
  %23 = load %struct.tm*, %struct.tm** %6, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = icmp sgt i32 %22, 61
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %98

27:                                               ; preds = %20
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.tm*, %struct.tm** %6, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %27
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strlen(i8* %32)
  switch i32 %33, label %90 [
    i32 10, label %34
    i32 8, label %48
    i32 6, label %62
    i32 4, label %72
    i32 2, label %82
  ]

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @ATOI2(i8* %35)
  %37 = load %struct.tm*, %struct.tm** %6, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = icmp slt i32 %36, 69
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.tm*, %struct.tm** %6, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 100
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %31, %45
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @ATOI2(i8* %49)
  %51 = load %struct.tm*, %struct.tm** %6, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = icmp sgt i32 %50, 12
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %98

55:                                               ; preds = %48
  %56 = load %struct.tm*, %struct.tm** %6, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** %4, align 8
  br label %62

62:                                               ; preds = %31, %55
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @ATOI2(i8* %63)
  %65 = load %struct.tm*, %struct.tm** %6, align 8
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = icmp sgt i32 %64, 31
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %98

69:                                               ; preds = %62
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %31, %69
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @ATOI2(i8* %73)
  %75 = load %struct.tm*, %struct.tm** %6, align 8
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = icmp sgt i32 %74, 23
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %98

79:                                               ; preds = %72
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %4, align 8
  br label %82

82:                                               ; preds = %31, %79
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @ATOI2(i8* %83)
  %85 = load %struct.tm*, %struct.tm** %6, align 8
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = icmp sgt i32 %84, 59
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 -1, i32* %3, align 4
  br label %98

89:                                               ; preds = %82
  br label %91

90:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %98

91:                                               ; preds = %89
  %92 = load %struct.tm*, %struct.tm** %6, align 8
  %93 = call i32 @mktime(%struct.tm* %92)
  %94 = load i32*, i32** %5, align 8
  store i32 %93, i32* %94, align 4
  %95 = icmp eq i32 %93, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %98

97:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %96, %90, %88, %78, %68, %54, %26, %19
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ATOI2(i8*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
