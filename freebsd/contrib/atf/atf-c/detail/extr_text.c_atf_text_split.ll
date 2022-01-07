; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_text.c_atf_text_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_text.c_atf_text_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_text_split(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @atf_list_init(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @atf_is_error(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %96

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @INV(i32 %29)
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %79, %19
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @INV(i32 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @strstr(i8* %41, i8* %42)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i8*, i8** %9, align 8
  store i8* %47, i8** %11, align 8
  br label %48

48:                                               ; preds = %46, %36
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp uge i8* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @INV(i32 %52)
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ugt i8* %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %48
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @atf_dynstr_init_raw(i32* %12, i8* %58, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @atf_is_error(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %93

70:                                               ; preds = %57
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @atf_dynstr_fini_disown(i32* %12)
  %73 = call i32 @atf_list_append(i32* %71, i32 %72, i32 1)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @atf_is_error(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %93

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %48
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8* %84, i8** %10, align 8
  br label %32

85:                                               ; preds = %32
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @atf_is_error(i32 %86)
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @INV(i32 %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %98

93:                                               ; preds = %77, %69
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @atf_list_fini(i32* %94)
  br label %96

96:                                               ; preds = %93, %18
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %85
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @atf_list_init(i32*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @atf_dynstr_init_raw(i32*, i8*, i32) #1

declare dso_local i32 @atf_list_append(i32*, i32, i32) #1

declare dso_local i32 @atf_dynstr_fini_disown(i32*) #1

declare dso_local i32 @atf_list_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
