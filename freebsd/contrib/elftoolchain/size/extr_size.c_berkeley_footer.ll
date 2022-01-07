; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_berkeley_footer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_berkeley_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_SIZE = common dso_local global i32 0, align 4
@text_size = common dso_local global i64 0, align 8
@data_size = common dso_local global i64 0, align 8
@bss_size = common dso_local global i64 0, align 8
@total_size = common dso_local global i64 0, align 8
@show_totals = common dso_local global i64 0, align 8
@text_size_total = common dso_local global i32 0, align 4
@bss_size_total = common dso_local global i32 0, align 4
@data_size_total = common dso_local global i32 0, align 4
@radix = common dso_local global i64 0, align 8
@RADIX_OCTAL = common dso_local global i64 0, align 8
@RADIX_DECIMAL = common dso_local global i64 0, align 8
@RADIX_HEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s (%s %s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @berkeley_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @berkeley_footer(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @BUF_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load i64, i64* @text_size, align 8
  %14 = load i64, i64* @data_size, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* @bss_size, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* @total_size, align 8
  %18 = load i64, i64* @show_totals, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load i64, i64* @text_size, align 8
  %22 = load i32, i32* @text_size_total, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @text_size_total, align 4
  %26 = load i64, i64* @bss_size, align 8
  %27 = load i32, i32* @bss_size_total, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* @bss_size_total, align 4
  %31 = load i64, i64* @data_size, align 8
  %32 = load i32, i32* @data_size_total, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @data_size_total, align 4
  br label %36

36:                                               ; preds = %20, %3
  %37 = call i32 (...) @tbl_append()
  %38 = load i64, i64* @text_size, align 8
  %39 = load i64, i64* @radix, align 8
  %40 = call i32 @tbl_print_num(i64 %38, i64 %39, i32 0)
  %41 = load i64, i64* @data_size, align 8
  %42 = load i64, i64* @radix, align 8
  %43 = call i32 @tbl_print_num(i64 %41, i64 %42, i32 1)
  %44 = load i64, i64* @bss_size, align 8
  %45 = load i64, i64* @radix, align 8
  %46 = call i32 @tbl_print_num(i64 %44, i64 %45, i32 2)
  %47 = load i64, i64* @radix, align 8
  %48 = load i64, i64* @RADIX_OCTAL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load i64, i64* @total_size, align 8
  %52 = load i64, i64* @RADIX_OCTAL, align 8
  %53 = call i32 @tbl_print_num(i64 %51, i64 %52, i32 3)
  br label %58

54:                                               ; preds = %36
  %55 = load i64, i64* @total_size, align 8
  %56 = load i64, i64* @RADIX_DECIMAL, align 8
  %57 = call i32 @tbl_print_num(i64 %55, i64 %56, i32 3)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i64, i64* @total_size, align 8
  %60 = load i64, i64* @RADIX_HEX, align 8
  %61 = call i32 @tbl_print_num(i64 %59, i64 %60, i32 4)
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load i8*, i8** %4, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* @BUF_SIZE, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %12, i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %69, i8* %70, i8* %71)
  br label %89

73:                                               ; preds = %64, %58
  %74 = load i8*, i8** %5, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i8*, i8** %4, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* @BUF_SIZE, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %12, i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %81, i8* %82)
  br label %88

84:                                               ; preds = %76, %73
  %85 = load i32, i32* @BUF_SIZE, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %12, i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84, %79
  br label %89

89:                                               ; preds = %88, %67
  %90 = call i32 @tbl_print(i8* %12, i32 5)
  %91 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %91)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tbl_append(...) #2

declare dso_local i32 @tbl_print_num(i64, i64, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @tbl_print(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
