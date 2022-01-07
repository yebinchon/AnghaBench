; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_bprm_check_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_bprm_check_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.tomoyo_domain_info* }
%struct.tomoyo_domain_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @tomoyo_bprm_check_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_bprm_check_security(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.tomoyo_domain_info*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %5 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %6 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %8, align 8
  store %struct.tomoyo_domain_info* %9, %struct.tomoyo_domain_info** %4, align 8
  %10 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %4, align 8
  %11 = icmp ne %struct.tomoyo_domain_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %14 = call i32 @tomoyo_find_next_domain(%struct.linux_binprm* %13)
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %4, align 8
  %17 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %18 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @tomoyo_check_open_permission(%struct.tomoyo_domain_info* %16, i32* %20, i32 1)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @tomoyo_find_next_domain(%struct.linux_binprm*) #1

declare dso_local i32 @tomoyo_check_open_permission(%struct.tomoyo_domain_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
