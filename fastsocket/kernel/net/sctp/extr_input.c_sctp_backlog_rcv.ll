; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_backlog_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_backlog_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sctp_chunk = type { %struct.sctp_ep_common* }
%struct.sctp_ep_common = type { i64, %struct.sock*, i64, %struct.sctp_inq }
%struct.sctp_inq = type { i32 }
%struct.TYPE_2__ = type { %struct.sctp_chunk* }

@SCTP_EP_TYPE_ASSOCIATION = common dso_local global i64 0, align 8
@SCTP_EP_TYPE_SOCKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_backlog_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_inq*, align 8
  %8 = alloca %struct.sctp_ep_common*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.TYPE_2__* @SCTP_INPUT_CB(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  store %struct.sctp_chunk* %13, %struct.sctp_chunk** %6, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 0
  %16 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %15, align 8
  %17 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %16, i32 0, i32 3
  store %struct.sctp_inq* %17, %struct.sctp_inq** %7, align 8
  store %struct.sctp_ep_common* null, %struct.sctp_ep_common** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %19 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %18, i32 0, i32 0
  %20 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %19, align 8
  store %struct.sctp_ep_common* %20, %struct.sctp_ep_common** %8, align 8
  %21 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %8, align 8
  %22 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %27 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %26)
  br label %75

28:                                               ; preds = %2
  %29 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %8, align 8
  %30 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %29, i32 0, i32 1
  %31 = load %struct.sock*, %struct.sock** %30, align 8
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = icmp ne %struct.sock* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %28
  %38 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %8, align 8
  %39 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %38, i32 0, i32 1
  %40 = load %struct.sock*, %struct.sock** %39, align 8
  store %struct.sock* %40, %struct.sock** %4, align 8
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @sctp_bh_lock_sock(%struct.sock* %41)
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call i64 @sock_owned_by_user(%struct.sock* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @sk_add_backlog(%struct.sock* %47, %struct.sk_buff* %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %56 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %55)
  br label %58

57:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %63

59:                                               ; preds = %37
  %60 = load %struct.sctp_inq*, %struct.sctp_inq** %7, align 8
  %61 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %62 = call i32 @sctp_inq_push(%struct.sctp_inq* %60, %struct.sctp_chunk* %61)
  br label %63

63:                                               ; preds = %59, %58
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 @sctp_bh_unlock_sock(%struct.sock* %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %99

69:                                               ; preds = %63
  br label %74

70:                                               ; preds = %28
  %71 = load %struct.sctp_inq*, %struct.sctp_inq** %7, align 8
  %72 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %73 = call i32 @sctp_inq_push(%struct.sctp_inq* %71, %struct.sctp_chunk* %72)
  br label %74

74:                                               ; preds = %70, %69
  br label %75

75:                                               ; preds = %74, %25
  %76 = load i64, i64* @SCTP_EP_TYPE_ASSOCIATION, align 8
  %77 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %8, align 8
  %78 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %8, align 8
  %83 = call i32 @sctp_assoc(%struct.sctp_ep_common* %82)
  %84 = call i32 @sctp_association_put(i32 %83)
  br label %98

85:                                               ; preds = %75
  %86 = load i64, i64* @SCTP_EP_TYPE_SOCKET, align 8
  %87 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %8, align 8
  %88 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %8, align 8
  %93 = call i32 @sctp_ep(%struct.sctp_ep_common* %92)
  %94 = call i32 @sctp_endpoint_put(i32 %93)
  br label %97

95:                                               ; preds = %85
  %96 = call i32 (...) @BUG()
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %97, %81
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %68
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_2__* @SCTP_INPUT_CB(%struct.sk_buff*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sctp_bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i64 @sk_add_backlog(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_inq_push(%struct.sctp_inq*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sctp_association_put(i32) #1

declare dso_local i32 @sctp_assoc(%struct.sctp_ep_common*) #1

declare dso_local i32 @sctp_endpoint_put(i32) #1

declare dso_local i32 @sctp_ep(%struct.sctp_ep_common*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
