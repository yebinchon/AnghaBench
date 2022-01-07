; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"sk %p backlog %d\00", align 1
@BT_BOUND = common dso_local global i64 0, align 8
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@enable_ertm = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@l2cap_sk_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BT_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @l2cap_sock_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 1
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.sock* %12, i32 %13)
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call i32 @lock_sock(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BT_BOUND, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.socket*, %struct.socket** %3, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SOCK_SEQPACKET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @EBADFD, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %97

31:                                               ; preds = %22
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call %struct.TYPE_5__* @l2cap_pi(%struct.sock* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %42 [
    i32 130, label %36
    i32 129, label %37
    i32 128, label %37
  ]

36:                                               ; preds = %31
  br label %45

37:                                               ; preds = %31, %31
  %38 = load i32, i32* @enable_ertm, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %45

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %31, %41
  %43 = load i32, i32* @ENOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %97

45:                                               ; preds = %40, %36
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = call %struct.TYPE_5__* @l2cap_pi(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %88, label %51

51:                                               ; preds = %45
  %52 = load %struct.sock*, %struct.sock** %5, align 8
  %53 = call %struct.TYPE_6__* @bt_sk(%struct.sock* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32* %54, i32** %7, align 8
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  %57 = call i32 @write_lock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cap_sk_list, i32 0, i32 0))
  store i32 4097, i32* %8, align 4
  br label %58

58:                                               ; preds = %79, %51
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 4352
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @__l2cap_get_sock_by_addr(i8* %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  %71 = call %struct.TYPE_5__* @l2cap_pi(%struct.sock* %70)
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i8* %69, i8** %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = call %struct.TYPE_5__* @l2cap_pi(%struct.sock* %75)
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  store i32 0, i32* %6, align 4
  br label %82

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %8, align 4
  br label %58

82:                                               ; preds = %67, %58
  %83 = call i32 @write_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2cap_sk_list, i32 0, i32 0))
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %97

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %45
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.sock*, %struct.sock** %5, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.sock*, %struct.sock** %5, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load i64, i64* @BT_LISTEN, align 8
  %95 = load %struct.sock*, %struct.sock** %5, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %88, %86, %42, %28
  %98 = load %struct.sock*, %struct.sock** %5, align 8
  %99 = call i32 @release_sock(%struct.sock* %98)
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @l2cap_pi(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__l2cap_get_sock_by_addr(i8*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
