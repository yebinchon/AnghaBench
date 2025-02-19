; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_print_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_print_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.line_map = type { i32, i64 }

@print = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@flag_no_line_commands = common dso_local global i32 0, align 4
@line_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"# %u \22%s\22%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" 3 4\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" 3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @print_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_line(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.line_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @print, i32 0, i32 2), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @print, i32 0, i32 1), align 4
  %13 = call i32 @putc(i8 signext 10, i32 %12)
  br label %14

14:                                               ; preds = %11, %2
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @print, i32 0, i32 2), align 8
  %15 = load i32, i32* @flag_no_line_commands, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %70, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.line_map* @linemap_lookup(i32* @line_table, i32 %18)
  store %struct.line_map* %19, %struct.line_map** %5, align 8
  %20 = load %struct.line_map*, %struct.line_map** %5, align 8
  %21 = getelementptr inbounds %struct.line_map, %struct.line_map* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @strlen(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = mul i64 %24, 4
  %26 = add i64 %25, 1
  %27 = call i64 @alloca(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %7, align 8
  %29 = load %struct.line_map*, %struct.line_map** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @SOURCE_LINE(%struct.line_map* %29, i32 %30)
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @print, i32 0, i32 0), align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.line_map*, %struct.line_map** %5, align 8
  %34 = getelementptr inbounds %struct.line_map, %struct.line_map* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i64, i64* %6, align 8
  %38 = call i8* @cpp_quote_string(i8* %32, i8* %36, i64 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  store i8 0, i8* %39, align 1
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @print, i32 0, i32 1), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @print, i32 0, i32 0), align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %17
  br label %46

44:                                               ; preds = %17
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @print, i32 0, i32 0), align 8
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 1, %43 ], [ %45, %44 ]
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %48, i8* %49)
  %51 = load %struct.line_map*, %struct.line_map** %5, align 8
  %52 = getelementptr inbounds %struct.line_map, %struct.line_map* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @print, i32 0, i32 1), align 4
  %57 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %67

58:                                               ; preds = %46
  %59 = load %struct.line_map*, %struct.line_map** %5, align 8
  %60 = getelementptr inbounds %struct.line_map, %struct.line_map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @print, i32 0, i32 1), align 4
  %65 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %58
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @print, i32 0, i32 1), align 4
  %69 = call i32 @putc(i8 signext 10, i32 %68)
  br label %70

70:                                               ; preds = %67, %14
  ret void
}

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local %struct.line_map* @linemap_lookup(i32*, i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i32 @SOURCE_LINE(%struct.line_map*, i32) #1

declare dso_local i8* @cpp_quote_string(i8*, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
