; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sum_block = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i8*)* @out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [6 x i8], align 1
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  store i8 37, i8* %13, align 1
  %14 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = add nsw i64 %20, 5
  %22 = trunc i64 %21 to i32
  %23 = call i32 @TOHEX(i8* %15, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 3
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %43, %4
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i64*, i64** @sum_block, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %32
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  br label %28

46:                                               ; preds = %28
  %47 = load i64*, i64** @sum_block, align 8
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i64*, i64** @sum_block, align 8
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i64*, i64** @sum_block, align 8
  %68 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 3
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @TOHEX(i8* %78, i32 %79)
  %81 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @bfd_bwrite(i8* %81, i32 6, i32* %82)
  %84 = icmp ne i32 %83, 6
  br i1 %84, label %85, label %87

85:                                               ; preds = %46
  %86 = call i32 (...) @abort() #3
  unreachable

87:                                               ; preds = %46
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 10, i8* %89, align 1
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = add nsw i64 %94, 1
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %12, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @bfd_bwrite(i8* %97, i32 %98, i32* %99)
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %87
  %104 = call i32 (...) @abort() #3
  unreachable

105:                                              ; preds = %87
  ret void
}

declare dso_local i32 @TOHEX(i8*, i32) #1

declare dso_local i32 @bfd_bwrite(i8*, i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
