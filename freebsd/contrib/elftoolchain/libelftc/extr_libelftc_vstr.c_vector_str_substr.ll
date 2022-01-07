; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_vstr.c_vector_str_substr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_vstr.c_vector_str_substr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_str = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vector_str_substr(%struct.vector_str* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vector_str*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.vector_str* %0, %struct.vector_str** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %15 = icmp eq %struct.vector_str* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %4
  store i8* null, i8** %5, align 8
  br label %92

21:                                               ; preds = %16
  store i64 0, i64* %12, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %11, align 8
  br label %23

23:                                               ; preds = %38, %21
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, 1
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %30 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strlen(i32 %34)
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %28
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %11, align 8
  br label %23

41:                                               ; preds = %23
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, 1
  %44 = mul i64 1, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8* @malloc(i32 %45)
  store i8* %46, i8** %13, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i8* null, i8** %5, align 8
  br label %92

49:                                               ; preds = %41
  %50 = load i64*, i64** %9, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* %12, align 8
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  store i64 0, i64* %10, align 8
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %84, %55
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %64 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @strlen(i32 %68)
  store i64 %69, i64* %12, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load %struct.vector_str*, %struct.vector_str** %6, align 8
  %74 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @memcpy(i8* %72, i32 %78, i64 %79)
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %62
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %57

87:                                               ; preds = %57
  %88 = load i8*, i8** %13, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %13, align 8
  store i8* %91, i8** %5, align 8
  br label %92

92:                                               ; preds = %87, %48, %20
  %93 = load i8*, i8** %5, align 8
  ret i8* %93
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
