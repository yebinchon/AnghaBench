; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_revoke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.keyring_list = type { i32 }

@keyring_clear_rcu_disposal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*)* @keyring_revoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyring_revoke(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.keyring_list*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %4 = load %struct.key*, %struct.key** %2, align 8
  %5 = call %struct.keyring_list* @rcu_dereference_locked_keyring(%struct.key* %4)
  store %struct.keyring_list* %5, %struct.keyring_list** %3, align 8
  %6 = load %struct.key*, %struct.key** %2, align 8
  %7 = call i32 @key_payload_reserve(%struct.key* %6, i32 0)
  %8 = load %struct.keyring_list*, %struct.keyring_list** %3, align 8
  %9 = icmp ne %struct.keyring_list* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.key*, %struct.key** %2, align 8
  %12 = getelementptr inbounds %struct.key, %struct.key* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rcu_assign_pointer(i32 %14, i32* null)
  %16 = load %struct.keyring_list*, %struct.keyring_list** %3, align 8
  %17 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %16, i32 0, i32 0
  %18 = load i32, i32* @keyring_clear_rcu_disposal, align 4
  %19 = call i32 @call_rcu(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.keyring_list* @rcu_dereference_locked_keyring(%struct.key*) #1

declare dso_local i32 @key_payload_reserve(%struct.key*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
