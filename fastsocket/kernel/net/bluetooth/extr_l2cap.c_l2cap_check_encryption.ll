; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_check_encryption.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_check_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.TYPE_2__ = type { i64 }

@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@BT_SECURITY_MEDIUM = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @l2cap_check_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_check_encryption(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SOCK_SEQPACKET, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %52

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BT_SECURITY_MEDIUM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i32 @l2cap_sock_clear_timer(%struct.sock* %22)
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 %25, 5
  %27 = call i32 @l2cap_sock_set_timer(%struct.sock* %24, i32 %26)
  br label %40

28:                                               ; preds = %14
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = load i32, i32* @ECONNREFUSED, align 4
  %38 = call i32 @__l2cap_sock_close(%struct.sock* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %21
  br label %52

41:                                               ; preds = %11
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BT_SECURITY_MEDIUM, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = call i32 @l2cap_sock_clear_timer(%struct.sock* %49)
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %10, %51, %40
  ret void
}

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @l2cap_sock_set_timer(%struct.sock*, i32) #1

declare dso_local i32 @__l2cap_sock_close(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
