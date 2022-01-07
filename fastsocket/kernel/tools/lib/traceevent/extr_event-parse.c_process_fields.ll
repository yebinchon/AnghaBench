; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_process_fields.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_process_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.print_flag_sym = type { %struct.print_flag_sym*, i32*, i32* }
%struct.print_arg = type { i32 }

@EVENT_OP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@EVENT_ERROR = common dso_local global i32 0, align 4
@EVENT_DELIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_format*, %struct.print_flag_sym**, i8**)* @process_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_fields(%struct.event_format* %0, %struct.print_flag_sym** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca %struct.print_flag_sym**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.print_arg*, align 8
  %10 = alloca %struct.print_flag_sym*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.event_format* %0, %struct.event_format** %5, align 8
  store %struct.print_flag_sym** %1, %struct.print_flag_sym*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store %struct.print_arg* null, %struct.print_arg** %9, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %11, align 8
  br label %15

15:                                               ; preds = %131, %3
  %16 = load i8*, i8** %11, align 8
  %17 = call i32 @free_token(i8* %16)
  %18 = call i32 @read_token_item(i8** %11)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* @EVENT_OP, align 4
  %22 = call i64 @test_type_token(i32 %19, i8* %20, i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %133

25:                                               ; preds = %15
  %26 = call %struct.print_arg* (...) @alloc_arg()
  store %struct.print_arg* %26, %struct.print_arg** %9, align 8
  %27 = load %struct.print_arg*, %struct.print_arg** %9, align 8
  %28 = icmp ne %struct.print_arg* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %140

30:                                               ; preds = %25
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @free_token(i8* %31)
  %33 = load %struct.event_format*, %struct.event_format** %5, align 8
  %34 = load %struct.print_arg*, %struct.print_arg** %9, align 8
  %35 = call i32 @process_arg(%struct.event_format* %33, %struct.print_arg* %34, i8** %11)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EVENT_OP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.event_format*, %struct.event_format** %5, align 8
  %41 = load %struct.print_arg*, %struct.print_arg** %9, align 8
  %42 = call i32 @process_op(%struct.event_format* %40, %struct.print_arg* %41, i8** %11)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @EVENT_ERROR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %140

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* @EVENT_DELIM, align 4
  %52 = call i64 @test_type_token(i32 %49, i8* %50, i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %140

55:                                               ; preds = %48
  %56 = call %struct.print_flag_sym* @calloc(i32 1, i32 24)
  store %struct.print_flag_sym* %56, %struct.print_flag_sym** %10, align 8
  %57 = load %struct.print_flag_sym*, %struct.print_flag_sym** %10, align 8
  %58 = icmp ne %struct.print_flag_sym* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %140

60:                                               ; preds = %55
  %61 = load %struct.print_arg*, %struct.print_arg** %9, align 8
  %62 = call i8* @arg_eval(%struct.print_arg* %61)
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %137

66:                                               ; preds = %60
  %67 = load i8*, i8** %12, align 8
  %68 = call i8* @strdup(i8* %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.print_flag_sym*, %struct.print_flag_sym** %10, align 8
  %71 = getelementptr inbounds %struct.print_flag_sym, %struct.print_flag_sym* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  %72 = load %struct.print_flag_sym*, %struct.print_flag_sym** %10, align 8
  %73 = getelementptr inbounds %struct.print_flag_sym, %struct.print_flag_sym* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %137

77:                                               ; preds = %66
  %78 = load %struct.print_arg*, %struct.print_arg** %9, align 8
  %79 = call i32 @free_arg(%struct.print_arg* %78)
  %80 = call %struct.print_arg* (...) @alloc_arg()
  store %struct.print_arg* %80, %struct.print_arg** %9, align 8
  %81 = load %struct.print_arg*, %struct.print_arg** %9, align 8
  %82 = icmp ne %struct.print_arg* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %140

84:                                               ; preds = %77
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @free_token(i8* %85)
  %87 = load %struct.event_format*, %struct.event_format** %5, align 8
  %88 = load %struct.print_arg*, %struct.print_arg** %9, align 8
  %89 = call i32 @process_arg(%struct.event_format* %87, %struct.print_arg* %88, i8** %11)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* @EVENT_OP, align 4
  %93 = call i64 @test_type_token(i32 %90, i8* %91, i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %137

96:                                               ; preds = %84
  %97 = load %struct.print_arg*, %struct.print_arg** %9, align 8
  %98 = call i8* @arg_eval(%struct.print_arg* %97)
  store i8* %98, i8** %12, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %137

102:                                              ; preds = %96
  %103 = load i8*, i8** %12, align 8
  %104 = call i8* @strdup(i8* %103)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.print_flag_sym*, %struct.print_flag_sym** %10, align 8
  %107 = getelementptr inbounds %struct.print_flag_sym, %struct.print_flag_sym* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load %struct.print_flag_sym*, %struct.print_flag_sym** %10, align 8
  %109 = getelementptr inbounds %struct.print_flag_sym, %struct.print_flag_sym* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %137

113:                                              ; preds = %102
  %114 = load %struct.print_arg*, %struct.print_arg** %9, align 8
  %115 = call i32 @free_arg(%struct.print_arg* %114)
  store %struct.print_arg* null, %struct.print_arg** %9, align 8
  %116 = load %struct.print_flag_sym*, %struct.print_flag_sym** %10, align 8
  %117 = load %struct.print_flag_sym**, %struct.print_flag_sym*** %6, align 8
  store %struct.print_flag_sym* %116, %struct.print_flag_sym** %117, align 8
  %118 = load %struct.print_flag_sym*, %struct.print_flag_sym** %10, align 8
  %119 = getelementptr inbounds %struct.print_flag_sym, %struct.print_flag_sym* %118, i32 0, i32 0
  store %struct.print_flag_sym** %119, %struct.print_flag_sym*** %6, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @free_token(i8* %120)
  %122 = call i32 @read_token_item(i8** %11)
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %113
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @EVENT_DELIM, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi i1 [ false, %123 ], [ %130, %127 ]
  br i1 %132, label %15, label %133

133:                                              ; preds = %131, %24
  %134 = load i8*, i8** %11, align 8
  %135 = load i8**, i8*** %7, align 8
  store i8* %134, i8** %135, align 8
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %4, align 4
  br label %147

137:                                              ; preds = %112, %101, %95, %76, %65
  %138 = load %struct.print_flag_sym*, %struct.print_flag_sym** %10, align 8
  %139 = call i32 @free_flag_sym(%struct.print_flag_sym* %138)
  br label %140

140:                                              ; preds = %137, %83, %59, %54, %47, %29
  %141 = load %struct.print_arg*, %struct.print_arg** %9, align 8
  %142 = call i32 @free_arg(%struct.print_arg* %141)
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @free_token(i8* %143)
  %145 = load i8**, i8*** %7, align 8
  store i8* null, i8** %145, align 8
  %146 = load i32, i32* @EVENT_ERROR, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %140, %133
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @free_token(i8*) #1

declare dso_local i32 @read_token_item(i8**) #1

declare dso_local i64 @test_type_token(i32, i8*, i32, i8*) #1

declare dso_local %struct.print_arg* @alloc_arg(...) #1

declare dso_local i32 @process_arg(%struct.event_format*, %struct.print_arg*, i8**) #1

declare dso_local i32 @process_op(%struct.event_format*, %struct.print_arg*, i8**) #1

declare dso_local %struct.print_flag_sym* @calloc(i32, i32) #1

declare dso_local i8* @arg_eval(%struct.print_arg*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free_arg(%struct.print_arg*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free_flag_sym(%struct.print_flag_sym*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
