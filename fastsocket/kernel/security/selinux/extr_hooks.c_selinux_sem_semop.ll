; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_sem_semop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_sem_semop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sem_array = type { i32 }
%struct.sembuf = type { i32 }

@SEM__READ = common dso_local global i32 0, align 4
@SEM__WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sem_array*, %struct.sembuf*, i32, i32)* @selinux_sem_semop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sem_semop(%struct.sem_array* %0, %struct.sembuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sem_array*, align 8
  %6 = alloca %struct.sembuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sem_array* %0, %struct.sem_array** %5, align 8
  store %struct.sembuf* %1, %struct.sembuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @SEM__READ, align 4
  %14 = load i32, i32* @SEM__WRITE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %9, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @SEM__READ, align 4
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = load %struct.sem_array*, %struct.sem_array** %5, align 8
  %20 = getelementptr inbounds %struct.sem_array, %struct.sem_array* %19, i32 0, i32 0
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ipc_has_perm(i32* %20, i32 %21)
  ret i32 %22
}

declare dso_local i32 @ipc_has_perm(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
