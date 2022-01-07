; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_env.c_parse_schedule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_env.c_parse_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"OMP_SCHEDULE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@GFS_STATIC = common dso_local global i32 0, align 4
@gomp_run_sched_var = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@GFS_DYNAMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"guided\00", align 1
@GFS_GUIDED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@gomp_run_sched_chunk = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"Unknown value for environment variable OMP_SCHEDULE\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Invalid value for chunk size in environment variable OMP_SCHEDULE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parse_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_schedule() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %108

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %14, %8
  %10 = load i8*, i8** %1, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @isspace(i8 zeroext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %1, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %1, align 8
  br label %9

17:                                               ; preds = %9
  %18 = load i8*, i8** %1, align 8
  %19 = call i64 @strncasecmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @GFS_STATIC, align 4
  store i32 %22, i32* @gomp_run_sched_var, align 4
  %23 = load i8*, i8** %1, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 6
  store i8* %24, i8** %1, align 8
  br label %44

25:                                               ; preds = %17
  %26 = load i8*, i8** %1, align 8
  %27 = call i64 @strncasecmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @GFS_DYNAMIC, align 4
  store i32 %30, i32* @gomp_run_sched_var, align 4
  %31 = load i8*, i8** %1, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 7
  store i8* %32, i8** %1, align 8
  br label %43

33:                                               ; preds = %25
  %34 = load i8*, i8** %1, align 8
  %35 = call i64 @strncasecmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @GFS_GUIDED, align 4
  store i32 %38, i32* @gomp_run_sched_var, align 4
  %39 = load i8*, i8** %1, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 6
  store i8* %40, i8** %1, align 8
  br label %42

41:                                               ; preds = %33
  br label %104

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %21
  br label %45

45:                                               ; preds = %50, %44
  %46 = load i8*, i8** %1, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isspace(i8 zeroext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %1, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %1, align 8
  br label %45

53:                                               ; preds = %45
  %54 = load i8*, i8** %1, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %108

59:                                               ; preds = %53
  %60 = load i8*, i8** %1, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %1, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 44
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %104

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %72, %66
  %68 = load i8*, i8** %1, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isspace(i8 zeroext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %1, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %1, align 8
  br label %67

75:                                               ; preds = %67
  %76 = load i8*, i8** %1, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %106

81:                                               ; preds = %75
  store i64 0, i64* @errno, align 8
  %82 = load i8*, i8** %1, align 8
  %83 = call i64 @strtoul(i8* %82, i8** %2, i32 10)
  store i64 %83, i64* %3, align 8
  %84 = load i64, i64* @errno, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %106

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %93, %87
  %89 = load i8*, i8** %2, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @isspace(i8 zeroext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %2, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %2, align 8
  br label %88

96:                                               ; preds = %88
  %97 = load i8*, i8** %2, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %106

102:                                              ; preds = %96
  %103 = load i64, i64* %3, align 8
  store i64 %103, i64* @gomp_run_sched_chunk, align 8
  br label %108

104:                                              ; preds = %65, %41
  %105 = call i32 @gomp_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %108

106:                                              ; preds = %101, %86, %80
  %107 = call i32 @gomp_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %104, %102, %58, %7
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @gomp_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
