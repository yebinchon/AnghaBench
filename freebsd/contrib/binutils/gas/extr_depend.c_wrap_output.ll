; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_depend.c_wrap_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_depend.c_wrap_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@column = common dso_local global i32 0, align 4
@MAX_COLUMNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" \\\0A \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @wrap_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrap_output(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @quote_string_for_make(i32* null, i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %55

13:                                               ; preds = %3
  %14 = load i32, i32* @column, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i32, i32* @MAX_COLUMNS, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sub nsw i32 %18, 2
  %20 = load i32, i32* @column, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @fprintf(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @column, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %24
  br label %31

31:                                               ; preds = %30, %16, %13
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @putc(i32 %35, i32* %36)
  %38 = load i32, i32* @column, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @column, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @quote_string_for_make(i32* %41, i8* %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @column, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* @column, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 58
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @putc(i32 %50, i32* %51)
  %53 = load i32, i32* @column, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @column, align 4
  br label %55

55:                                               ; preds = %12, %49, %40
  ret void
}

declare dso_local i32 @quote_string_for_make(i32*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @putc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
