; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_set_reqkey_keyring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_set_reqkey_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }

@jit_keyring = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_set_reqkey_keyring(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @jit_keyring, align 4
  %8 = call i32 @current_cred_xxx(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 134
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %2, align 8
  br label %61

14:                                               ; preds = %1
  %15 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %15, %struct.cred** %4, align 8
  %16 = load %struct.cred*, %struct.cred** %4, align 8
  %17 = icmp ne %struct.cred* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* @ENOMEM, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %2, align 8
  br label %61

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  switch i32 %22, label %45 [
    i32 130, label %23
    i32 133, label %30
    i32 136, label %43
    i32 131, label %43
    i32 129, label %43
    i32 128, label %43
    i32 132, label %43
    i32 134, label %44
    i32 135, label %44
  ]

23:                                               ; preds = %21
  %24 = load %struct.cred*, %struct.cred** %4, align 8
  %25 = call i32 @install_thread_keyring_to_cred(%struct.cred* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %56

29:                                               ; preds = %23
  br label %48

30:                                               ; preds = %21
  %31 = load %struct.cred*, %struct.cred** %4, align 8
  %32 = call i32 @install_process_keyring_to_cred(%struct.cred* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @EEXIST, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %56

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %30
  br label %48

43:                                               ; preds = %21, %21, %21, %21, %21
  br label %48

44:                                               ; preds = %21, %21
  br label %45

45:                                               ; preds = %21, %44
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %56

48:                                               ; preds = %43, %42, %29
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.cred*, %struct.cred** %4, align 8
  %51 = getelementptr inbounds %struct.cred, %struct.cred* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cred*, %struct.cred** %4, align 8
  %53 = call i32 @commit_creds(%struct.cred* %52)
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %2, align 8
  br label %61

56:                                               ; preds = %45, %40, %28
  %57 = load %struct.cred*, %struct.cred** %4, align 8
  %58 = call i32 @abort_creds(%struct.cred* %57)
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %56, %48, %18, %11
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local i32 @current_cred_xxx(i32) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @install_thread_keyring_to_cred(%struct.cred*) #1

declare dso_local i32 @install_process_keyring_to_cred(%struct.cred*) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
