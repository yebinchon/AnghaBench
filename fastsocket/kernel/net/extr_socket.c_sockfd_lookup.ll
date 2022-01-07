; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sockfd_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sockfd_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.file = type { i32 }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.socket* @sockfd_lookup(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.socket*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.file* @fget(i32 %8)
  store %struct.file* %9, %struct.file** %6, align 8
  %10 = load %struct.file*, %struct.file** %6, align 8
  %11 = icmp ne %struct.file* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EBADF, align 4
  %14 = sub nsw i32 0, %13
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  store %struct.socket* null, %struct.socket** %3, align 8
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.socket* @sock_from_file(%struct.file* %17, i32* %18)
  store %struct.socket* %19, %struct.socket** %7, align 8
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = icmp ne %struct.socket* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = call i32 @fput(%struct.file* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %26, %struct.socket** %3, align 8
  br label %27

27:                                               ; preds = %25, %12
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  ret %struct.socket* %28
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local %struct.socket* @sock_from_file(%struct.file*, i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
