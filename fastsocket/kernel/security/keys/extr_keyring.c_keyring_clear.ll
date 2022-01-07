; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.keyring_list = type { i32 }

@ENOTDIR = common dso_local global i32 0, align 4
@key_type_keyring = common dso_local global i32 0, align 4
@keyring_clear_rcu_disposal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyring_clear(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.keyring_list*, align 8
  %4 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %2, align 8
  %5 = load i32, i32* @ENOTDIR, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.key*, %struct.key** %2, align 8
  %8 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, @key_type_keyring
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load %struct.key*, %struct.key** %2, align 8
  %13 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 0
  %14 = call i32 @down_write(i32* %13)
  %15 = load %struct.key*, %struct.key** %2, align 8
  %16 = call %struct.keyring_list* @rcu_dereference_locked_keyring(%struct.key* %15)
  store %struct.keyring_list* %16, %struct.keyring_list** %3, align 8
  %17 = load %struct.keyring_list*, %struct.keyring_list** %3, align 8
  %18 = icmp ne %struct.keyring_list* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.key*, %struct.key** %2, align 8
  %21 = call i32 @key_payload_reserve(%struct.key* %20, i32 4)
  %22 = load %struct.key*, %struct.key** %2, align 8
  %23 = getelementptr inbounds %struct.key, %struct.key* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rcu_assign_pointer(i32 %25, i32* null)
  br label %27

27:                                               ; preds = %19, %11
  %28 = load %struct.key*, %struct.key** %2, align 8
  %29 = getelementptr inbounds %struct.key, %struct.key* %28, i32 0, i32 0
  %30 = call i32 @up_write(i32* %29)
  %31 = load %struct.keyring_list*, %struct.keyring_list** %3, align 8
  %32 = icmp ne %struct.keyring_list* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.keyring_list*, %struct.keyring_list** %3, align 8
  %35 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %34, i32 0, i32 0
  %36 = load i32, i32* @keyring_clear_rcu_disposal, align 4
  %37 = call i32 @call_rcu(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %27
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.keyring_list* @rcu_dereference_locked_keyring(%struct.key*) #1

declare dso_local i32 @key_payload_reserve(%struct.key*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
