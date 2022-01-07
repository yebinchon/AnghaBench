; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_assume_authority.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_assume_authority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64 }

@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_assume_authority(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.key*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @EINVAL, align 8
  %6 = sub nsw i64 0, %5
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %36

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i64 @keyctl_change_reqkey_auth(%struct.key* null)
  store i64 %14, i64* %4, align 8
  br label %36

15:                                               ; preds = %10
  %16 = load i64, i64* %2, align 8
  %17 = call %struct.key* @key_get_instantiation_authkey(i64 %16)
  store %struct.key* %17, %struct.key** %3, align 8
  %18 = load %struct.key*, %struct.key** %3, align 8
  %19 = call i64 @IS_ERR(%struct.key* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.key*, %struct.key** %3, align 8
  %23 = call i64 @PTR_ERR(%struct.key* %22)
  store i64 %23, i64* %4, align 8
  br label %36

24:                                               ; preds = %15
  %25 = load %struct.key*, %struct.key** %3, align 8
  %26 = call i64 @keyctl_change_reqkey_auth(%struct.key* %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %36

30:                                               ; preds = %24
  %31 = load %struct.key*, %struct.key** %3, align 8
  %32 = call i32 @key_put(%struct.key* %31)
  %33 = load %struct.key*, %struct.key** %3, align 8
  %34 = getelementptr inbounds %struct.key, %struct.key* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %30, %29, %21, %13, %9
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local i64 @keyctl_change_reqkey_auth(%struct.key*) #1

declare dso_local %struct.key* @key_get_instantiation_authkey(i64) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i64 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
