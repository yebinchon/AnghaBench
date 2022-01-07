; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_conn_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"conn %p state %d\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @hci_conn_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_conn_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.hci_conn*
  store %struct.hci_conn* %8, %struct.hci_conn** %3, align 8
  %9 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %10 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %9, i32 0, i32 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %4, align 8
  %12 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %13 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %14 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %12, i32 %15)
  %17 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 3
  %19 = call i64 @atomic_read(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %56

22:                                               ; preds = %1
  %23 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %24 = call i32 @hci_dev_lock(%struct.hci_dev* %23)
  %25 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %26 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %49 [
    i32 130, label %28
    i32 129, label %28
    i32 131, label %43
    i32 128, label %43
  ]

28:                                               ; preds = %22, %22
  %29 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %30 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ACL_LINK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %36 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %41 = call i32 @hci_acl_connect_cancel(%struct.hci_conn* %40)
  br label %42

42:                                               ; preds = %39, %34, %28
  br label %53

43:                                               ; preds = %22, %22
  %44 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %45 = call i32 @hci_proto_disconn_ind(%struct.hci_conn* %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @hci_acl_disconn(%struct.hci_conn* %46, i32 %47)
  br label %53

49:                                               ; preds = %22
  %50 = load i32, i32* @BT_CLOSED, align 4
  %51 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %52 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %43, %42
  %54 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %55 = call i32 @hci_dev_unlock(%struct.hci_dev* %54)
  br label %56

56:                                               ; preds = %53, %21
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_acl_connect_cancel(%struct.hci_conn*) #1

declare dso_local i32 @hci_proto_disconn_ind(%struct.hci_conn*) #1

declare dso_local i32 @hci_acl_disconn(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
