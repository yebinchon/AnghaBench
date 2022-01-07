; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_infix_get_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_infix_get_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_parse_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"OP_NONE\00", align 1
@OP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filter_parse_state*, i8)* @infix_get_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @infix_get_op(%struct.filter_parse_state* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.filter_parse_state*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [3 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.filter_parse_state* %0, %struct.filter_parse_state** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %10 = call signext i8 @infix_peek(%struct.filter_parse_state* %9)
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %5, align 1
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %11, i8* %12, align 1
  %13 = load i8, i8* %6, align 1
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %15, align 1
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %51, %2
  %17 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %18 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %16
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %29 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %30 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %28, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %27
  %40 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %41 = call i32 @infix_advance(%struct.filter_parse_state* %40)
  %42 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %43 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %3, align 4
  br label %94

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %16

54:                                               ; preds = %16
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %55, align 1
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %89, %54
  %57 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %58 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %56
  %68 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %69 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %70 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcmp(i8* %68, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %67
  %80 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %81 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %3, align 4
  br label %94

88:                                               ; preds = %67
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %56

92:                                               ; preds = %56
  %93 = load i32, i32* @OP_NONE, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %79, %39
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local signext i8 @infix_peek(%struct.filter_parse_state*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @infix_advance(%struct.filter_parse_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
