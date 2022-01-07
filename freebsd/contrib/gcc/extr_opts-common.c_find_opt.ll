; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts-common.c_find_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts-common.c_find_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl_option = type { i64, i32, i64, i64 }

@cl_options_count = common dso_local global i64 0, align 8
@cl_options = common dso_local global %struct.cl_option* null, align 8
@CL_JOINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_opt(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cl_option*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %13 = load i64, i64* @cl_options_count, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %44, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = sub i64 %15, %16
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %20, %21
  %23 = udiv i64 %22, 2
  store i64 %23, i64* %8, align 8
  %24 = load %struct.cl_option*, %struct.cl_option** @cl_options, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %24, i64 %25
  %27 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.cl_option*, %struct.cl_option** @cl_options, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %30, i64 %31
  %33 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @strncmp(i8* %29, i64 %35, i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %19
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %7, align 8
  br label %44

42:                                               ; preds = %19
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %42, %40
  br label %14

45:                                               ; preds = %14
  %46 = load i64, i64* @cl_options_count, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %97, %45
  %48 = load %struct.cl_option*, %struct.cl_option** @cl_options, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %48, i64 %49
  store %struct.cl_option* %50, %struct.cl_option** %12, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.cl_option*, %struct.cl_option** %12, align 8
  %53 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = load %struct.cl_option*, %struct.cl_option** %12, align 8
  %57 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @strncmp(i8* %51, i64 %55, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %47
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.cl_option*, %struct.cl_option** %12, align 8
  %64 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %61
  %71 = load %struct.cl_option*, %struct.cl_option** %12, align 8
  %72 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CL_JOINED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %70, %61
  %78 = load %struct.cl_option*, %struct.cl_option** %12, align 8
  %79 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i64, i64* %6, align 8
  store i64 %85, i64* %3, align 8
  br label %103

86:                                               ; preds = %77
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @cl_options_count, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i64, i64* %6, align 8
  store i64 %91, i64* %10, align 8
  br label %92

92:                                               ; preds = %90, %86
  br label %93

93:                                               ; preds = %92, %70, %47
  %94 = load %struct.cl_option*, %struct.cl_option** %12, align 8
  %95 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @cl_options_count, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %47, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %10, align 8
  store i64 %102, i64* %3, align 8
  br label %103

103:                                              ; preds = %101, %84
  %104 = load i64, i64* %3, align 8
  ret i64 %104
}

declare dso_local i32 @strncmp(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
