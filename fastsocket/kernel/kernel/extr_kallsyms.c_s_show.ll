; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_s_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_s_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kallsym_iter* }
%struct.kallsym_iter = type { i32*, i32, i64, i64*, i64 }

@.str = private unnamed_addr constant [16 x i8] c"%pK %c %s\09[%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%pK %c %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @s_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kallsym_iter*, align 8
  %7 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.kallsym_iter*, %struct.kallsym_iter** %9, align 8
  store %struct.kallsym_iter* %10, %struct.kallsym_iter** %6, align 8
  %11 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %12 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %20 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %19, i32 0, i32 3
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %18
  %26 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %27 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %32 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call signext i8 @toupper(i32 %33)
  %35 = sext i8 %34 to i32
  br label %42

36:                                               ; preds = %25
  %37 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %38 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call signext i8 @tolower(i32 %39)
  %41 = sext i8 %40 to i32
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i32 [ %35, %30 ], [ %41, %36 ]
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %7, align 1
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %47 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8, i8* %7, align 1
  %51 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %52 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %55 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %54, i32 0, i32 3
  %56 = load i64*, i64** %55, align 8
  %57 = call i32 (%struct.seq_file*, i8*, i8*, i8, i32*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %49, i8 signext %50, i32* %53, i64* %56)
  br label %72

58:                                               ; preds = %18
  %59 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %60 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %61 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %65 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = trunc i32 %66 to i8
  %68 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %69 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 (%struct.seq_file*, i8*, i8*, i8, i32*, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8 signext %67, i32* %70)
  br label %72

72:                                               ; preds = %58, %42
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local signext i8 @toupper(i32) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8 signext, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
