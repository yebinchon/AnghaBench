; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_io.c_prepare_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_io.c_prepare_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i64, i32 }

@strip_trailing_cr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_data*)* @prepare_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_text(%struct.file_data* %0) #0 {
  %2 = alloca %struct.file_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.file_data* %0, %struct.file_data** %2, align 8
  %8 = load %struct.file_data*, %struct.file_data** %2, align 8
  %9 = getelementptr inbounds %struct.file_data, %struct.file_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load %struct.file_data*, %struct.file_data** %2, align 8
  %12 = call i8* @FILE_BUFFER(%struct.file_data* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %15, %1
  %24 = load %struct.file_data*, %struct.file_data** %2, align 8
  %25 = getelementptr inbounds %struct.file_data, %struct.file_data* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  br label %33

26:                                               ; preds = %15
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  %30 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 10, i8* %30, align 1
  %31 = load %struct.file_data*, %struct.file_data** %2, align 8
  %32 = getelementptr inbounds %struct.file_data, %struct.file_data* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %89

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = call i32 @memset(i8* %40, i32 0, i32 4)
  %42 = load i64, i64* @strip_trailing_cr, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %85

44:                                               ; preds = %37
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i8* @memchr(i8* %45, i8 signext 13, i64 %46)
  store i8* %47, i8** %5, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %85

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %7, align 8
  br label %54

54:                                               ; preds = %73, %49
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  %57 = load i8, i8* %55, align 1
  %58 = load i8*, i8** %5, align 8
  store i8 %57, i8* %58, align 1
  %59 = sext i8 %57 to i32
  %60 = icmp eq i32 %59, 13
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br label %66

66:                                               ; preds = %61, %54
  %67 = phi i1 [ false, %54 ], [ %65, %61 ]
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i8*, i8** %5, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %5, align 8
  br label %73

73:                                               ; preds = %66
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %54, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = load i64, i64* %3, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %77, %44, %37
  %86 = load i64, i64* %3, align 8
  %87 = load %struct.file_data*, %struct.file_data** %2, align 8
  %88 = getelementptr inbounds %struct.file_data, %struct.file_data* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %36
  ret void
}

declare dso_local i8* @FILE_BUFFER(%struct.file_data*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
