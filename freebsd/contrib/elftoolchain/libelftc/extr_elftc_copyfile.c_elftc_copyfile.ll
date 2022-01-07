; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_copyfile.c_elftc_copyfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_elftc_copyfile.c_elftc_copyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@MAP_FAILED = common dso_local global i8* null, align 8
@MAP_SHARED = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elftc_copyfile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @fstat(i32 %14, %struct.stat* %9)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %89

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %89

23:                                               ; preds = %18
  store i8* null, i8** %11, align 8
  store i32 0, i32* %8, align 4
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  %29 = load i64, i64* %6, align 8
  %30 = call i8* @malloc(i64 %29)
  store i8* %30, i8** %11, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %89

33:                                               ; preds = %28
  %34 = load i8*, i8** %11, align 8
  store i8* %34, i8** %10, align 8
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %49, %33
  %37 = load i64, i64* %7, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @read(i32 %40, i8* %41, i64 %42)
  store i64 %43, i64* %12, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @free(i8* %46)
  store i32 -1, i32* %3, align 4
  br label %89

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %10, align 8
  br label %36

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %7, align 8
  %59 = load i8*, i8** %11, align 8
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %71, %57
  %61 = load i64, i64* %7, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @write(i32 %64, i8* %65, i64 %66)
  store i64 %67, i64* %13, align 8
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %78

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %7, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %75
  store i8* %77, i8** %10, align 8
  br label %60

78:                                               ; preds = %69, %60
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @free(i8* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i64, i64* %7, align 8
  %86 = icmp ugt i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 -1, i32 0
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %45, %32, %22, %17
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
