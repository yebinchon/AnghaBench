; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_commoncap.c_cap_bprm_secureexec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_commoncap.c_cap_bprm_secureexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i64 }
%struct.cred = type { i64, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_bprm_secureexec(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %5 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %5, %struct.cred** %4, align 8
  %6 = load %struct.cred*, %struct.cred** %4, align 8
  %7 = getelementptr inbounds %struct.cred, %struct.cred* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %12 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %43

16:                                               ; preds = %10
  %17 = load %struct.cred*, %struct.cred** %4, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @cap_isclear(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %43

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.cred*, %struct.cred** %4, align 8
  %26 = getelementptr inbounds %struct.cred, %struct.cred* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cred*, %struct.cred** %4, align 8
  %29 = getelementptr inbounds %struct.cred, %struct.cred* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.cred*, %struct.cred** %4, align 8
  %34 = getelementptr inbounds %struct.cred, %struct.cred* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cred*, %struct.cred** %4, align 8
  %37 = getelementptr inbounds %struct.cred, %struct.cred* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br label %40

40:                                               ; preds = %32, %24
  %41 = phi i1 [ true, %24 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %22, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @cap_isclear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
