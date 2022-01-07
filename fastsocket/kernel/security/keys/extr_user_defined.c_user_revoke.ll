; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_user_defined.c_user_revoke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_user_defined.c_user_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.user_key_payload* }
%struct.user_key_payload = type { i32 }

@user_update_rcu_disposal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_revoke(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.user_key_payload*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %4 = load %struct.key*, %struct.key** %2, align 8
  %5 = getelementptr inbounds %struct.key, %struct.key* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.user_key_payload*, %struct.user_key_payload** %6, align 8
  store %struct.user_key_payload* %7, %struct.user_key_payload** %3, align 8
  %8 = load %struct.key*, %struct.key** %2, align 8
  %9 = call i32 @key_payload_reserve(%struct.key* %8, i32 0)
  %10 = load %struct.user_key_payload*, %struct.user_key_payload** %3, align 8
  %11 = icmp ne %struct.user_key_payload* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.key*, %struct.key** %2, align 8
  %14 = call i32 @rcu_assign_keypointer(%struct.key* %13, i32* null)
  %15 = load %struct.user_key_payload*, %struct.user_key_payload** %3, align 8
  %16 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %15, i32 0, i32 0
  %17 = load i32, i32* @user_update_rcu_disposal, align 4
  %18 = call i32 @call_rcu(i32* %16, i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @key_payload_reserve(%struct.key*, i32) #1

declare dso_local i32 @rcu_assign_keypointer(%struct.key*, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
