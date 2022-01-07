; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cs_create_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cs_create_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_cp_create_conn = type { i32 }
%struct.hci_conn = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s status 0x%x\00", align 1
@HCI_OP_CREATE_CONN = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s bdaddr %s conn %p\00", align 1
@BT_CONNECT = common dso_local global i64 0, align 8
@BT_CLOSED = common dso_local global i64 0, align 8
@BT_CONNECT2 = common dso_local global i64 0, align 8
@HCI_LM_MASTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"No memmory for new connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32)* @hci_cs_create_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cs_create_conn(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_cp_create_conn*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = load i32, i32* @HCI_OP_CREATE_CONN, align 4
  %14 = call %struct.hci_cp_create_conn* @hci_sent_cmd_data(%struct.hci_dev* %12, i32 %13)
  store %struct.hci_cp_create_conn* %14, %struct.hci_cp_create_conn** %5, align 8
  %15 = load %struct.hci_cp_create_conn*, %struct.hci_cp_create_conn** %5, align 8
  %16 = icmp ne %struct.hci_cp_create_conn* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %94

18:                                               ; preds = %2
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_dev_lock(%struct.hci_dev* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load i32, i32* @ACL_LINK, align 4
  %23 = load %struct.hci_cp_create_conn*, %struct.hci_cp_create_conn** %5, align 8
  %24 = getelementptr inbounds %struct.hci_cp_create_conn, %struct.hci_cp_create_conn* %23, i32 0, i32 0
  %25 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %21, i32 %22, i32* %24)
  store %struct.hci_conn* %25, %struct.hci_conn** %6, align 8
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hci_cp_create_conn*, %struct.hci_cp_create_conn** %5, align 8
  %30 = getelementptr inbounds %struct.hci_cp_create_conn, %struct.hci_cp_create_conn* %29, i32 0, i32 0
  %31 = call i32 @batostr(i32* %30)
  %32 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %33 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31, %struct.hci_conn* %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %18
  %37 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %38 = icmp ne %struct.hci_conn* %37, null
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %41 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BT_CONNECT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 12
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %53, label %62

53:                                               ; preds = %48, %45
  %54 = load i64, i64* @BT_CLOSED, align 8
  %55 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %56 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @hci_proto_connect_cfm(%struct.hci_conn* %57, i32 %58)
  %60 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %61 = call i32 @hci_conn_del(%struct.hci_conn* %60)
  br label %66

62:                                               ; preds = %48
  %63 = load i64, i64* @BT_CONNECT2, align 8
  %64 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %65 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %53
  br label %67

67:                                               ; preds = %66, %39, %36
  br label %91

68:                                               ; preds = %18
  %69 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %70 = icmp ne %struct.hci_conn* %69, null
  br i1 %70, label %90, label %71

71:                                               ; preds = %68
  %72 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %73 = load i32, i32* @ACL_LINK, align 4
  %74 = load %struct.hci_cp_create_conn*, %struct.hci_cp_create_conn** %5, align 8
  %75 = getelementptr inbounds %struct.hci_cp_create_conn, %struct.hci_cp_create_conn* %74, i32 0, i32 0
  %76 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %72, i32 %73, i32* %75)
  store %struct.hci_conn* %76, %struct.hci_conn** %6, align 8
  %77 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %78 = icmp ne %struct.hci_conn* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %81 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %80, i32 0, i32 2
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* @HCI_LM_MASTER, align 4
  %83 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %84 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %89

87:                                               ; preds = %71
  %88 = call i32 @BT_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %79
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %67
  %92 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %93 = call i32 @hci_dev_unlock(%struct.hci_dev* %92)
  br label %94

94:                                               ; preds = %91, %17
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, ...) #1

declare dso_local %struct.hci_cp_create_conn* @hci_sent_cmd_data(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local i32 @hci_proto_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_del(%struct.hci_conn*) #1

declare dso_local %struct.hci_conn* @hci_conn_add(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
