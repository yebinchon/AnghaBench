; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_kvm_events_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_kvm_events_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i8* }

@record_args = common dso_local global i8** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_kvm_stat*, i32, i8**)* @kvm_events_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_events_record(%struct.perf_kvm_stat* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_kvm_stat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i8**, i8*** @record_args, align 8
  %13 = call i32 @ARRAY_SIZE(i8** %12)
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %13, %14
  %16 = add i32 %15, 2
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add i32 %17, 1
  %19 = call i8** @calloc(i32 %18, i32 8)
  store i8** %19, i8*** %11, align 8
  %20 = load i8**, i8*** %11, align 8
  %21 = icmp eq i8** %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %84

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i8**, i8*** @record_args, align 8
  %29 = call i32 @ARRAY_SIZE(i8** %28)
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i8**, i8*** @record_args, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @STRDUP_FAIL_EXIT(i8* %36)
  %38 = load i8**, i8*** %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %26

45:                                               ; preds = %26
  %46 = call i8* @STRDUP_FAIL_EXIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %47 = load i8**, i8*** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50
  store i8* %46, i8** %51, align 8
  %52 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %5, align 8
  %53 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @STRDUP_FAIL_EXIT(i8* %54)
  %56 = load i8**, i8*** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  store i8* %55, i8** %60, align 8
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %75, %45
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i8**, i8*** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i8**, i8*** %11, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %70, i8** %74, align 8
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %61

80:                                               ; preds = %61
  %81 = load i32, i32* %9, align 4
  %82 = load i8**, i8*** %11, align 8
  %83 = call i32 @cmd_record(i32 %81, i8** %82, i32* null)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %22
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i8* @STRDUP_FAIL_EXIT(i8*) #1

declare dso_local i32 @cmd_record(i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
