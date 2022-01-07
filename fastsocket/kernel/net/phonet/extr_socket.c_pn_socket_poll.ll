; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_socket.c_pn_socket_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_socket.c_pn_socket_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.pep_sock = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@TCP_CLOSE_WAIT = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLWRBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @pn_socket_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_socket_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.pep_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.socket*, %struct.socket** %6, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 1
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call %struct.pep_sock* @pep_sk(%struct.sock* %14)
  store %struct.pep_sock* %15, %struct.pep_sock** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load %struct.socket*, %struct.socket** %6, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @poll_wait(%struct.file* %16, i32* %18, i32* %19)
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %36 [
    i32 128, label %24
    i32 129, label %34
  ]

24:                                               ; preds = %3
  %25 = load %struct.pep_sock*, %struct.pep_sock** %9, align 8
  %26 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %25, i32 0, i32 2
  %27 = call i32 @hlist_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @POLLIN, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 0, %29 ], [ %31, %30 ]
  store i32 %33, i32* %4, align 4
  br label %88

34:                                               ; preds = %3
  %35 = load i32, i32* @POLLERR, align 4
  store i32 %35, i32* %4, align 4
  br label %88

36:                                               ; preds = %3
  %37 = load %struct.sock*, %struct.sock** %8, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = call i32 @skb_queue_empty(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @POLLIN, align 4
  %43 = load i32, i32* @POLLRDNORM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.pep_sock*, %struct.pep_sock** %9, align 8
  %49 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %48, i32 0, i32 1
  %50 = call i32 @skb_queue_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @POLLPRI, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TCP_CLOSE_WAIT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @POLLHUP, align 4
  store i32 %66, i32* %4, align 4
  br label %88

67:                                               ; preds = %59, %56
  %68 = load %struct.sock*, %struct.sock** %8, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TCP_ESTABLISHED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.pep_sock*, %struct.pep_sock** %9, align 8
  %75 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %74, i32 0, i32 0
  %76 = call i64 @atomic_read(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* @POLLOUT, align 4
  %80 = load i32, i32* @POLLWRNORM, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @POLLWRBAND, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %78, %73, %67
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %65, %34, %32
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
