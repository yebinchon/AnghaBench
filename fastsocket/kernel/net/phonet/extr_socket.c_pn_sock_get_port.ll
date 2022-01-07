; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_socket.c_pn_sock_get_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_socket.c_pn_sock_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.pn_sock = type { i32 }
%struct.sockaddr_pn = type { i32 }

@pn_sock_get_port.port_cur = internal global i32 0, align 4
@AF_PHONET = common dso_local global i32 0, align 4
@port_mutex = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pn_sock_get_port(%struct.sock* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.pn_sock*, align 8
  %8 = alloca %struct.sockaddr_pn, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i16 %1, i16* %5, align 2
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.net* @sock_net(%struct.sock* %13)
  store %struct.net* %14, %struct.net** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.pn_sock* @pn_sk(%struct.sock* %15)
  store %struct.pn_sock* %16, %struct.pn_sock** %7, align 8
  %17 = call i32 @memset(%struct.sockaddr_pn* %8, i32 0, i32 4)
  %18 = load i32, i32* @AF_PHONET, align 4
  %19 = getelementptr inbounds %struct.sockaddr_pn, %struct.sockaddr_pn* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = call i32 @mutex_is_locked(i32* @port_mutex)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i16, i16* %5, align 2
  %26 = icmp ne i16 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %2
  %28 = call i32 @phonet_get_local_port_range(i32* %11, i32* %12)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %61, %27
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load i32, i32* @pn_sock_get_port.port_cur, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @pn_sock_get_port.port_cur, align 4
  %37 = load i32, i32* @pn_sock_get_port.port_cur, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @pn_sock_get_port.port_cur, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* @pn_sock_get_port.port_cur, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* @pn_sock_get_port.port_cur, align 4
  %48 = trunc i32 %47 to i16
  %49 = call i32 @pn_sockaddr_set_port(%struct.sockaddr_pn* %8, i16 zeroext %48)
  %50 = load %struct.net*, %struct.net** %6, align 8
  %51 = call %struct.sock* @pn_find_sock_by_sa(%struct.net* %50, %struct.sockaddr_pn* %8)
  store %struct.sock* %51, %struct.sock** %9, align 8
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = icmp eq %struct.sock* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @pn_sock_get_port.port_cur, align 4
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %5, align 2
  br label %80

57:                                               ; preds = %46
  %58 = load %struct.sock*, %struct.sock** %9, align 8
  %59 = call i32 @sock_put(%struct.sock* %58)
  br label %60

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %30

64:                                               ; preds = %30
  br label %77

65:                                               ; preds = %2
  %66 = load i16, i16* %5, align 2
  %67 = call i32 @pn_sockaddr_set_port(%struct.sockaddr_pn* %8, i16 zeroext %66)
  %68 = load %struct.net*, %struct.net** %6, align 8
  %69 = call %struct.sock* @pn_find_sock_by_sa(%struct.net* %68, %struct.sockaddr_pn* %8)
  store %struct.sock* %69, %struct.sock** %9, align 8
  %70 = load %struct.sock*, %struct.sock** %9, align 8
  %71 = icmp eq %struct.sock* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %80

73:                                               ; preds = %65
  %74 = load %struct.sock*, %struct.sock** %9, align 8
  %75 = call i32 @sock_put(%struct.sock* %74)
  br label %76

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76, %64
  %78 = load i32, i32* @EADDRINUSE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %89

80:                                               ; preds = %72, %54
  %81 = load %struct.pn_sock*, %struct.pn_sock** %7, align 8
  %82 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pn_addr(i32 %83)
  %85 = load i16, i16* %5, align 2
  %86 = call i32 @pn_object(i32 %84, i16 zeroext %85)
  %87 = load %struct.pn_sock*, %struct.pn_sock** %7, align 8
  %88 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %80, %77
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.pn_sock* @pn_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.sockaddr_pn*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @phonet_get_local_port_range(i32*, i32*) #1

declare dso_local i32 @pn_sockaddr_set_port(%struct.sockaddr_pn*, i16 zeroext) #1

declare dso_local %struct.sock* @pn_find_sock_by_sa(%struct.net*, %struct.sockaddr_pn*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @pn_object(i32, i16 zeroext) #1

declare dso_local i32 @pn_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
