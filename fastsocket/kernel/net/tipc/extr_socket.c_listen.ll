; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_socket.c_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }

@SS_READY = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SS_LISTENING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 1
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call i32 @lock_sock(%struct.sock* %10)
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SS_READY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SS_UNCONNECTED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %20
  %30 = load i64, i64* @SS_LISTENING, align 8
  %31 = load %struct.socket*, %struct.socket** %3, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @release_sock(%struct.sock* %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
