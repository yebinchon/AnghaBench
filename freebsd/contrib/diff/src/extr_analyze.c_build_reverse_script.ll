; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_build_reverse_script.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_build_reverse_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.change = type { i32 }
%struct.file_data = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.change* (%struct.file_data*)* @build_reverse_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.change* @build_reverse_script(%struct.file_data* %0) #0 {
  %2 = alloca %struct.file_data*, align 8
  %3 = alloca %struct.change*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.file_data* %0, %struct.file_data** %2, align 8
  store %struct.change* null, %struct.change** %3, align 8
  %12 = load %struct.file_data*, %struct.file_data** %2, align 8
  %13 = getelementptr inbounds %struct.file_data, %struct.file_data* %12, i64 0
  %14 = getelementptr inbounds %struct.file_data, %struct.file_data* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load %struct.file_data*, %struct.file_data** %2, align 8
  %17 = getelementptr inbounds %struct.file_data, %struct.file_data* %16, i64 1
  %18 = getelementptr inbounds %struct.file_data, %struct.file_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load %struct.file_data*, %struct.file_data** %2, align 8
  %21 = getelementptr inbounds %struct.file_data, %struct.file_data* %20, i64 0
  %22 = getelementptr inbounds %struct.file_data, %struct.file_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.file_data*, %struct.file_data** %2, align 8
  %25 = getelementptr inbounds %struct.file_data, %struct.file_data* %24, i64 1
  %26 = getelementptr inbounds %struct.file_data, %struct.file_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %84, %1
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ true, %28 ], [ %35, %32 ]
  br i1 %37, label %38, label %89

38:                                               ; preds = %36
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = or i32 %43, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %38
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %60, %51
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %54

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %70, %63
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %64

73:                                               ; preds = %64
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %10, align 8
  %78 = sub i64 %76, %77
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %11, align 8
  %81 = sub i64 %79, %80
  %82 = load %struct.change*, %struct.change** %3, align 8
  %83 = call %struct.change* @add_change(i64 %74, i64 %75, i64 %78, i64 %81, %struct.change* %82)
  store %struct.change* %83, %struct.change** %3, align 8
  br label %84

84:                                               ; preds = %73, %38
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %28

89:                                               ; preds = %36
  %90 = load %struct.change*, %struct.change** %3, align 8
  ret %struct.change* %90
}

declare dso_local %struct.change* @add_change(i64, i64, i64, i64, %struct.change*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
