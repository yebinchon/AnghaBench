; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_context_to_sid_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_context_to_sid_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i8*, i32 }

@ss_initialized = common dso_local global i32 0, align 4
@SECINITSID_NUM = common dso_local global i32 0, align 4
@initial_sid_to_string = common dso_local global i32* null, align 8
@SECINITSID_KERNEL = common dso_local global i32 0, align 4
@SECSID_NULL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@policy_rwlock = common dso_local global i32 0, align 4
@policydb = common dso_local global i32 0, align 4
@sidtab = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32, i32, i32)* @security_context_to_sid_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @security_context_to_sid_core(i8* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.context, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* null, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* @ss_initialized, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %6
  store i32 1, i32* %18, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %18, align 4
  %24 = load i32, i32* @SECINITSID_NUM, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i32*, i32** @initial_sid_to_string, align 8
  %28 = load i32, i32* %18, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @strcmp(i32 %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %18, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %7, align 4
  br label %114

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %18, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %18, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i32, i32* @SECINITSID_KERNEL, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %7, align 4
  br label %114

45:                                               ; preds = %6
  %46 = load i32, i32* @SECSID_NULL, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %12, align 4
  %51 = call i8* @kmalloc(i32 %49, i32 %50)
  store i8* %51, i8** %14, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %114

57:                                               ; preds = %45
  %58 = load i8*, i8** %14, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @memcpy(i8* %58, i8* %59, i32 %60)
  %62 = load i8*, i8** %14, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %57
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i8* @kstrdup(i8* %69, i32 %70)
  store i8* %71, i8** %15, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %14, align 8
  %76 = call i32 @kfree(i8* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %114

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %57
  %81 = call i32 @read_lock(i32* @policy_rwlock)
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @string_to_context_struct(i32* @policydb, i32* @sidtab, i8* %82, i32 %83, %struct.context* %16, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %80
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 1
  store i32 %96, i32* %97, align 8
  store i8* null, i8** %15, align 8
  br label %103

98:                                               ; preds = %90, %80
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %107

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %93
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @sidtab_context_to_sid(i32* @sidtab, %struct.context* %16, i32* %104)
  store i32 %105, i32* %17, align 4
  %106 = call i32 @context_destroy(%struct.context* %16)
  br label %107

107:                                              ; preds = %103, %101
  %108 = call i32 @read_unlock(i32* @policy_rwlock)
  %109 = load i8*, i8** %14, align 8
  %110 = call i32 @kfree(i8* %109)
  %111 = load i8*, i8** %15, align 8
  %112 = call i32 @kfree(i8* %111)
  %113 = load i32, i32* %17, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %107, %74, %54, %42, %35
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @string_to_context_struct(i32*, i32*, i8*, i32, %struct.context*, i32) #1

declare dso_local i32 @sidtab_context_to_sid(i32*, %struct.context*, i32*) #1

declare dso_local i32 @context_destroy(%struct.context*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
