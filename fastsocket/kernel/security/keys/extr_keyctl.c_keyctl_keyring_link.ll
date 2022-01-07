; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_keyring_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_keyring_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_LOOKUP_CREATE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@KEY_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_keyring_link(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %10 = load i32, i32* @KEY_WRITE, align 4
  %11 = call i32 @lookup_user_key(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @PTR_ERR(i32 %16)
  store i64 %17, i64* %7, align 8
  br label %40

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %21 = load i32, i32* @KEY_LINK, align 4
  %22 = call i32 @lookup_user_key(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @PTR_ERR(i32 %27)
  store i64 %28, i64* %7, align 8
  br label %37

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @key_ref_to_ptr(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @key_ref_to_ptr(i32 %32)
  %34 = call i64 @key_link(i32 %31, i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @key_ref_put(i32 %35)
  br label %37

37:                                               ; preds = %29, %26
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @key_ref_put(i32 %38)
  br label %40

40:                                               ; preds = %37, %15
  %41 = load i64, i64* %7, align 8
  ret i64 %41
}

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local i64 @key_link(i32, i32) #1

declare dso_local i32 @key_ref_to_ptr(i32) #1

declare dso_local i32 @key_ref_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
