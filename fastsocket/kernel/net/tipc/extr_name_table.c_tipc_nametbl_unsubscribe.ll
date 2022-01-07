; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subscription = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.name_seq = type { i64, %struct.name_seq*, i32, i32, i32 }

@tipc_nametbl_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_nametbl_unsubscribe(%struct.subscription* %0) #0 {
  %2 = alloca %struct.subscription*, align 8
  %3 = alloca %struct.name_seq*, align 8
  store %struct.subscription* %0, %struct.subscription** %2, align 8
  %4 = call i32 @write_lock_bh(i32* @tipc_nametbl_lock)
  %5 = load %struct.subscription*, %struct.subscription** %2, align 8
  %6 = getelementptr inbounds %struct.subscription, %struct.subscription* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.name_seq* @nametbl_find_seq(i32 %8)
  store %struct.name_seq* %9, %struct.name_seq** %3, align 8
  %10 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %11 = icmp ne %struct.name_seq* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %14 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %13, i32 0, i32 4
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.subscription*, %struct.subscription** %2, align 8
  %17 = getelementptr inbounds %struct.subscription, %struct.subscription* %16, i32 0, i32 0
  %18 = call i32 @list_del_init(i32* %17)
  %19 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %20 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %19, i32 0, i32 4
  %21 = call i32 @spin_unlock_bh(i32* %20)
  %22 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %23 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %12
  %27 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %28 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %27, i32 0, i32 3
  %29 = call i64 @list_empty(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %33 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %32, i32 0, i32 2
  %34 = call i32 @hlist_del_init(i32* %33)
  %35 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %36 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %35, i32 0, i32 1
  %37 = load %struct.name_seq*, %struct.name_seq** %36, align 8
  %38 = call i32 @kfree(%struct.name_seq* %37)
  %39 = load %struct.name_seq*, %struct.name_seq** %3, align 8
  %40 = call i32 @kfree(%struct.name_seq* %39)
  br label %41

41:                                               ; preds = %31, %26, %12
  br label %42

42:                                               ; preds = %41, %1
  %43 = call i32 @write_unlock_bh(i32* @tipc_nametbl_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.name_seq* @nametbl_find_seq(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.name_seq*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
