; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_rcv_ootb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_rcv_ootb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.TYPE_2__ = type { i64, i32 }

@SCTP_CID_ABORT = common dso_local global i64 0, align 8
@SCTP_CID_SHUTDOWN_COMPLETE = common dso_local global i64 0, align 8
@SCTP_CID_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @sctp_rcv_ootb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_rcv_ootb(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %4, align 8
  br label %10

10:                                               ; preds = %64, %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ntohs(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 16
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %69

18:                                               ; preds = %10
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %20 = bitcast %struct.TYPE_2__* %19 to i32*
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ntohs(i32 %23)
  %25 = call i32 @WORD_ROUND(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32* @skb_tail_pointer(%struct.sk_buff* %29)
  %31 = icmp ugt i32* %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %69

33:                                               ; preds = %18
  %34 = load i64, i64* @SCTP_CID_ABORT, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %70

40:                                               ; preds = %33
  %41 = load i64, i64* @SCTP_CID_SHUTDOWN_COMPLETE, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %70

47:                                               ; preds = %40
  %48 = load i64, i64* @SCTP_CID_INIT, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %55 = bitcast %struct.TYPE_2__* %54 to i8*
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %70

61:                                               ; preds = %53, %47
  %62 = load i32*, i32** %5, align 8
  %63 = bitcast i32* %62 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %63, %struct.TYPE_2__** %4, align 8
  br label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call i32* @skb_tail_pointer(%struct.sk_buff* %66)
  %68 = icmp ult i32* %65, %67
  br i1 %68, label %10, label %69

69:                                               ; preds = %64, %32, %17
  store i32 0, i32* %2, align 4
  br label %71

70:                                               ; preds = %60, %46, %39
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @WORD_ROUND(i32) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
