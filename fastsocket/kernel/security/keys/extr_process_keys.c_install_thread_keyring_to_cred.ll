; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_install_thread_keyring_to_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_install_thread_keyring_to_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { %struct.key*, i32, i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_tid\00", align 1
@KEY_ALLOC_QUOTA_OVERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @install_thread_keyring_to_cred(%struct.cred* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.key*, align 8
  store %struct.cred* %0, %struct.cred** %3, align 8
  %5 = load %struct.cred*, %struct.cred** %3, align 8
  %6 = getelementptr inbounds %struct.cred, %struct.cred* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cred*, %struct.cred** %3, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cred*, %struct.cred** %3, align 8
  %12 = load i32, i32* @KEY_ALLOC_QUOTA_OVERRUN, align 4
  %13 = call %struct.key* @keyring_alloc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, %struct.cred* %11, i32 %12, i32* null)
  store %struct.key* %13, %struct.key** %4, align 8
  %14 = load %struct.key*, %struct.key** %4, align 8
  %15 = call i64 @IS_ERR(%struct.key* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.key*, %struct.key** %4, align 8
  %19 = call i32 @PTR_ERR(%struct.key* %18)
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.key*, %struct.key** %4, align 8
  %22 = load %struct.cred*, %struct.cred** %3, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 0
  store %struct.key* %21, %struct.key** %23, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
