; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_messages.c_as_internal_value_out_of_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_messages.c_as_internal_value_out_of_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s out of domain (%d is not a multiple of %d)\00", align 1
@HEX_MAX_THRESHOLD = common dso_local global i64 0, align 8
@HEX_MIN_THRESHOLD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"%s out of range (%d is not between %d and %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64, i8*, i32, i32)* @as_internal_value_out_of_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_internal_value_out_of_range(i8* %0, i64 %1, i64 %2, i64 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [26 x i8], align 16
  %18 = alloca [26 x i8], align 16
  %19 = alloca [26 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %23

23:                                               ; preds = %22, %7
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = sub nsw i64 0, %33
  %35 = and i64 %32, %34
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp sle i64 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 (...) @abort() #3
  unreachable

40:                                               ; preds = %31
  %41 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** %15, align 8
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* %16, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i8*, i32, i8*, i8*, ...) @as_bad_where(i8* %45, i32 %46, i8* %47, i8* %48, i32 %50, i32 %52)
  br label %64

54:                                               ; preds = %40
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* %16, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 (i8*, i32, i8*, i8*, ...) @as_warn_where(i8* %55, i32 %56, i8* %57, i8* %58, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %54, %44
  br label %120

65:                                               ; preds = %27, %23
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @HEX_MAX_THRESHOLD, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @HEX_MAX_THRESHOLD, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %118

73:                                               ; preds = %69
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @HEX_MAX_THRESHOLD, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %118

77:                                               ; preds = %73
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @HEX_MIN_THRESHOLD, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %77
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @HEX_MIN_THRESHOLD, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %118

85:                                               ; preds = %81
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @HEX_MIN_THRESHOLD, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %85
  %90 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i8* %90, i8** %15, align 8
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i8*, i8** %15, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i64, i64* %10, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i64, i64* %11, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 (i8*, i32, i8*, i8*, ...) @as_bad_where(i8* %94, i32 %95, i8* %96, i8* %97, i32 %99, i32 %101, i32 %103)
  br label %117

105:                                              ; preds = %89
  %106 = load i8*, i8** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i64, i64* %10, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i64, i64* %11, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 (i8*, i32, i8*, i8*, ...) @as_warn_where(i8* %106, i32 %107, i8* %108, i8* %109, i32 %111, i32 %113, i32 %115)
  br label %117

117:                                              ; preds = %105, %93
  br label %120

118:                                              ; preds = %85, %81, %77, %73, %69, %65
  %119 = call i32 (...) @abort() #3
  unreachable

120:                                              ; preds = %64, %117
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @as_bad_where(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @as_warn_where(i8*, i32, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
