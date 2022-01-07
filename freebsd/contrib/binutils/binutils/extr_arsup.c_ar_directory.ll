; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@outfile = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Can't open file %s\0A\00", align 1
@ar_directory_doer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar_directory(i8* %0, %struct.list* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.list* %1, %struct.list** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* @open_inarch(i8* %8, i8* null)
  store i32* %9, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %14, i64* @outfile, align 8
  %15 = load i64, i64* @outfile, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i64, i64* @stdout, align 8
  store i64 %18, i64* @outfile, align 8
  %19 = load i32, i32* @stderr, align 4
  %20 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @fprintf(i32 %19, i8* %20, i8* %21)
  store i8* null, i8** %6, align 8
  br label %23

23:                                               ; preds = %17, %12
  br label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @stdout, align 8
  store i64 %25, i64* @outfile, align 8
  br label %26

26:                                               ; preds = %24, %23
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @ar_directory_doer, align 4
  %29 = load %struct.list*, %struct.list** %5, align 8
  %30 = call i32 @map_over_list(i32* %27, i32 %28, %struct.list* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @bfd_close(i32* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i64, i64* @outfile, align 8
  %37 = call i32 @fclose(i64 %36)
  br label %38

38:                                               ; preds = %35, %26
  ret void
}

declare dso_local i32* @open_inarch(i8*, i8*) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @map_over_list(i32*, i32, %struct.list*) #1

declare dso_local i32 @bfd_close(i32*) #1

declare dso_local i32 @fclose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
