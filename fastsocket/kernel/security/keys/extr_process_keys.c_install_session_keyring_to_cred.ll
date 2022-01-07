; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_install_session_keyring_to_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_install_session_keyring_to_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.key* }
%struct.key = type { i32 }

@KEY_ALLOC_QUOTA_OVERRUN = common dso_local global i64 0, align 8
@KEY_ALLOC_IN_QUOTA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"_ses\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.key*)* @install_session_keyring_to_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_session_keyring_to_cred(%struct.cred* %0, %struct.key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.key*, align 8
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.key*, %struct.key** %5, align 8
  %10 = icmp ne %struct.key* %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @KEY_ALLOC_QUOTA_OVERRUN, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.cred*, %struct.cred** %4, align 8
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.key*, %struct.key** %16, align 8
  %18 = icmp ne %struct.key* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i64, i64* @KEY_ALLOC_IN_QUOTA, align 8
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %19, %11
  %22 = load %struct.cred*, %struct.cred** %4, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cred*, %struct.cred** %4, align 8
  %26 = getelementptr inbounds %struct.cred, %struct.cred* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cred*, %struct.cred** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call %struct.key* @keyring_alloc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, %struct.cred* %28, i64 %29, i32* null)
  store %struct.key* %30, %struct.key** %5, align 8
  %31 = load %struct.key*, %struct.key** %5, align 8
  %32 = call i64 @IS_ERR(%struct.key* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.key*, %struct.key** %5, align 8
  %36 = call i32 @PTR_ERR(%struct.key* %35)
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %21
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.key*, %struct.key** %5, align 8
  %40 = getelementptr inbounds %struct.key, %struct.key* %39, i32 0, i32 0
  %41 = call i32 @atomic_inc(i32* %40)
  br label %42

42:                                               ; preds = %38, %37
  %43 = load %struct.cred*, %struct.cred** %4, align 8
  %44 = getelementptr inbounds %struct.cred, %struct.cred* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.cred*, %struct.cred** %4, align 8
  %49 = getelementptr inbounds %struct.cred, %struct.cred* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.key*, %struct.key** %51, align 8
  store %struct.key* %52, %struct.key** %7, align 8
  %53 = load %struct.cred*, %struct.cred** %4, align 8
  %54 = getelementptr inbounds %struct.cred, %struct.cred* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load %struct.key*, %struct.key** %56, align 8
  %58 = load %struct.key*, %struct.key** %5, align 8
  %59 = call i32 @rcu_assign_pointer(%struct.key* %57, %struct.key* %58)
  %60 = load %struct.cred*, %struct.cred** %4, align 8
  %61 = getelementptr inbounds %struct.cred, %struct.cred* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = load %struct.key*, %struct.key** %7, align 8
  %66 = icmp ne %struct.key* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %42
  %68 = call i32 (...) @synchronize_rcu()
  %69 = load %struct.key*, %struct.key** %7, align 8
  %70 = call i32 @key_put(%struct.key* %69)
  br label %71

71:                                               ; preds = %67, %42
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %34
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.key*, %struct.key*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
