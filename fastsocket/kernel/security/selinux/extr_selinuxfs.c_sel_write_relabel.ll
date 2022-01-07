; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_write_relabel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_write_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@current = common dso_local global i32 0, align 4
@SECURITY__COMPUTE_RELABEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s %s %hu\00", align 1
@SIMPLE_TRANSACTION_LIMIT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @sel_write_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_write_relabel(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* @current, align 4
  %18 = load i32, i32* @SECURITY__COMPUTE_RELABEL, align 4
  %19 = call i32 @task_has_security(i32 %17, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %4, align 4
  br label %107

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i64 %28, i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %4, align 4
  br label %107

35:                                               ; preds = %24
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i64 %37, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %103

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %48, i32* %13)
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %100

52:                                               ; preds = %43
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = add nsw i64 %55, 1
  %57 = call i32 @security_context_to_sid(i8* %53, i64 %56, i32* %10)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %100

61:                                               ; preds = %52
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add nsw i64 %64, 1
  %66 = call i32 @security_context_to_sid(i8* %62, i64 %65, i32* %11)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %100

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @security_change_sid(i32 %71, i32 %72, i32 %73, i32* %12)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %100

78:                                               ; preds = %70
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @security_sid_to_context(i32 %79, i8** %15, i32* %16)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %100

84:                                               ; preds = %78
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @SIMPLE_TRANSACTION_LIMIT, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @ERANGE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %97

91:                                               ; preds = %84
  %92 = load i8*, i8** %6, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @memcpy(i8* %92, i8* %93, i32 %94)
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i8*, i8** %15, align 8
  %99 = call i32 @kfree(i8* %98)
  br label %100

100:                                              ; preds = %97, %83, %77, %69, %60, %51
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @kfree(i8* %101)
  br label %103

103:                                              ; preds = %100, %42
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @kfree(i8* %104)
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %33, %22
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @task_has_security(i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @security_context_to_sid(i8*, i64, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @security_change_sid(i32, i32, i32, i32*) #1

declare dso_local i32 @security_sid_to_context(i32, i8**, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
