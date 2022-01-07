; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_print_number_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_print_number_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i32 }

@outfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%ld%c%ld\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_number_range(i8 signext %0, %struct.file_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.file_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8 %0, i8* %5, align 1
  store %struct.file_data* %1, %struct.file_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.file_data*, %struct.file_data** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @translate_range(%struct.file_data* %11, i32 %12, i32 %13, i64* %9, i64* %10)
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* @outfile, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i8, i8* %5, align 1
  %22 = sext i8 %21 to i32
  %23 = load i64, i64* %10, align 8
  %24 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %22, i64 %23)
  br label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @outfile, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %25, %18
  ret void
}

declare dso_local i32 @translate_range(%struct.file_data*, i32, i32, i64*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
