; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_my_getExpression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_my_getExpression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@expr_end = common dso_local global i8* null, align 8
@mips_opts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@O_symbol = common dso_local global i64 0, align 8
@FAKE_LABEL_NAME = common dso_local global i32 0, align 4
@now_seg = common dso_local global i64 0, align 8
@frag_now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @my_getExpression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_getExpression(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** @input_line_pointer, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** @input_line_pointer, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = call i32 @expression(%struct.TYPE_5__* %9)
  %11 = load i8*, i8** @input_line_pointer, align 8
  store i8* %11, i8** @expr_end, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** @input_line_pointer, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_opts, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @O_symbol, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @S_GET_NAME(i32 %24)
  %26 = load i32, i32* @FAKE_LABEL_NAME, align 4
  %27 = call i64 @strcmp(i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %21
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @S_GET_SEGMENT(i32 %32)
  %34 = load i64, i64* @now_seg, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @symbol_get_frag(i32 %39)
  %41 = load i64, i64* @frag_now, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @symbol_constant_p(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @S_GET_VALUE(i32 %52)
  store i64 %53, i64* %6, align 8
  %54 = call i64 (...) @frag_now_fix()
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i32 @S_SET_VALUE(i32 %59, i64 %61)
  br label %63

63:                                               ; preds = %56, %49, %43, %36, %29, %21, %15, %2
  ret void
}

declare dso_local i32 @expression(%struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @S_GET_NAME(i32) #1

declare dso_local i64 @S_GET_SEGMENT(i32) #1

declare dso_local i64 @symbol_get_frag(i32) #1

declare dso_local i64 @symbol_constant_p(i32) #1

declare dso_local i64 @S_GET_VALUE(i32) #1

declare dso_local i64 @frag_now_fix(...) #1

declare dso_local i32 @S_SET_VALUE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
