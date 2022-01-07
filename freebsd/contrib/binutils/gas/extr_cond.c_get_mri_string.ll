; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_get_mri_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_get_mri_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i8* null, align 8
@is_end_of_line = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*)* @get_mri_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_mri_string(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @SKIP_WHITESPACE()
  %8 = load i8*, i8** @input_line_pointer, align 8
  store i8* %8, i8** %5, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** @input_line_pointer, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 39
  br i1 %12, label %13, label %50

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** @input_line_pointer, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** @input_line_pointer, align 8
  br label %18

18:                                               ; preds = %47, %13
  %19 = load i32*, i32** @is_end_of_line, align 8
  %20 = load i8*, i8** @input_line_pointer, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %48

27:                                               ; preds = %18
  %28 = load i8*, i8** @input_line_pointer, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** @input_line_pointer, align 8
  %30 = load i8, i8* %28, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 39
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load i8*, i8** @input_line_pointer, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 39
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** @input_line_pointer, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** @input_line_pointer, align 8
  br label %47

47:                                               ; preds = %44, %27
  br label %18

48:                                               ; preds = %43, %18
  %49 = call i32 (...) @SKIP_WHITESPACE()
  br label %97

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %68, %50
  %52 = load i8*, i8** @input_line_pointer, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i32*, i32** @is_end_of_line, align 8
  %59 = load i8*, i8** @input_line_pointer, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %57, %51
  %67 = phi i1 [ false, %51 ], [ %65, %57 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i8*, i8** @input_line_pointer, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** @input_line_pointer, align 8
  br label %51

71:                                               ; preds = %66
  %72 = load i8*, i8** @input_line_pointer, align 8
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %93, %71
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = icmp ugt i8* %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 -1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 -1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 9
  br label %89

89:                                               ; preds = %83, %77
  %90 = phi i1 [ true, %77 ], [ %88, %83 ]
  br label %91

91:                                               ; preds = %89, %73
  %92 = phi i1 [ false, %73 ], [ %90, %89 ]
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 -1
  store i8* %95, i8** %6, align 8
  br label %73

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %48
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = load i32*, i32** %4, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i8*, i8** %5, align 8
  ret i8* %105
}

declare dso_local i32 @SKIP_WHITESPACE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
