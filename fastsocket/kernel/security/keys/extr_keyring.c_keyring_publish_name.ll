; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_publish_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_publish_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.key = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@keyring_name_lock = common dso_local global i32 0, align 4
@keyring_name_hash = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*)* @keyring_publish_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyring_publish_name(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %2, align 8
  %4 = load %struct.key*, %struct.key** %2, align 8
  %5 = getelementptr inbounds %struct.key, %struct.key* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.key*, %struct.key** %2, align 8
  %10 = getelementptr inbounds %struct.key, %struct.key* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @keyring_hash(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = call i32 @write_lock(i32* @keyring_name_lock)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keyring_name_hash, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keyring_name_hash, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = call i32 @INIT_LIST_HEAD(%struct.TYPE_6__* %25)
  br label %27

27:                                               ; preds = %21, %8
  %28 = load %struct.key*, %struct.key** %2, align 8
  %29 = getelementptr inbounds %struct.key, %struct.key* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @keyring_name_hash, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = call i32 @list_add_tail(i32* %30, %struct.TYPE_6__* %34)
  %36 = call i32 @write_unlock(i32* @keyring_name_lock)
  br label %37

37:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @keyring_hash(i64) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.TYPE_6__*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
