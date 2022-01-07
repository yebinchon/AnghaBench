; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_find_socket_byname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_find_socket_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.sockaddr_un = type { i32 }

@unix_table_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.sockaddr_un*, i32, i32, i32)* @unix_find_socket_byname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @unix_find_socket_byname(%struct.net* %0, %struct.sockaddr_un* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sockaddr_un*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @spin_lock(i32* @unix_table_lock)
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = load %struct.sockaddr_un*, %struct.sockaddr_un** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.sock* @__unix_find_socket_byname(%struct.net* %13, %struct.sockaddr_un* %14, i32 %15, i32 %16, i32 %17)
  store %struct.sock* %18, %struct.sock** %11, align 8
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.sock*, %struct.sock** %11, align 8
  %23 = call i32 @sock_hold(%struct.sock* %22)
  br label %24

24:                                               ; preds = %21, %5
  %25 = call i32 @spin_unlock(i32* @unix_table_lock)
  %26 = load %struct.sock*, %struct.sock** %11, align 8
  ret %struct.sock* %26
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sock* @__unix_find_socket_byname(%struct.net*, %struct.sockaddr_un*, i32, i32, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
