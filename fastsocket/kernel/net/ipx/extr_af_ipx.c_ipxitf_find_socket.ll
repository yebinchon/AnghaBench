; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_find_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_find_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipx_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.ipx_interface*, i32)* @ipxitf_find_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @ipxitf_find_socket(%struct.ipx_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.ipx_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  store %struct.ipx_interface* %0, %struct.ipx_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %7 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.sock* @__ipxitf_find_socket(%struct.ipx_interface* %9, i32 %10)
  store %struct.sock* %11, %struct.sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call i32 @sock_hold(%struct.sock* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %19 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %21
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sock* @__ipxitf_find_socket(%struct.ipx_interface*, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
