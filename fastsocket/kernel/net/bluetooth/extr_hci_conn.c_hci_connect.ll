; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_conn.c_hci_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, %struct.hci_conn*, i8*, i8* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s dst %s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i64 0, align 8
@BT_CLOSED = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hci_conn* @hci_connect(%struct.hci_dev* %0, i32 %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hci_conn*, align 8
  %13 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @batostr(i32* %17)
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %21 = load i32, i32* @ACL_LINK, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %20, i32 %21, i32* %22)
  store %struct.hci_conn* %23, %struct.hci_conn** %12, align 8
  %24 = icmp ne %struct.hci_conn* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %5
  %26 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %27 = load i32, i32* @ACL_LINK, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %26, i32 %27, i32* %28)
  store %struct.hci_conn* %29, %struct.hci_conn** %12, align 8
  %30 = icmp ne %struct.hci_conn* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store %struct.hci_conn* null, %struct.hci_conn** %6, align 8
  br label %123

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %5
  %34 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %35 = call i32 @hci_conn_hold(%struct.hci_conn* %34)
  %36 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BT_OPEN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %43 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BT_CLOSED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41, %33
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %53 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %55 = call i32 @hci_acl_connect(%struct.hci_conn* %54)
  br label %56

56:                                               ; preds = %47, %41
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @ACL_LINK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  store %struct.hci_conn* %61, %struct.hci_conn** %6, align 8
  br label %123

62:                                               ; preds = %56
  %63 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %63, i32 %64, i32* %65)
  store %struct.hci_conn* %66, %struct.hci_conn** %13, align 8
  %67 = icmp ne %struct.hci_conn* %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %69, i32 %70, i32* %71)
  store %struct.hci_conn* %72, %struct.hci_conn** %13, align 8
  %73 = icmp ne %struct.hci_conn* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %76 = call i32 @hci_conn_put(%struct.hci_conn* %75)
  store %struct.hci_conn* null, %struct.hci_conn** %6, align 8
  br label %123

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %80 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %81 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %80, i32 0, i32 2
  store %struct.hci_conn* %79, %struct.hci_conn** %81, align 8
  %82 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %83 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %84 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %83, i32 0, i32 2
  store %struct.hci_conn* %82, %struct.hci_conn** %84, align 8
  %85 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %86 = call i32 @hci_conn_hold(%struct.hci_conn* %85)
  %87 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %88 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BT_CONNECTED, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %78
  %93 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %94 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @BT_OPEN, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %100 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BT_CLOSED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %98, %92
  %105 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %106 = call i64 @lmp_esco_capable(%struct.hci_dev* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %110 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %111 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @hci_setup_sync(%struct.hci_conn* %109, i32 %112)
  br label %120

114:                                              ; preds = %104
  %115 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %116 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %117 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @hci_add_sco(%struct.hci_conn* %115, i32 %118)
  br label %120

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %120, %98, %78
  %122 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  store %struct.hci_conn* %122, %struct.hci_conn** %6, align 8
  br label %123

123:                                              ; preds = %121, %74, %60, %31
  %124 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  ret %struct.hci_conn* %124
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.hci_conn* @hci_conn_add(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_acl_connect(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

declare dso_local i64 @lmp_esco_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_setup_sync(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_add_sco(%struct.hci_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
