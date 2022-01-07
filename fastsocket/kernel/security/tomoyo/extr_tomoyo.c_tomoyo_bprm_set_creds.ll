; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_bprm_set_creds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_bprm_set_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@tomoyo_policy_loaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @tomoyo_bprm_set_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_bprm_set_creds(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %5 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %6 = call i32 @cap_bprm_set_creds(%struct.linux_binprm* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %13 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %30

17:                                               ; preds = %11
  %18 = load i32, i32* @tomoyo_policy_loaded, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %22 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @tomoyo_load_policy(i32 %23)
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %27 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %16, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @cap_bprm_set_creds(%struct.linux_binprm*) #1

declare dso_local i32 @tomoyo_load_policy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
