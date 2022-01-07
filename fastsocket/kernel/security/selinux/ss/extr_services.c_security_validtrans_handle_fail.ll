; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_validtrans_handle_fail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_validtrans_handle_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.context = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AUDIT_SELINUX_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"security_validate_transition:  denied for oldcontext=%s newcontext=%s taskcontext=%s tclass=%s\00", align 1
@policydb = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@selinux_enforcing = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.context*, %struct.context*, i32)* @security_validtrans_handle_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @security_validtrans_handle_fail(%struct.context* %0, %struct.context* %1, %struct.context* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.context*, align 8
  %7 = alloca %struct.context*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %6, align 8
  store %struct.context* %1, %struct.context** %7, align 8
  store %struct.context* %2, %struct.context** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %16 = load %struct.context*, %struct.context** %6, align 8
  %17 = call i64 @context_struct_to_string(%struct.context* %16, i8** %10, i32* %13)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %46

20:                                               ; preds = %4
  %21 = load %struct.context*, %struct.context** %7, align 8
  %22 = call i64 @context_struct_to_string(%struct.context* %21, i8** %11, i32* %14)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %46

25:                                               ; preds = %20
  %26 = load %struct.context*, %struct.context** %8, align 8
  %27 = call i64 @context_struct_to_string(%struct.context* %26, i8** %12, i32* %15)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %46

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = load i32, i32* @AUDIT_SELINUX_ERR, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @policydb, i32 0, i32 0), align 8
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @audit_log(i32 %33, i32 %34, i32 %35, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37, i8* %38, i32 %44)
  br label %46

46:                                               ; preds = %30, %29, %24, %19
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @kfree(i8* %47)
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @kfree(i8* %51)
  %53 = load i32, i32* @selinux_enforcing, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %55
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @context_struct_to_string(%struct.context*, i8**, i32*) #1

declare dso_local i32 @audit_log(i32, i32, i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
