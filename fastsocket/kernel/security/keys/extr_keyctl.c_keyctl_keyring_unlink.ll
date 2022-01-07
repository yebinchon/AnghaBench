; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_keyring_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_keyring_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_WRITE = common dso_local global i32 0, align 4
@KEY_LOOKUP_FOR_UNLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_keyring_unlink(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @KEY_WRITE, align 4
  %10 = call i32 @lookup_user_key(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @IS_ERR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @PTR_ERR(i32 %15)
  store i64 %16, i64* %7, align 8
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @KEY_LOOKUP_FOR_UNLINK, align 4
  %20 = call i32 @lookup_user_key(i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @PTR_ERR(i32 %25)
  store i64 %26, i64* %7, align 8
  br label %35

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @key_ref_to_ptr(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @key_ref_to_ptr(i32 %30)
  %32 = call i64 @key_unlink(i32 %29, i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @key_ref_put(i32 %33)
  br label %35

35:                                               ; preds = %27, %24
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @key_ref_put(i32 %36)
  br label %38

38:                                               ; preds = %35, %14
  %39 = load i64, i64* %7, align 8
  ret i64 %39
}

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local i64 @key_unlink(i32, i32) #1

declare dso_local i32 @key_ref_to_ptr(i32) #1

declare dso_local i32 @key_ref_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
