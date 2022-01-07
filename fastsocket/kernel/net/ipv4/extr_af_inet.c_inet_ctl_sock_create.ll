; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_ctl_sock_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_ctl_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sock*)* }
%struct.net = type { i32 }
%struct.socket = type { %struct.sock* }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_ctl_sock_create(%struct.sock** %0, i16 zeroext %1, i16 zeroext %2, i8 zeroext %3, %struct.net* %4) #0 {
  %6 = alloca %struct.sock**, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  store %struct.sock** %0, %struct.sock*** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i8 %3, i8* %9, align 1
  store %struct.net* %4, %struct.net** %10, align 8
  %13 = load i16, i16* %7, align 2
  %14 = load i16, i16* %8, align 2
  %15 = load i8, i8* %9, align 1
  %16 = call i32 @sock_create_kern(i16 zeroext %13, i16 zeroext %14, i8 zeroext %15, %struct.socket** %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %5
  %20 = load %struct.socket*, %struct.socket** %11, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  %23 = load %struct.sock**, %struct.sock*** %6, align 8
  store %struct.sock* %22, %struct.sock** %23, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = load %struct.sock**, %struct.sock*** %6, align 8
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.sock**, %struct.sock*** %6, align 8
  %29 = load %struct.sock*, %struct.sock** %28, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %32, align 8
  %34 = load %struct.sock**, %struct.sock*** %6, align 8
  %35 = load %struct.sock*, %struct.sock** %34, align 8
  %36 = call i32 %33(%struct.sock* %35)
  %37 = load %struct.sock**, %struct.sock*** %6, align 8
  %38 = load %struct.sock*, %struct.sock** %37, align 8
  %39 = load %struct.net*, %struct.net** %10, align 8
  %40 = call i32 @sk_change_net(%struct.sock* %38, %struct.net* %39)
  br label %41

41:                                               ; preds = %19, %5
  %42 = load i32, i32* %12, align 4
  ret i32 %42
}

declare dso_local i32 @sock_create_kern(i16 zeroext, i16 zeroext, i8 zeroext, %struct.socket**) #1

declare dso_local i32 @sk_change_net(%struct.sock*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
