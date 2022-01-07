; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_policy.c_ima_parse_add_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_policy.c_ima_parse_add_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_measure_rule_entry = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"update_policy\00", align 1
@ima_measure = common dso_local global i32* null, align 8
@measure_default_rules = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"already exists\00", align 1
@EACCES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"-ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"invalid policy\00", align 1
@ima_measure_mutex = common dso_local global i32 0, align 4
@measure_policy_rules = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_parse_add_rule(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ima_measure_rule_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** @ima_measure, align 8
  %11 = icmp ne i32* %10, @measure_default_rules
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @AUDIT_INTEGRITY_STATUS, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @EACCES, align 4
  %16 = sub nsw i32 0, %15
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @integrity_audit_msg(i32 %13, i32* null, i32* null, i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @EACCES, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %73

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ima_measure_rule_entry* @kzalloc(i32 4, i32 %22)
  store %struct.ima_measure_rule_entry* %23, %struct.ima_measure_rule_entry** %6, align 8
  %24 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %25 = icmp ne %struct.ima_measure_rule_entry* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @AUDIT_INTEGRITY_STATUS, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @integrity_audit_msg(i32 %27, i32* null, i32* null, i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %73

35:                                               ; preds = %21
  %36 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %37 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %36, i32 0, i32 0
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %49 = call i32 @kfree(%struct.ima_measure_rule_entry* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %2, align 4
  br label %73

51:                                               ; preds = %35
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %54 = call i32 @ima_parse_rule(i8* %52, %struct.ima_measure_rule_entry* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %59 = call i32 @kfree(%struct.ima_measure_rule_entry* %58)
  %60 = load i32, i32* @AUDIT_INTEGRITY_STATUS, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @integrity_audit_msg(i32 %60, i32* null, i32* null, i8* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %73

66:                                               ; preds = %51
  %67 = call i32 @mutex_lock(i32* @ima_measure_mutex)
  %68 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %69 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %68, i32 0, i32 0
  %70 = call i32 @list_add_tail(i32* %69, i32* @measure_policy_rules)
  %71 = call i32 @mutex_unlock(i32* @ima_measure_mutex)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %57, %47, %26, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @integrity_audit_msg(i32, i32*, i32*, i8*, i8*, i32, i32) #1

declare dso_local %struct.ima_measure_rule_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kfree(%struct.ima_measure_rule_entry*) #1

declare dso_local i32 @ima_parse_rule(i8*, %struct.ima_measure_rule_entry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
