; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_release_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_release_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.policy_load_memory* }
%struct.policy_load_memory = type { i32 }

@policy_opened = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sel_release_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_release_policy(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.policy_load_memory*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.policy_load_memory*, %struct.policy_load_memory** %7, align 8
  store %struct.policy_load_memory* %8, %struct.policy_load_memory** %5, align 8
  %9 = load %struct.policy_load_memory*, %struct.policy_load_memory** %5, align 8
  %10 = icmp ne %struct.policy_load_memory* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  store i64 0, i64* @policy_opened, align 8
  %14 = load %struct.policy_load_memory*, %struct.policy_load_memory** %5, align 8
  %15 = getelementptr inbounds %struct.policy_load_memory, %struct.policy_load_memory* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vfree(i32 %16)
  %18 = load %struct.policy_load_memory*, %struct.policy_load_memory** %5, align 8
  %19 = call i32 @kfree(%struct.policy_load_memory* %18)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.policy_load_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
