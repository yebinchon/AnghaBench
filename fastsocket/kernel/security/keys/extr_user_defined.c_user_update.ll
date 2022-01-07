; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_user_defined.c_user_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_user_defined.c_user_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.user_key_payload* }
%struct.user_key_payload = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@user_update_rcu_disposal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_update(%struct.key* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.key*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.user_key_payload*, align 8
  %8 = alloca %struct.user_key_payload*, align 8
  %9 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = icmp ule i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ugt i64 %15, 32767
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %14, %3
  br label %67

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  %24 = load i64, i64* %6, align 8
  %25 = add i64 16, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.user_key_payload* @kmalloc(i32 %26, i32 %27)
  store %struct.user_key_payload* %28, %struct.user_key_payload** %7, align 8
  %29 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %30 = icmp ne %struct.user_key_payload* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %67

32:                                               ; preds = %21
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %35 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %37 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @memcpy(i32 %38, i8* %39, i64 %40)
  %42 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  store %struct.user_key_payload* %42, %struct.user_key_payload** %8, align 8
  %43 = load %struct.key*, %struct.key** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @key_payload_reserve(%struct.key* %43, i64 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %32
  %49 = load %struct.key*, %struct.key** %4, align 8
  %50 = getelementptr inbounds %struct.key, %struct.key* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.user_key_payload*, %struct.user_key_payload** %51, align 8
  store %struct.user_key_payload* %52, %struct.user_key_payload** %8, align 8
  %53 = load %struct.key*, %struct.key** %4, align 8
  %54 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %55 = call i32 @rcu_assign_keypointer(%struct.key* %53, %struct.user_key_payload* %54)
  %56 = load %struct.key*, %struct.key** %4, align 8
  %57 = getelementptr inbounds %struct.key, %struct.key* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %48, %32
  %59 = load %struct.user_key_payload*, %struct.user_key_payload** %8, align 8
  %60 = icmp ne %struct.user_key_payload* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.user_key_payload*, %struct.user_key_payload** %8, align 8
  %63 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %62, i32 0, i32 1
  %64 = load i32, i32* @user_update_rcu_disposal, align 4
  %65 = call i32 @call_rcu(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %31, %20
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local %struct.user_key_payload* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @key_payload_reserve(%struct.key*, i64) #1

declare dso_local i32 @rcu_assign_keypointer(%struct.key*, %struct.user_key_payload*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
