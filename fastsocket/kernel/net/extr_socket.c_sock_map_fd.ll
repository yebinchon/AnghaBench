; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_map_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_map_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_map_fd(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @sock_alloc_file(%struct.socket* %7, %struct.file** %5, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call i32 @fd_install(i32 %16, %struct.file* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

declare dso_local i32 @sock_alloc_file(%struct.socket*, %struct.file**, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
