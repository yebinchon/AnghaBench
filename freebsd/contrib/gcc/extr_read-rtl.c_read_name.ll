; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_read_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_constant = type { i8*, i8* }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"missing name or number\00", align 1
@read_rtx_lineno = common dso_local global i32 0, align 4
@md_constants = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @read_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_name(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_constant*, align 8
  %8 = alloca %struct.md_constant, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @read_skip_spaces(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %2, %57
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 13
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @EOF, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %24, %21, %18, %15, %12
  br label %64

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 58
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 41
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 93
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 34
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 47
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 40
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 91
  br i1 %52, label %53, label %57

53:                                               ; preds = %50, %47, %44, %41, %38, %35, %32
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ungetc(i32 %54, i32* %55)
  br label %64

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %5, align 8
  store i8 %59, i8* %60, align 1
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @getc(i32* %62)
  store i32 %63, i32* %6, align 4
  br label %12

64:                                               ; preds = %53, %31
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @fatal_with_file_and_line(i32* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @read_rtx_lineno, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @read_rtx_lineno, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i8*, i8** %5, align 8
  store i8 0, i8* %78, align 1
  %79 = load i64, i64* @md_constants, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %77
  %82 = load i8*, i8** %3, align 8
  store i8* %82, i8** %5, align 8
  br label %83

83:                                               ; preds = %96, %81
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds %struct.md_constant, %struct.md_constant* %8, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = load i64, i64* @md_constants, align 8
  %87 = call i64 @htab_find(i64 %86, %struct.md_constant* %8)
  %88 = inttoptr i64 %87 to %struct.md_constant*
  store %struct.md_constant* %88, %struct.md_constant** %7, align 8
  %89 = load %struct.md_constant*, %struct.md_constant** %7, align 8
  %90 = icmp ne %struct.md_constant* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load %struct.md_constant*, %struct.md_constant** %7, align 8
  %93 = getelementptr inbounds %struct.md_constant, %struct.md_constant* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %5, align 8
  br label %95

95:                                               ; preds = %91, %83
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.md_constant*, %struct.md_constant** %7, align 8
  %98 = icmp ne %struct.md_constant* %97, null
  br i1 %98, label %83, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = icmp ne i8* %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8*, i8** %3, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @strcpy(i8* %104, i8* %105)
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %77
  ret void
}

declare dso_local i32 @read_skip_spaces(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fatal_with_file_and_line(i32*, i8*) #1

declare dso_local i64 @htab_find(i64, %struct.md_constant*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
