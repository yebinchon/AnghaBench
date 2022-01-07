; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_register_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_register_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_proto = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"%p name %s id %d\00", align 1
@HCI_MAX_PROTO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@hci_task_lock = common dso_local global i32 0, align 4
@hci_proto = common dso_local global %struct.hci_proto** null, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_register_proto(%struct.hci_proto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_proto*, align 8
  %4 = alloca i32, align 4
  store %struct.hci_proto* %0, %struct.hci_proto** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hci_proto*, %struct.hci_proto** %3, align 8
  %6 = load %struct.hci_proto*, %struct.hci_proto** %3, align 8
  %7 = getelementptr inbounds %struct.hci_proto, %struct.hci_proto* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.hci_proto*, %struct.hci_proto** %3, align 8
  %10 = getelementptr inbounds %struct.hci_proto, %struct.hci_proto* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.hci_proto* %5, i32 %8, i64 %11)
  %13 = load %struct.hci_proto*, %struct.hci_proto** %3, align 8
  %14 = getelementptr inbounds %struct.hci_proto, %struct.hci_proto* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HCI_MAX_PROTO, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %1
  %22 = call i32 @write_lock_bh(i32* @hci_task_lock)
  %23 = load %struct.hci_proto**, %struct.hci_proto*** @hci_proto, align 8
  %24 = load %struct.hci_proto*, %struct.hci_proto** %3, align 8
  %25 = getelementptr inbounds %struct.hci_proto, %struct.hci_proto* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.hci_proto*, %struct.hci_proto** %23, i64 %26
  %28 = load %struct.hci_proto*, %struct.hci_proto** %27, align 8
  %29 = icmp ne %struct.hci_proto* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %21
  %31 = load %struct.hci_proto*, %struct.hci_proto** %3, align 8
  %32 = load %struct.hci_proto**, %struct.hci_proto*** @hci_proto, align 8
  %33 = load %struct.hci_proto*, %struct.hci_proto** %3, align 8
  %34 = getelementptr inbounds %struct.hci_proto, %struct.hci_proto* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.hci_proto*, %struct.hci_proto** %32, i64 %35
  store %struct.hci_proto* %31, %struct.hci_proto** %36, align 8
  br label %40

37:                                               ; preds = %21
  %38 = load i32, i32* @EEXIST, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = call i32 @write_unlock_bh(i32* @hci_task_lock)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_proto*, i32, i64) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
