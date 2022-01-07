; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c___keyring_search_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c___keyring_search_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i64 (%struct.key*, i8*)* }
%struct.key = type { i32, i32, %struct.key_type*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.keyring_list = type { i32, %struct.key** }

@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__keyring_search_one(i32 %0, %struct.key_type* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.key_type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.keyring_list*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.key*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.key_type* %1, %struct.key_type** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.key* @key_ref_to_ptr(i32 %16)
  store %struct.key* %17, %struct.key** %12, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @is_key_possessed(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.key*, %struct.key** %12, align 8
  %22 = getelementptr inbounds %struct.key, %struct.key* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.keyring_list* @rcu_dereference(i32 %24)
  store %struct.keyring_list* %25, %struct.keyring_list** %10, align 8
  %26 = load %struct.keyring_list*, %struct.keyring_list** %10, align 8
  %27 = icmp ne %struct.keyring_list* %26, null
  br i1 %27, label %28, label %86

28:                                               ; preds = %4
  %29 = load %struct.keyring_list*, %struct.keyring_list** %10, align 8
  %30 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = call i32 (...) @smp_rmb()
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %82, %28
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %33
  %38 = load %struct.keyring_list*, %struct.keyring_list** %10, align 8
  %39 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %38, i32 0, i32 1
  %40 = load %struct.key**, %struct.key*** %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.key*, %struct.key** %40, i64 %42
  %44 = load %struct.key*, %struct.key** %43, align 8
  store %struct.key* %44, %struct.key** %13, align 8
  %45 = load %struct.key*, %struct.key** %13, align 8
  %46 = getelementptr inbounds %struct.key, %struct.key* %45, i32 0, i32 2
  %47 = load %struct.key_type*, %struct.key_type** %46, align 8
  %48 = load %struct.key_type*, %struct.key_type** %7, align 8
  %49 = icmp eq %struct.key_type* %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %37
  %51 = load %struct.key*, %struct.key** %13, align 8
  %52 = getelementptr inbounds %struct.key, %struct.key* %51, i32 0, i32 2
  %53 = load %struct.key_type*, %struct.key_type** %52, align 8
  %54 = getelementptr inbounds %struct.key_type, %struct.key_type* %53, i32 0, i32 0
  %55 = load i64 (%struct.key*, i8*)*, i64 (%struct.key*, i8*)** %54, align 8
  %56 = icmp ne i64 (%struct.key*, i8*)* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.key*, %struct.key** %13, align 8
  %59 = getelementptr inbounds %struct.key, %struct.key* %58, i32 0, i32 2
  %60 = load %struct.key_type*, %struct.key_type** %59, align 8
  %61 = getelementptr inbounds %struct.key_type, %struct.key_type* %60, i32 0, i32 0
  %62 = load i64 (%struct.key*, i8*)*, i64 (%struct.key*, i8*)** %61, align 8
  %63 = load %struct.key*, %struct.key** %13, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 %62(%struct.key* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %57, %50
  %68 = load %struct.key*, %struct.key** %13, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @make_key_ref(%struct.key* %68, i64 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @key_permission(i32 %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %76 = load %struct.key*, %struct.key** %13, align 8
  %77 = getelementptr inbounds %struct.key, %struct.key* %76, i32 0, i32 1
  %78 = call i32 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %91

81:                                               ; preds = %74, %67, %57, %37
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %33

85:                                               ; preds = %33
  br label %86

86:                                               ; preds = %85, %4
  %87 = call i32 (...) @rcu_read_unlock()
  %88 = load i32, i32* @ENOKEY, align 4
  %89 = sub nsw i32 0, %88
  %90 = call i32 @ERR_PTR(i32 %89)
  store i32 %90, i32* %5, align 4
  br label %99

91:                                               ; preds = %80
  %92 = load %struct.key*, %struct.key** %13, align 8
  %93 = getelementptr inbounds %struct.key, %struct.key* %92, i32 0, i32 0
  %94 = call i32 @atomic_inc(i32* %93)
  %95 = call i32 (...) @rcu_read_unlock()
  %96 = load %struct.key*, %struct.key** %13, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @make_key_ref(%struct.key* %96, i64 %97)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %91, %86
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i64 @is_key_possessed(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.keyring_list* @rcu_dereference(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @key_permission(i32, i32) #1

declare dso_local i32 @make_key_ref(%struct.key*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
