; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_cred_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_cred_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { %struct.task_security_struct* }
%struct.task_security_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.cred*, i32)* @selinux_cred_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_cred_prepare(%struct.cred* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_security_struct*, align 8
  %9 = alloca %struct.task_security_struct*, align 8
  store %struct.cred* %0, %struct.cred** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cred*, %struct.cred** %6, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 0
  %12 = load %struct.task_security_struct*, %struct.task_security_struct** %11, align 8
  store %struct.task_security_struct* %12, %struct.task_security_struct** %8, align 8
  %13 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.task_security_struct* @kmemdup(%struct.task_security_struct* %13, i32 4, i32 %14)
  store %struct.task_security_struct* %15, %struct.task_security_struct** %9, align 8
  %16 = load %struct.task_security_struct*, %struct.task_security_struct** %9, align 8
  %17 = icmp ne %struct.task_security_struct* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.task_security_struct*, %struct.task_security_struct** %9, align 8
  %23 = load %struct.cred*, %struct.cred** %5, align 8
  %24 = getelementptr inbounds %struct.cred, %struct.cred* %23, i32 0, i32 0
  store %struct.task_security_struct* %22, %struct.task_security_struct** %24, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.task_security_struct* @kmemdup(%struct.task_security_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
