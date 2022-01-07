; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_parse_probe_vars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_parse_probe_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_type = type { i8*, i32* }
%struct.fetch_param = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@FETCH_MTD_retval = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@DEFAULT_FETCH_TYPE_STR = common dso_local global i8* null, align 8
@fetch_stack_address = common dso_local global i32 0, align 4
@PARAM_MAX_STACK = common dso_local global i64 0, align 8
@FETCH_MTD_stack = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fetch_type*, %struct.fetch_param*, i32)* @parse_probe_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_probe_vars(i8* %0, %struct.fetch_type* %1, %struct.fetch_param* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fetch_type*, align 8
  %7 = alloca %struct.fetch_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.fetch_type* %1, %struct.fetch_type** %6, align 8
  store %struct.fetch_param* %2, %struct.fetch_param** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.fetch_type*, %struct.fetch_type** %6, align 8
  %19 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @FETCH_MTD_retval, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fetch_param*, %struct.fetch_param** %7, align 8
  %25 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %17
  br label %97

30:                                               ; preds = %4
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strncmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %93

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 5
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.fetch_type*, %struct.fetch_type** %6, align 8
  %42 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** @DEFAULT_FETCH_TYPE_STR, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @fetch_stack_address, align 4
  %49 = load %struct.fetch_param*, %struct.fetch_param** %7, align 8
  %50 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %51, %47
  br label %92

55:                                               ; preds = %34
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isdigit(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %55
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 5
  %64 = call i32 @strict_strtoul(i8* %63, i32 10, i64* %10)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @PARAM_MAX_STACK, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %61
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %87

74:                                               ; preds = %67
  %75 = load %struct.fetch_type*, %struct.fetch_type** %6, align 8
  %76 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @FETCH_MTD_stack, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fetch_param*, %struct.fetch_param** %7, align 8
  %82 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i64, i64* %10, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.fetch_param*, %struct.fetch_param** %7, align 8
  %86 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %74, %71
  br label %91

88:                                               ; preds = %55
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %87
  br label %92

92:                                               ; preds = %91, %54
  br label %96

93:                                               ; preds = %30
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %93, %92
  br label %97

97:                                               ; preds = %96, %29
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
