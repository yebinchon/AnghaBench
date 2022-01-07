; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_get_tap_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_get_tap_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.file = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (i32)* @get_tap_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @get_tap_socket(i32 %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.socket*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.file* @fget(i32 %6)
  store %struct.file* %7, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = icmp ne %struct.file* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EBADF, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.socket* @ERR_PTR(i32 %12)
  store %struct.socket* %13, %struct.socket** %2, align 8
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = call %struct.socket* @tun_get_socket(%struct.file* %15)
  store %struct.socket* %16, %struct.socket** %5, align 8
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = call i64 @IS_ERR(%struct.socket* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  store %struct.socket* %21, %struct.socket** %2, align 8
  br label %33

22:                                               ; preds = %14
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = call %struct.socket* @macvtap_get_socket(%struct.file* %23)
  store %struct.socket* %24, %struct.socket** %5, align 8
  %25 = load %struct.socket*, %struct.socket** %5, align 8
  %26 = call i64 @IS_ERR(%struct.socket* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = call i32 @fput(%struct.file* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.socket*, %struct.socket** %5, align 8
  store %struct.socket* %32, %struct.socket** %2, align 8
  br label %33

33:                                               ; preds = %31, %20, %10
  %34 = load %struct.socket*, %struct.socket** %2, align 8
  ret %struct.socket* %34
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local %struct.socket* @ERR_PTR(i32) #1

declare dso_local %struct.socket* @tun_get_socket(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.socket*) #1

declare dso_local %struct.socket* @macvtap_get_socket(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
