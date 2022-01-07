; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_root.c_proc_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_root.c_proc_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"proc: hidepid value must be between 0 and 2.\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"proc: unrecognized mount option \22%s\22 or missing value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.pid_namespace*)* @proc_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_parse_options(i8* %0, %struct.pid_namespace* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pid_namespace*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %5, align 8
  %12 = load i32, i32* @MAX_OPT_ARGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca %struct.TYPE_4__, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %66, %27, %19
  %21 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %20

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 16
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @tokens, align 4
  %35 = call i32 @match_token(i8* %33, i32 %34, %struct.TYPE_4__* %15)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %63 [
    i32 129, label %37
    i32 128, label %46
  ]

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %39 = call i32 @match_int(%struct.TYPE_4__* %38, i32* %9)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %45 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %66

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %48 = call i32 @match_int(%struct.TYPE_4__* %47, i32* %9)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %51
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %62 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %66

63:                                               ; preds = %28
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

66:                                               ; preds = %59, %42
  br label %20

67:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %63, %57, %50, %41, %18
  %69 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @match_int(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
