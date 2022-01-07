; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_send_tcp_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_send_tcp_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.kvec = type { i32 }
%struct.msghdr = type { i64, %struct.iovec* }
%struct.iovec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sendmsg returned %d instead of %zu\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"returning error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.kvec*, i64, i64)* @o2net_send_tcp_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2net_send_tcp_msg(%struct.socket* %0, %struct.kvec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.msghdr, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.kvec* %1, %struct.kvec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1
  %15 = load %struct.kvec*, %struct.kvec** %6, align 8
  %16 = bitcast %struct.kvec* %15 to %struct.iovec*
  store %struct.iovec* %16, %struct.iovec** %14, align 8
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = icmp eq %struct.socket* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %47

22:                                               ; preds = %4
  %23 = call i32 (...) @get_fs()
  store i32 %23, i32* %10, align 4
  %24 = call i32 (...) @get_ds()
  %25 = call i32 @set_fs(i32 %24)
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @sock_sendmsg(%struct.socket* %26, %struct.msghdr* %11, i64 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @set_fs(i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %22
  %36 = load i32, i32* @ML_ERROR, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32 (i32, i8*, i32, ...) @mlog(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EPIPE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %35
  br label %47

46:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %45, %19
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @get_fs(...) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @get_ds(...) #1

declare dso_local i32 @sock_sendmsg(%struct.socket*, %struct.msghdr*, i64) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
