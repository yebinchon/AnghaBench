; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_mkftbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_mkftbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.yytbl_data = type { i32, i32*, i64, i32 }

@num_rules = common dso_local global i32 0, align 4
@YYTD_ID_ACCEPT = common dso_local global i32 0, align 4
@YYTD_DATA32 = common dso_local global i32 0, align 4
@lastdfa = common dso_local global i32 0, align 4
@dfaacc = common dso_local global %struct.TYPE_2__* null, align 8
@end_of_buffer_state = common dso_local global i64 0, align 8
@trace = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"state # %d accepts: [%d]\0A\00", align 1
@yydmap_buf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"\09{YYTD_ID_ACCEPT, (void**)&yy_accept, sizeof(%s)},\0A\00", align 1
@long_align = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"flex_int32_t\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"flex_int16_t\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.yytbl_data* @mkftbl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.yytbl_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @num_rules, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %2, align 4
  store i32* null, i32** %4, align 8
  %8 = call i64 @calloc(i32 1, i32 32)
  %9 = inttoptr i64 %8 to %struct.yytbl_data*
  store %struct.yytbl_data* %9, %struct.yytbl_data** %3, align 8
  %10 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %11 = load i32, i32* @YYTD_ID_ACCEPT, align 4
  %12 = call i32 @yytbl_data_init(%struct.yytbl_data* %10, i32 %11)
  %13 = load i32, i32* @YYTD_DATA32, align 4
  %14 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %15 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %19 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @lastdfa, align 4
  %21 = add nsw i32 %20, 1
  %22 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %23 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %25 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @calloc(i32 %26, i32 4)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %4, align 8
  %29 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %30 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %33 = load i64, i64* @end_of_buffer_state, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  store i32 1, i32* %1, align 4
  br label %36

36:                                               ; preds = %64, %0
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @lastdfa, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfaacc, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i64, i64* @trace, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %40
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @fprintf(i32 %58, i8* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %54, %40
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %36

67:                                               ; preds = %36
  %68 = load i64, i64* @long_align, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %72 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  ret %struct.yytbl_data* %73
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @yytbl_data_init(%struct.yytbl_data*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @buf_prints(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
