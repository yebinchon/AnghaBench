; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c___sctp_rcv_walk_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c___sctp_rcv_walk_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sk_buff = type { i64 }
%union.sctp_addr = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@sctp_addip_noauth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_association* (%struct.sk_buff*, %union.sctp_addr*, %struct.sctp_transport**)* @__sctp_rcv_walk_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_association* @__sctp_rcv_walk_lookup(%struct.sk_buff* %0, %union.sctp_addr* %1, %struct.sctp_transport** %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %struct.sctp_transport**, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store %struct.sctp_transport** %2, %struct.sctp_transport*** %7, align 8
  store %struct.sctp_association* null, %struct.sctp_association** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %9, align 8
  br label %17

17:                                               ; preds = %80, %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %85

25:                                               ; preds = %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = bitcast %struct.TYPE_4__* %26 to i32*
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohs(i32 %30)
  %32 = call i32 @WORD_ROUND(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %27, i64 %33
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32* @skb_tail_pointer(%struct.sk_buff* %36)
  %38 = icmp ugt i32* %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %85

40:                                               ; preds = %25
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %70 [
    i32 129, label %44
    i32 128, label %46
    i32 130, label %54
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %10, align 4
  br label %71

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store %struct.sctp_association* null, %struct.sctp_association** %4, align 8
  br label %87

53:                                               ; preds = %49, %46
  br label %71

54:                                               ; preds = %40
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @sctp_addip_noauth, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57, %54
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %62 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call %struct.TYPE_5__* @sctp_hdr(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sctp_transport**, %struct.sctp_transport*** %7, align 8
  %68 = call %struct.sctp_association* @__sctp_rcv_asconf_lookup(%struct.TYPE_4__* %61, %union.sctp_addr* %62, i32 %66, %struct.sctp_transport** %67)
  store %struct.sctp_association* %68, %struct.sctp_association** %8, align 8
  br label %69

69:                                               ; preds = %60, %57
  br label %70

70:                                               ; preds = %40, %69
  br label %71

71:                                               ; preds = %70, %53, %44
  %72 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %73 = icmp ne %struct.sctp_association* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %85

75:                                               ; preds = %71
  %76 = load i32*, i32** %12, align 8
  %77 = bitcast i32* %76 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %12, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32* @skb_tail_pointer(%struct.sk_buff* %82)
  %84 = icmp ult i32* %81, %83
  br i1 %84, label %17, label %85

85:                                               ; preds = %80, %74, %39, %24
  %86 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  store %struct.sctp_association* %86, %struct.sctp_association** %4, align 8
  br label %87

87:                                               ; preds = %85, %52
  %88 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  ret %struct.sctp_association* %88
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @WORD_ROUND(i32) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.sctp_association* @__sctp_rcv_asconf_lookup(%struct.TYPE_4__*, %union.sctp_addr*, i32, %struct.sctp_transport**) #1

declare dso_local %struct.TYPE_5__* @sctp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
