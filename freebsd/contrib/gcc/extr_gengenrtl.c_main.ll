; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengenrtl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengenrtl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@SUCCESS_EXIT_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @find_formats()
  %7 = call i32 (...) @genlegend()
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 104
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 (...) @genheader()
  br label %30

28:                                               ; preds = %18, %10, %2
  %29 = call i32 (...) @gencode()
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* @stdout, align 4
  %32 = call i64 @ferror(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @stdout, align 4
  %36 = call i64 @fflush(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @stdout, align 4
  %40 = call i64 @fclose(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34, %30
  %43 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @SUCCESS_EXIT_CODE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @find_formats(...) #1

declare dso_local i32 @genlegend(...) #1

declare dso_local i32 @genheader(...) #1

declare dso_local i32 @gencode(...) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fflush(i32) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
