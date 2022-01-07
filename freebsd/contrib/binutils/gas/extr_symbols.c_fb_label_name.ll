; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_fb_label_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_fb_label_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fb_label_name.symbol_name_build = internal global [24 x i8] zeroinitializer, align 16
@LOCAL_LABEL_CHAR = common dso_local global i32 0, align 4
@LOCAL_LABEL_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fb_label_name(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [20 x i8], align 16
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @know(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = icmp ule i64 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @know(i32 %15)
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @fb_label_name.symbol_name_build, i64 0, i64 0), i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  store i8 76, i8* %17, align 1
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %7, align 8
  store i8 0, i8* %20, align 1
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %34, %2
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = srem i64 %27, 10
  %29 = add nsw i64 %28, 48
  %30 = trunc i64 %29 to i8
  %31 = load i8*, i8** %7, align 8
  store i8 %30, i8* %31, align 1
  %32 = load i64, i64* %5, align 8
  %33 = sdiv i64 %32, 10
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  br label %23

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %45, %37
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %40, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %6, align 8
  store i8 %41, i8* %42, align 1
  %43 = sext i8 %41 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  br label %38

48:                                               ; preds = %38
  %49 = load i32, i32* @LOCAL_LABEL_CHAR, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  store i8 %50, i8* %51, align 1
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  store i8 0, i8* %54, align 1
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @fb_label_instance(i64 %56)
  %58 = load i64, i64* %4, align 8
  %59 = add nsw i64 %57, %58
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %71, %48
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i64, i64* %5, align 8
  %65 = srem i64 %64, 10
  %66 = add nsw i64 %65, 48
  %67 = trunc i64 %66 to i8
  %68 = load i8*, i8** %7, align 8
  store i8 %67, i8* %68, align 1
  %69 = load i64, i64* %5, align 8
  %70 = sdiv i64 %69, 10
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %63
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  br label %60

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %83, %74
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  store i8 %78, i8* %79, align 1
  %81 = sext i8 %78 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %75

84:                                               ; preds = %75
  ret i8* getelementptr inbounds ([24 x i8], [24 x i8]* @fb_label_name.symbol_name_build, i64 0, i64 0)
}

declare dso_local i32 @know(i32) #1

declare dso_local i64 @fb_label_instance(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
