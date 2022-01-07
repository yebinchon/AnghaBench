; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conn_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_conn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, i32, %struct.TYPE_4__, i32, i64, i32*, i32*, i32, %struct.hci_conn* }
%struct.TYPE_4__ = type { i32 }
%struct.hci_conn = type { i32, %struct.TYPE_3__*, %struct.l2cap_conn* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hcon %p conn %p\00", align 1
@l2cap_info_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2cap_conn* (%struct.hci_conn*, i64)* @l2cap_conn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn* %0, i64 %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.l2cap_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %8 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %7, i32 0, i32 2
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  store %struct.l2cap_conn* %9, %struct.l2cap_conn** %6, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %11 = icmp ne %struct.l2cap_conn* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %2
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_conn* %16, %struct.l2cap_conn** %3, align 8
  br label %68

17:                                               ; preds = %12
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.l2cap_conn* @kzalloc(i32 56, i32 %18)
  store %struct.l2cap_conn* %19, %struct.l2cap_conn** %6, align 8
  %20 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %21 = icmp ne %struct.l2cap_conn* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.l2cap_conn* null, %struct.l2cap_conn** %3, align 8
  br label %68

23:                                               ; preds = %17
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %25 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %26 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %25, i32 0, i32 2
  store %struct.l2cap_conn* %24, %struct.l2cap_conn** %26, align 8
  %27 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %28 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %29 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %28, i32 0, i32 8
  store %struct.hci_conn* %27, %struct.hci_conn** %29, align 8
  %30 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %31 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %32 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %30, %struct.l2cap_conn* %31)
  %33 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %39 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %41 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %45 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %44, i32 0, i32 6
  store i32* %43, i32** %45, align 8
  %46 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 0
  %48 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %49 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %48, i32 0, i32 5
  store i32* %47, i32** %49, align 8
  %50 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %51 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %53 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %52, i32 0, i32 3
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %56 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @rwlock_init(i32* %57)
  %59 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %60 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %59, i32 0, i32 1
  %61 = load i32, i32* @l2cap_info_timeout, align 4
  %62 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %63 = ptrtoint %struct.l2cap_conn* %62 to i64
  %64 = call i32 @setup_timer(i32* %60, i32 %61, i64 %63)
  %65 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %66 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %65, i32 0, i32 0
  store i32 19, i32* %66, align 8
  %67 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_conn* %67, %struct.l2cap_conn** %3, align 8
  br label %68

68:                                               ; preds = %23, %22, %15
  %69 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  ret %struct.l2cap_conn* %69
}

declare dso_local %struct.l2cap_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, %struct.l2cap_conn*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
