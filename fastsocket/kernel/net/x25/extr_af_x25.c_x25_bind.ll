; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_x25 = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@SOCK_ZAPPED = common dso_local global i32 0, align 4
@AF_X25 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"x25_bind: socket is bound\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @x25_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sockaddr_x25*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %8, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_x25*
  store %struct.sockaddr_x25* %14, %struct.sockaddr_x25** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %8, align 8
  %16 = load i32, i32* @SOCK_ZAPPED, align 4
  %17 = call i32 @sock_flag(%struct.sock* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 16
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %9, align 8
  %25 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_X25, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %19, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %46

32:                                               ; preds = %23
  %33 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sock*, %struct.sock** %8, align 8
  %37 = call %struct.TYPE_2__* @x25_sk(%struct.sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.sock*, %struct.sock** %8, align 8
  %40 = call i32 @x25_insert_socket(%struct.sock* %39)
  %41 = load %struct.sock*, %struct.sock** %8, align 8
  %42 = load i32, i32* @SOCK_ZAPPED, align 4
  %43 = call i32 @sock_reset_flag(%struct.sock* %41, i32 %42)
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = call i32 @SOCK_DEBUG(%struct.sock* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %32, %29
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_2__* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_insert_socket(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
