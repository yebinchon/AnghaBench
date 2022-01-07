; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_dw2_output_call_site_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_dw2_output_call_site_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.call_site_record* }
%struct.call_site_record = type { i32, i64 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"LEHB\00", align 1
@call_site_base = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"LEHE\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@current_function_func_begin_label = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"region %d start\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"landing pad\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dw2_output_call_site_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw2_output_call_site_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.call_site_record*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %71, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %74

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.call_site_record*, %struct.call_site_record** %20, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %21, i64 %23
  store %struct.call_site_record* %24, %struct.call_site_record** %3, align 8
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %26 = load i64, i64* @call_site_base, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %32 = load i64, i64* @call_site_base, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.call_site_record*, %struct.call_site_record** %3, align 8
  %38 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %16
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %43 = load %struct.call_site_record*, %struct.call_site_record** %3, align 8
  %44 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @CODE_LABEL_NUMBER(i64 %45)
  %47 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %41, %16
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %50 = load i8*, i8** @current_function_func_begin_label, align 8
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (i32, i8*, i8*, i8*, ...) @dw2_asm_output_delta(i32 4, i8* %49, i8* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %55 = call i32 (i32, i8*, i8*, i8*, ...) @dw2_asm_output_delta(i32 4, i8* %53, i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.call_site_record*, %struct.call_site_record** %3, align 8
  %57 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %62 = load i8*, i8** @current_function_func_begin_label, align 8
  %63 = call i32 (i32, i8*, i8*, i8*, ...) @dw2_asm_output_delta(i32 4, i8* %61, i8* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %66

64:                                               ; preds = %48
  %65 = call i32 @dw2_asm_output_data(i32 4, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.call_site_record*, %struct.call_site_record** %3, align 8
  %68 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dw2_asm_output_data_uleb128(i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  br label %12

74:                                               ; preds = %12
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @call_site_base, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* @call_site_base, align 8
  ret void
}

declare dso_local i32 @ASM_GENERATE_INTERNAL_LABEL(i8*, i8*, i64) #1

declare dso_local i64 @CODE_LABEL_NUMBER(i64) #1

declare dso_local i32 @dw2_asm_output_delta(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @dw2_asm_output_data(i32, i32, i8*) #1

declare dso_local i32 @dw2_asm_output_data_uleb128(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
