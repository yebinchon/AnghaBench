; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_input_suffix_matches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_input_suffix_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@input_file_compiler = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"@assembler\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"@assembler-with-cpp\00", align 1
@input_suffix = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @input_suffix_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_suffix_matches(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input_file_compiler, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input_file_compiler, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 115
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input_file_compiler, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @strcmp(i64 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %73

31:                                               ; preds = %18
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 83
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input_file_compiler, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @strcmp(i64 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %73

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %13, %10, %2
  %46 = load i8*, i8** @input_suffix, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i8*, i8** @input_suffix, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @strncmp(i8* %49, i8* %50, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %48
  %60 = load i8*, i8** @input_suffix, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = getelementptr inbounds i8, i8* %60, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br label %70

70:                                               ; preds = %59, %48, %45
  %71 = phi i1 [ false, %48 ], [ false, %45 ], [ %69, %59 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %36, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
