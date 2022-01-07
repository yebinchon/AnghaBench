; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_init_libfuncs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_init_libfuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i8*, i32)* @init_libfuncs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_libfuncs(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %91, %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = call i8* @GET_MODE_NAME(i32 %26)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add i32 2, %30
  %32 = load i32, i32* %14, align 4
  %33 = add i32 %31, %32
  %34 = add i32 %33, 1
  %35 = add i32 %34, 1
  %36 = call i8* @alloca(i32 %35)
  store i8* %36, i8** %15, align 8
  %37 = load i8*, i8** %15, align 8
  store i8* %37, i8** %16, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %16, align 8
  store i8 95, i8* %38, align 1
  %40 = load i8*, i8** %16, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %16, align 8
  store i8 95, i8* %40, align 1
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %17, align 8
  br label %43

43:                                               ; preds = %47, %25
  %44 = load i8*, i8** %17, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i8*, i8** %17, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %17, align 8
  %50 = load i8, i8* %48, align 1
  %51 = load i8*, i8** %16, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %16, align 8
  store i8 %50, i8* %51, align 1
  br label %43

53:                                               ; preds = %43
  %54 = load i8*, i8** %13, align 8
  store i8* %54, i8** %17, align 8
  br label %55

55:                                               ; preds = %66, %53
  %56 = load i8*, i8** %17, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i8*, i8** %17, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @TOLOWER(i8 signext %61)
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %16, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %16, align 8
  store i8 %63, i8* %64, align 1
  br label %66

66:                                               ; preds = %59
  %67 = load i8*, i8** %17, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %17, align 8
  br label %55

69:                                               ; preds = %55
  %70 = load i32, i32* %10, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %16, align 8
  store i8 %71, i8* %72, align 1
  %74 = load i8*, i8** %16, align 8
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %15, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @ggc_alloc_string(i8* %75, i32 %81)
  %83 = call i32 @init_one_libfunc(i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %83, i32* %90, align 4
  br label %91

91:                                               ; preds = %69
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %21

94:                                               ; preds = %21
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @TOLOWER(i8 signext) #1

declare dso_local i32 @init_one_libfunc(i32) #1

declare dso_local i32 @ggc_alloc_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
