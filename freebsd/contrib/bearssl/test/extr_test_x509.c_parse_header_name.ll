; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_parse_header_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_parse_header_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line_builder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @parse_header_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_header_name() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @line_builder, align 4
  %9 = call i8* @SB_contents(i32 %8)
  store i8* %9, i8** %2, align 8
  %10 = load i32, i32* @line_builder, align 4
  %11 = call i64 @SB_length(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %12, 2
  br i1 %13, label %28, label %14

14:                                               ; preds = %0
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 91
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 93
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %14, %0
  store i8* null, i8** %1, align 8
  br label %106

29:                                               ; preds = %20
  store i64 1, i64* %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %45, %29
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8*, i8** %2, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @is_ws(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %36, %32
  %44 = phi i1 [ false, %32 ], [ %42, %36 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %4, align 8
  br label %32

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  %55 = load i64, i64* %5, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @is_ws(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %53, %49
  %62 = phi i1 [ false, %49 ], [ %60, %53 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* %5, align 8
  br label %49

66:                                               ; preds = %61
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i8* null, i8** %1, align 8
  br label %106

71:                                               ; preds = %66
  %72 = load i64, i64* %4, align 8
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %86, %71
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i8*, i8** %2, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @is_name_char(i8 signext %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  store i8* null, i8** %1, align 8
  br label %106

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %6, align 8
  br label %73

89:                                               ; preds = %73
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %4, align 8
  %92 = sub i64 %90, %91
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 1
  %95 = call i8* @xmalloc(i64 %94)
  store i8* %95, i8** %3, align 8
  %96 = load i8*, i8** %3, align 8
  %97 = load i8*, i8** %2, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @memcpy(i8* %96, i8* %99, i64 %100)
  %102 = load i8*, i8** %3, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %3, align 8
  store i8* %105, i8** %1, align 8
  br label %106

106:                                              ; preds = %89, %84, %70, %28
  %107 = load i8*, i8** %1, align 8
  ret i8* %107
}

declare dso_local i8* @SB_contents(i32) #1

declare dso_local i64 @SB_length(i32) #1

declare dso_local i64 @is_ws(i8 signext) #1

declare dso_local i32 @is_name_char(i8 signext) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
