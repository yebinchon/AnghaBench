; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff.c_add_regexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff.c_add_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regexp_list = type { i8*, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regexp_list*, i8*)* @add_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_regexp(%struct.regexp_list* %0, i8* %1) #0 {
  %3 = alloca %struct.regexp_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.regexp_list* %0, %struct.regexp_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.regexp_list*, %struct.regexp_list** %3, align 8
  %17 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @re_compile_pattern(i8* %14, i64 %15, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @error(i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  br label %94

26:                                               ; preds = %2
  %27 = load %struct.regexp_list*, %struct.regexp_list** %3, align 8
  %28 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  %30 = load %struct.regexp_list*, %struct.regexp_list** %3, align 8
  %31 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  %35 = zext i1 %34 to i32
  %36 = load %struct.regexp_list*, %struct.regexp_list** %3, align 8
  %37 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  store i32 %35, i32* %9, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = add i64 %38, %41
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %42, %43
  %45 = load %struct.regexp_list*, %struct.regexp_list** %3, align 8
  %46 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  store i64 %44, i64* %10, align 8
  %47 = load %struct.regexp_list*, %struct.regexp_list** %3, align 8
  %48 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ule i64 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %26
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i64 1, i64* %11, align 8
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %61, %57
  %59 = load i64, i64* %11, align 8
  %60 = mul i64 %59, 2
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %58, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.regexp_list*, %struct.regexp_list** %3, align 8
  %68 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i8* @xrealloc(i8* %69, i64 %70)
  store i8* %71, i8** %7, align 8
  %72 = load %struct.regexp_list*, %struct.regexp_list** %3, align 8
  %73 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %65, %26
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  %81 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 92, i8* %81, align 1
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %8, align 8
  %85 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 124, i8* %85, align 1
  br label %86

86:                                               ; preds = %77, %74
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 1
  %93 = call i32 @memcpy(i8* %89, i8* %90, i64 %92)
  br label %94

94:                                               ; preds = %86, %22
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @re_compile_pattern(i8*, i64, i32) #1

declare dso_local i32 @error(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
