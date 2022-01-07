; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_write_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_write_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.av_decision = type { i32, i32, i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@SECURITY__COMPUTE_AV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s %s %hu\00", align 1
@SIMPLE_TRANSACTION_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%x %x %x %x %u %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @sel_write_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_write_access(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.av_decision, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @current, align 4
  %16 = load i32, i32* @SECURITY__COMPUTE_AV, align 4
  %17 = call i32 @task_has_security(i32 %15, i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %4, align 4
  br label %93

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %14, align 4
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i64 %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %4, align 4
  br label %93

33:                                               ; preds = %22
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kzalloc(i64 %35, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %89

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %14, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %46, i32* %12)
  %48 = icmp ne i32 %47, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %86

50:                                               ; preds = %41
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = add nsw i64 %53, 1
  %55 = call i32 @security_context_to_sid(i8* %51, i64 %54, i32* %10)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %86

59:                                               ; preds = %50
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = add nsw i64 %62, 1
  %64 = call i32 @security_context_to_sid(i8* %60, i64 %63, i32* %11)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %86

68:                                               ; preds = %59
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @security_compute_av_user(i32 %69, i32 %70, i32 %71, %struct.av_decision* %13)
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* @SIMPLE_TRANSACTION_LIMIT, align 4
  %75 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %13, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @scnprintf(i8* %73, i32 %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 -1, i32 %78, i32 %80, i32 %82, i32 %84)
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %68, %67, %58, %49
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @kfree(i8* %87)
  br label %89

89:                                               ; preds = %86, %40
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @kfree(i8* %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %31, %20
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @task_has_security(i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @security_context_to_sid(i8*, i64, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @security_compute_av_user(i32, i32, i32, %struct.av_decision*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
