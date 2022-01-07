; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_install_process_keyring_to_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_install_process_keyring_to_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.key* }
%struct.key = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_pid\00", align 1
@KEY_ALLOC_QUOTA_OVERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @install_process_keyring_to_cred(%struct.cred* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %3, align 8
  %6 = load %struct.cred*, %struct.cred** %3, align 8
  %7 = getelementptr inbounds %struct.cred, %struct.cred* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.key*, %struct.key** %9, align 8
  %11 = icmp ne %struct.key* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EEXIST, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.cred*, %struct.cred** %3, align 8
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cred*, %struct.cred** %3, align 8
  %20 = getelementptr inbounds %struct.cred, %struct.cred* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.cred*, %struct.cred** %3, align 8
  %23 = load i32, i32* @KEY_ALLOC_QUOTA_OVERRUN, align 4
  %24 = call %struct.key* @keyring_alloc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, %struct.cred* %22, i32 %23, i32* null)
  store %struct.key* %24, %struct.key** %4, align 8
  %25 = load %struct.key*, %struct.key** %4, align 8
  %26 = call i64 @IS_ERR(%struct.key* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load %struct.key*, %struct.key** %4, align 8
  %30 = call i32 @PTR_ERR(%struct.key* %29)
  store i32 %30, i32* %2, align 4
  br label %61

31:                                               ; preds = %15
  %32 = load %struct.cred*, %struct.cred** %3, align 8
  %33 = getelementptr inbounds %struct.cred, %struct.cred* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.cred*, %struct.cred** %3, align 8
  %38 = getelementptr inbounds %struct.cred, %struct.cred* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.key*, %struct.key** %40, align 8
  %42 = icmp ne %struct.key* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %31
  %44 = load %struct.key*, %struct.key** %4, align 8
  %45 = load %struct.cred*, %struct.cred** %3, align 8
  %46 = getelementptr inbounds %struct.cred, %struct.cred* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store %struct.key* %44, %struct.key** %48, align 8
  store %struct.key* null, %struct.key** %4, align 8
  store i32 0, i32* %5, align 4
  br label %52

49:                                               ; preds = %31
  %50 = load i32, i32* @EEXIST, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.cred*, %struct.cred** %3, align 8
  %54 = getelementptr inbounds %struct.cred, %struct.cred* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = load %struct.key*, %struct.key** %4, align 8
  %59 = call i32 @key_put(%struct.key* %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %52, %28, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
