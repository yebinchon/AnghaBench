; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_keyring_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_keyring_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@KEY_LOOKUP_CREATE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@KEY_FLAG_ROOT_CAN_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_keyring_clear(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %7 = load i32, i32* @KEY_WRITE, align 4
  %8 = call i32 @lookup_user_key(i32 %5, i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @IS_ERR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @PTR_ERR(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %16 = call i64 @capable(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @lookup_user_key(i32 %19, i32 0, i32 0)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %43

25:                                               ; preds = %18
  %26 = load i32, i32* @KEY_FLAG_ROOT_CAN_CLEAR, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.TYPE_3__* @key_ref_to_ptr(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %26, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %36

33:                                               ; preds = %25
  br label %40

34:                                               ; preds = %12
  br label %43

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %3, align 4
  %38 = call %struct.TYPE_3__* @key_ref_to_ptr(i32 %37)
  %39 = call i64 @keyring_clear(%struct.TYPE_3__* %38)
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @key_ref_put(i32 %41)
  br label %43

43:                                               ; preds = %40, %34, %24
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_3__* @key_ref_to_ptr(i32) #1

declare dso_local i64 @keyring_clear(%struct.TYPE_3__*) #1

declare dso_local i32 @key_ref_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
