; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_parse_keyvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_parse_keyvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line_builder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @parse_keyvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_keyvalue(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @line_builder, align 4
  %10 = call i8* @SB_contents(i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* @line_builder, align 4
  %12 = call i64 @SB_length(i32 %11)
  store i64 %12, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @is_name_char(i8 signext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %29

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %7, align 8
  br label %13

29:                                               ; preds = %24, %13
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %126

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  %36 = call i8* @xmalloc(i64 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32* @HT_get(i32* %44, i8* %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @xfree(i8* %49)
  store i32 -1, i32* %2, align 4
  br label %126

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @is_ws(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %56, %52
  %64 = phi i1 [ false, %52 ], [ %62, %56 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %52

68:                                               ; preds = %63
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 61
  br i1 %78, label %79, label %82

79:                                               ; preds = %72, %68
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @xfree(i8* %80)
  store i32 -1, i32* %2, align 4
  br label %126

82:                                               ; preds = %72
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %98, %82
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @is_ws(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %89, %85
  %97 = phi i1 [ false, %85 ], [ %95, %89 ]
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %7, align 8
  br label %85

101:                                              ; preds = %96
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %7, align 8
  %104 = sub i64 %102, %103
  %105 = add i64 %104, 1
  %106 = call i8* @xmalloc(i64 %105)
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = sub i64 %111, %112
  %114 = call i32 @memcpy(i8* %107, i8* %110, i64 %113)
  %115 = load i8*, i8** %6, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %7, align 8
  %118 = sub i64 %116, %117
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  store i8 0, i8* %119, align 1
  %120 = load i32*, i32** %3, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @HT_put(i32* %120, i8* %121, i8* %122)
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @xfree(i8* %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %101, %79, %48, %32
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i8* @SB_contents(i32) #1

declare dso_local i64 @SB_length(i32) #1

declare dso_local i32 @is_name_char(i8 signext) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32* @HT_get(i32*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @is_ws(i8 signext) #1

declare dso_local i32 @HT_put(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
