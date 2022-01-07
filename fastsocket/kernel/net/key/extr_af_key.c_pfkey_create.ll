; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.netns_pfkey = type { i32 }
%struct.sock = type { i32, i32 }

@pfkey_net_id = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@PF_KEY_V2 = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_KEY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@key_proto = common dso_local global i32 0, align 4
@pfkey_ops = common dso_local global i32 0, align 4
@pfkey_sock_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @pfkey_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netns_pfkey*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = load i32, i32* @pfkey_net_id, align 4
  %15 = call %struct.netns_pfkey* @net_generic(%struct.net* %13, i32 %14)
  store %struct.netns_pfkey* %15, %struct.netns_pfkey** %10, align 8
  %16 = load i32, i32* @CAP_NET_ADMIN, align 4
  %17 = call i32 @capable(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %67

22:                                               ; preds = %4
  %23 = load %struct.socket*, %struct.socket** %7, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SOCK_RAW, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %67

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PF_KEY_V2, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EPROTONOSUPPORT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %67

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  %41 = load %struct.net*, %struct.net** %6, align 8
  %42 = load i32, i32* @PF_KEY, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.sock* @sk_alloc(%struct.net* %41, i32 %42, i32 %43, i32* @key_proto)
  store %struct.sock* %44, %struct.sock** %11, align 8
  %45 = load %struct.sock*, %struct.sock** %11, align 8
  %46 = icmp eq %struct.sock* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %65

48:                                               ; preds = %38
  %49 = load %struct.socket*, %struct.socket** %7, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 1
  store i32* @pfkey_ops, i32** %50, align 8
  %51 = load %struct.socket*, %struct.socket** %7, align 8
  %52 = load %struct.sock*, %struct.sock** %11, align 8
  %53 = call i32 @sock_init_data(%struct.socket* %51, %struct.sock* %52)
  %54 = load i32, i32* @PF_KEY, align 4
  %55 = load %struct.sock*, %struct.sock** %11, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @pfkey_sock_destruct, align 4
  %58 = load %struct.sock*, %struct.sock** %11, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.netns_pfkey*, %struct.netns_pfkey** %10, align 8
  %61 = getelementptr inbounds %struct.netns_pfkey, %struct.netns_pfkey* %60, i32 0, i32 0
  %62 = call i32 @atomic_inc(i32* %61)
  %63 = load %struct.sock*, %struct.sock** %11, align 8
  %64 = call i32 @pfkey_insert(%struct.sock* %63)
  store i32 0, i32* %5, align 4
  br label %67

65:                                               ; preds = %47
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %48, %35, %28, %19
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.netns_pfkey* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @pfkey_insert(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
