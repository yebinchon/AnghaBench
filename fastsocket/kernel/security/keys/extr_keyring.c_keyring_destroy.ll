; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_5__, %struct.TYPE_6__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.keyring_list = type { i32, i32* }

@keyring_name_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*)* @keyring_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyring_destroy(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.keyring_list*, align 8
  %4 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %2, align 8
  %5 = load %struct.key*, %struct.key** %2, align 8
  %6 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = call i32 @write_lock(i32* @keyring_name_lock)
  %11 = load %struct.key*, %struct.key** %2, align 8
  %12 = getelementptr inbounds %struct.key, %struct.key* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %9
  %18 = load %struct.key*, %struct.key** %2, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @list_empty(%struct.TYPE_7__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.key*, %struct.key** %2, align 8
  %25 = getelementptr inbounds %struct.key, %struct.key* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @list_del(%struct.TYPE_7__* %26)
  br label %28

28:                                               ; preds = %23, %17, %9
  %29 = call i32 @write_unlock(i32* @keyring_name_lock)
  br label %30

30:                                               ; preds = %28, %1
  %31 = load %struct.key*, %struct.key** %2, align 8
  %32 = getelementptr inbounds %struct.key, %struct.key* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.keyring_list* @rcu_dereference(i32 %34)
  store %struct.keyring_list* %35, %struct.keyring_list** %3, align 8
  %36 = load %struct.keyring_list*, %struct.keyring_list** %3, align 8
  %37 = icmp ne %struct.keyring_list* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %30
  %39 = load %struct.keyring_list*, %struct.keyring_list** %3, align 8
  %40 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %55, %38
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.keyring_list*, %struct.keyring_list** %3, align 8
  %48 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @key_put(i32 %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %4, align 4
  br label %43

58:                                               ; preds = %43
  %59 = load %struct.keyring_list*, %struct.keyring_list** %3, align 8
  %60 = call i32 @kfree(%struct.keyring_list* %59)
  br label %61

61:                                               ; preds = %58, %30
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.TYPE_7__*) #1

declare dso_local i32 @list_del(%struct.TYPE_7__*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local %struct.keyring_list* @rcu_dereference(i32) #1

declare dso_local i32 @key_put(i32) #1

declare dso_local i32 @kfree(%struct.keyring_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
