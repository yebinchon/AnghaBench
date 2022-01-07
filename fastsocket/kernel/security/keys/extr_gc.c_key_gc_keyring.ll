; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_gc.c_key_gc_keyring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_gc.c_key_gc_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.keyring_list = type { i32, %struct.key** }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@KEY_FLAG_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" [no gc]\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" [gc]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*, i64)* @key_gc_keyring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_gc_keyring(%struct.key* %0, i64 %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.keyring_list*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.key*, %struct.key** %3, align 8
  %9 = call i32 @key_serial(%struct.key* %8)
  %10 = call i32 @kenter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %12 = load %struct.key*, %struct.key** %3, align 8
  %13 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %69

17:                                               ; preds = %2
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.key*, %struct.key** %3, align 8
  %20 = getelementptr inbounds %struct.key, %struct.key* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.keyring_list* @rcu_dereference(i32 %22)
  store %struct.keyring_list* %23, %struct.keyring_list** %5, align 8
  %24 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %25 = icmp ne %struct.keyring_list* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %67

27:                                               ; preds = %17
  %28 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %29 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = call i32 (...) @smp_rmb()
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %63, %27
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %39 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %38, i32 0, i32 1
  %40 = load %struct.key**, %struct.key*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.key*, %struct.key** %40, i64 %42
  %44 = load %struct.key*, %struct.key** %43, align 8
  store %struct.key* %44, %struct.key** %6, align 8
  %45 = load i32, i32* @KEY_FLAG_DEAD, align 4
  %46 = load %struct.key*, %struct.key** %6, align 8
  %47 = getelementptr inbounds %struct.key, %struct.key* %46, i32 0, i32 1
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %37
  %51 = load %struct.key*, %struct.key** %6, align 8
  %52 = getelementptr inbounds %struct.key, %struct.key* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.key*, %struct.key** %6, align 8
  %57 = getelementptr inbounds %struct.key, %struct.key* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %37
  br label %71

62:                                               ; preds = %55, %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %7, align 4
  br label %34

66:                                               ; preds = %34
  br label %67

67:                                               ; preds = %66, %26
  %68 = call i32 (...) @rcu_read_unlock()
  br label %69

69:                                               ; preds = %67, %16
  %70 = call i32 @kleave(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %77

71:                                               ; preds = %61
  %72 = call i32 (...) @rcu_read_unlock()
  %73 = load %struct.key*, %struct.key** %3, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @keyring_gc(%struct.key* %73, i64 %74)
  %76 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %71, %69
  ret void
}

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.keyring_list* @rcu_dereference(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kleave(i8*) #1

declare dso_local i32 @keyring_gc(%struct.key*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
