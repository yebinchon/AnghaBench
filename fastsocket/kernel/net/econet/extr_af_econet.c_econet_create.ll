; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32*, i32 }
%struct.sock = type { i32, i32 }
%struct.econet_sock = type { i32 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@PF_ECONET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@econet_proto = common dso_local global i32 0, align 4
@econet_ops = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@econet_sklist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @econet_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @econet_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.econet_sock*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = icmp ne %struct.net* %13, @init_net
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EAFNOSUPPORT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %63

18:                                               ; preds = %4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SOCK_DGRAM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %18
  %28 = load i32, i32* @SS_UNCONNECTED, align 4
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @ENOBUFS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.net*, %struct.net** %6, align 8
  %34 = load i32, i32* @PF_ECONET, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.sock* @sk_alloc(%struct.net* %33, i32 %34, i32 %35, i32* @econet_proto)
  store %struct.sock* %36, %struct.sock** %10, align 8
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = icmp eq %struct.sock* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %61

40:                                               ; preds = %27
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.socket*, %struct.socket** %7, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 1
  store i32* @econet_ops, i32** %44, align 8
  %45 = load %struct.socket*, %struct.socket** %7, align 8
  %46 = load %struct.sock*, %struct.sock** %10, align 8
  %47 = call i32 @sock_init_data(%struct.socket* %45, %struct.sock* %46)
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = call %struct.econet_sock* @ec_sk(%struct.sock* %48)
  store %struct.econet_sock* %49, %struct.econet_sock** %11, align 8
  %50 = load %struct.sock*, %struct.sock** %10, align 8
  %51 = load i32, i32* @SOCK_ZAPPED, align 4
  %52 = call i32 @sock_reset_flag(%struct.sock* %50, i32 %51)
  %53 = load i32, i32* @PF_ECONET, align 4
  %54 = load %struct.sock*, %struct.sock** %10, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.econet_sock*, %struct.econet_sock** %11, align 8
  %58 = getelementptr inbounds %struct.econet_sock, %struct.econet_sock* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sock*, %struct.sock** %10, align 8
  %60 = call i32 @econet_insert_socket(i32* @econet_sklist, %struct.sock* %59)
  store i32 0, i32* %5, align 4
  br label %63

61:                                               ; preds = %39
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %40, %24, %15
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.econet_sock* @ec_sk(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @econet_insert_socket(i32*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
