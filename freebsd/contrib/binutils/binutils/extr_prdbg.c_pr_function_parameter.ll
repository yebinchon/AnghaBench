; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_function_parameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_function_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32, i32 }

@DEBUG_PARM_REFERENCE = common dso_local global i32 0, align 4
@DEBUG_PARM_REF_REG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@DEBUG_PARM_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"register \00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%s /* %s */\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @pr_function_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_function_parameter(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pr_handle*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [20 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.pr_handle*
  store %struct.pr_handle* %14, %struct.pr_handle** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @DEBUG_PARM_REFERENCE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DEBUG_PARM_REF_REG, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18, %4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @pr_reference_type(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %85

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @substitute_type(%struct.pr_handle* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %85

36:                                               ; preds = %29
  %37 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %38 = call i8* @pop_type(%struct.pr_handle* %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %5, align 4
  br label %85

43:                                               ; preds = %36
  %44 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %45 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %50 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @DEBUG_PARM_REG, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @DEBUG_PARM_REF_REG, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57, %53
  %62 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %63 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %9, align 4
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %69 = load i32, i32* @TRUE, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @print_vma(i32 %67, i8* %68, i32 %69, i32 %70)
  %72 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %73 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %75, i8* %76)
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %81 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %66, %41, %34, %26
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @pr_reference_type(i8*) #1

declare dso_local i32 @substitute_type(%struct.pr_handle*, i8*) #1

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_vma(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
