; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i64, i32 (%struct.sock*)*, i32 }
%struct.iucv_sock = type { i32*, i32, i32, i32 }

@AF_IUCV_TRANS_HIPER = common dso_local global i32 0, align 4
@AF_IUCV_FLAG_FIN = common dso_local global i32 0, align 4
@SOCK_LINGER = common dso_local global i32 0, align 4
@IUCV_DISCONN_TIMEOUT = common dso_local global i64 0, align 8
@IUCV_CLOSED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @iucv_sock_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_sock_close(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.iucv_sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %6)
  store %struct.iucv_sock* %7, %struct.iucv_sock** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @iucv_sock_clear_timer(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @lock_sock(%struct.sock* %10)
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %98 [
    i32 128, label %15
    i32 130, label %18
    i32 129, label %36
    i32 131, label %75
  ]

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call i32 @iucv_sock_cleanup_listen(%struct.sock* %16)
  br label %101

18:                                               ; preds = %1
  %19 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %20 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AF_IUCV_TRANS_HIPER, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = load i32, i32* @AF_IUCV_FLAG_FIN, align 4
  %27 = call i32 @iucv_send_ctrl(%struct.sock* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  store i32 129, i32* %29, align 8
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 3
  %32 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %31, align 8
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = call i32 %32(%struct.sock* %33)
  br label %35

35:                                               ; preds = %24, %18
  br label %36

36:                                               ; preds = %1, %35
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  store i32 131, i32* %38, align 8
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 3
  %41 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %40, align 8
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call i32 %41(%struct.sock* %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %74, label %46

46:                                               ; preds = %36
  %47 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %48 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %47, i32 0, i32 2
  %49 = call i32 @skb_queue_empty(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %46
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = load i32, i32* @SOCK_LINGER, align 4
  %54 = call i32 @sock_flag(%struct.sock* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.sock*, %struct.sock** %2, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %4, align 8
  br label %67

65:                                               ; preds = %56, %51
  %66 = load i64, i64* @IUCV_DISCONN_TIMEOUT, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %65, %61
  %68 = load %struct.sock*, %struct.sock** %2, align 8
  %69 = load %struct.sock*, %struct.sock** %2, align 8
  %70 = load i32, i32* @IUCV_CLOSED, align 4
  %71 = call i32 @iucv_sock_in_state(%struct.sock* %69, i32 %70, i32 0)
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @iucv_sock_wait(%struct.sock* %68, i32 %71, i64 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %67, %46, %36
  br label %75

75:                                               ; preds = %1, %74
  %76 = load i32, i32* @IUCV_CLOSED, align 4
  %77 = load %struct.sock*, %struct.sock** %2, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.sock*, %struct.sock** %2, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 3
  %81 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %80, align 8
  %82 = load %struct.sock*, %struct.sock** %2, align 8
  %83 = call i32 %81(%struct.sock* %82)
  %84 = load i32, i32* @ECONNRESET, align 4
  %85 = load %struct.sock*, %struct.sock** %2, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sock*, %struct.sock** %2, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 3
  %89 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %88, align 8
  %90 = load %struct.sock*, %struct.sock** %2, align 8
  %91 = call i32 %89(%struct.sock* %90)
  %92 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %93 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %92, i32 0, i32 2
  %94 = call i32 @skb_queue_purge(i32* %93)
  %95 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %96 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %95, i32 0, i32 1
  %97 = call i32 @skb_queue_purge(i32* %96)
  br label %98

98:                                               ; preds = %1, %75
  %99 = load %struct.sock*, %struct.sock** %2, align 8
  %100 = call i32 @iucv_sever_path(%struct.sock* %99, i32 1)
  br label %101

101:                                              ; preds = %98, %15
  %102 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %103 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %108 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @dev_put(i32* %109)
  %111 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %112 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  %113 = load %struct.sock*, %struct.sock** %2, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %106, %101
  %116 = load %struct.sock*, %struct.sock** %2, align 8
  %117 = load i32, i32* @SOCK_ZAPPED, align 4
  %118 = call i32 @sock_set_flag(%struct.sock* %116, i32 %117)
  %119 = load %struct.sock*, %struct.sock** %2, align 8
  %120 = call i32 @release_sock(%struct.sock* %119)
  ret void
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @iucv_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @iucv_sock_cleanup_listen(%struct.sock*) #1

declare dso_local i32 @iucv_send_ctrl(%struct.sock*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @iucv_sock_wait(%struct.sock*, i32, i64) #1

declare dso_local i32 @iucv_sock_in_state(%struct.sock*, i32, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @iucv_sever_path(%struct.sock*, i32) #1

declare dso_local i32 @dev_put(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
