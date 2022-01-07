; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_read_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_read_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policy_file = type { i64, i8* }

@ss_initialized = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@policy_rwlock = common dso_local global i32 0, align 4
@policydb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_read_policy(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.policy_file, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i32, i32* @ss_initialized, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = call i64 (...) @security_policydb_len()
  %15 = load i64*, i64** %5, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i8* @vmalloc_user(i64 %17)
  %19 = load i8**, i8*** %4, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %13
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.policy_file, %struct.policy_file* %7, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.policy_file, %struct.policy_file* %7, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = call i32 @read_lock(i32* @policy_rwlock)
  %34 = call i32 @policydb_write(i32* @policydb, %struct.policy_file* %7)
  store i32 %34, i32* %6, align 4
  %35 = call i32 @read_unlock(i32* @policy_rwlock)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %49

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.policy_file, %struct.policy_file* %7, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load i8**, i8*** %4, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = sub i64 %43, %46
  %48 = load i64*, i64** %5, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %40, %38, %23, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @security_policydb_len(...) #1

declare dso_local i8* @vmalloc_user(i64) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @policydb_write(i32*, %struct.policy_file*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
