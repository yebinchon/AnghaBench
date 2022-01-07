; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_retransmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_retransmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i64, i32, i8*, i8*, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__*, i64, %struct.sk_buff* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.tipc_msg = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Retransmitting %u in link %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c">NO_RETR->BCONG>\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c">RETR>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_retransmit(%struct.link* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tipc_msg*, align 8
  store %struct.link* %0, %struct.link** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %154

11:                                               ; preds = %3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %12)
  store %struct.tipc_msg* %13, %struct.tipc_msg** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.link*, %struct.link** %4, align 8
  %16 = call i32 @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %14, %struct.link* %15)
  %17 = load %struct.link*, %struct.link** %4, align 8
  %18 = getelementptr inbounds %struct.link, %struct.link* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.link*, %struct.link** %4, align 8
  %21 = call i64 @tipc_bearer_congested(i32 %19, %struct.link* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %11
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @skb_cloned(%struct.sk_buff* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %29 = call i32 @msg_dbg(%struct.tipc_msg* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.link*, %struct.link** %4, align 8
  %31 = call i32 @dbg_print_link(%struct.link* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %33 = call i64 @msg_seqno(%struct.tipc_msg* %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.link*, %struct.link** %4, align 8
  %36 = getelementptr inbounds %struct.link, %struct.link* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.link*, %struct.link** %4, align 8
  %39 = getelementptr inbounds %struct.link, %struct.link* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %154

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40
  br label %68

42:                                               ; preds = %11
  %43 = load %struct.link*, %struct.link** %4, align 8
  %44 = getelementptr inbounds %struct.link, %struct.link* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %47 = call i64 @msg_seqno(%struct.tipc_msg* %46)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.link*, %struct.link** %4, align 8
  %51 = getelementptr inbounds %struct.link, %struct.link* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = icmp sgt i32 %53, 100
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.link*, %struct.link** %4, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @link_retransmit_failure(%struct.link* %56, %struct.sk_buff* %57)
  br label %154

59:                                               ; preds = %49
  br label %67

60:                                               ; preds = %42
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %62 = call i64 @msg_seqno(%struct.tipc_msg* %61)
  %63 = load %struct.link*, %struct.link** %4, align 8
  %64 = getelementptr inbounds %struct.link, %struct.link* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.link*, %struct.link** %4, align 8
  %66 = getelementptr inbounds %struct.link, %struct.link* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %59
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %148, %68
  %70 = load i8*, i8** %6, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load %struct.link*, %struct.link** %4, align 8
  %75 = getelementptr inbounds %struct.link, %struct.link* %74, i32 0, i32 9
  %76 = load %struct.sk_buff*, %struct.sk_buff** %75, align 8
  %77 = icmp ne %struct.sk_buff* %73, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @skb_cloned(%struct.sk_buff* %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %81, %78, %72, %69
  %87 = phi i1 [ false, %78 ], [ false, %72 ], [ false, %69 ], [ %85, %81 ]
  br i1 %87, label %88, label %149

88:                                               ; preds = %86
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %89)
  store %struct.tipc_msg* %90, %struct.tipc_msg** %7, align 8
  %91 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %92 = load %struct.link*, %struct.link** %4, align 8
  %93 = getelementptr inbounds %struct.link, %struct.link* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 1
  %96 = call i32 @mod(i64 %95)
  %97 = call i32 @msg_set_ack(%struct.tipc_msg* %91, i32 %96)
  %98 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %99 = load %struct.link*, %struct.link** %4, align 8
  %100 = getelementptr inbounds %struct.link, %struct.link* %99, i32 0, i32 7
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @msg_set_bcast_ack(%struct.tipc_msg* %98, i32 %104)
  %106 = load %struct.link*, %struct.link** %4, align 8
  %107 = getelementptr inbounds %struct.link, %struct.link* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load %struct.link*, %struct.link** %4, align 8
  %111 = getelementptr inbounds %struct.link, %struct.link* %110, i32 0, i32 6
  %112 = call i64 @tipc_bearer_send(i32 %108, %struct.sk_buff* %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %88
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %115)
  %117 = call i32 @msg_dbg(%struct.tipc_msg* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load %struct.sk_buff*, %struct.sk_buff** %119, align 8
  store %struct.sk_buff* %120, %struct.sk_buff** %5, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 -1
  store i8* %122, i8** %6, align 8
  %123 = load %struct.link*, %struct.link** %4, align 8
  %124 = getelementptr inbounds %struct.link, %struct.link* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %148

128:                                              ; preds = %88
  %129 = load %struct.link*, %struct.link** %4, align 8
  %130 = getelementptr inbounds %struct.link, %struct.link* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.link*, %struct.link** %4, align 8
  %133 = call i32 @tipc_bearer_schedule(i32 %131, %struct.link* %132)
  %134 = load %struct.link*, %struct.link** %4, align 8
  %135 = getelementptr inbounds %struct.link, %struct.link* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %139)
  %141 = call i64 @msg_seqno(%struct.tipc_msg* %140)
  %142 = inttoptr i64 %141 to i8*
  %143 = load %struct.link*, %struct.link** %4, align 8
  %144 = getelementptr inbounds %struct.link, %struct.link* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = load %struct.link*, %struct.link** %4, align 8
  %147 = getelementptr inbounds %struct.link, %struct.link* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  br label %154

148:                                              ; preds = %114
  br label %69

149:                                              ; preds = %86
  %150 = load %struct.link*, %struct.link** %4, align 8
  %151 = getelementptr inbounds %struct.link, %struct.link* %150, i32 0, i32 2
  store i8* null, i8** %151, align 8
  %152 = load %struct.link*, %struct.link** %4, align 8
  %153 = getelementptr inbounds %struct.link, %struct.link* %152, i32 0, i32 3
  store i8* null, i8** %153, align 8
  br label %154

154:                                              ; preds = %149, %128, %55, %27, %10
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @dbg(i8*, i8*, %struct.link*) #1

declare dso_local i64 @tipc_bearer_congested(i32, %struct.link*) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @dbg_print_link(%struct.link*, i8*) #1

declare dso_local i64 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local i32 @link_retransmit_failure(%struct.link*, %struct.sk_buff*) #1

declare dso_local i32 @msg_set_ack(%struct.tipc_msg*, i32) #1

declare dso_local i32 @mod(i64) #1

declare dso_local i32 @msg_set_bcast_ack(%struct.tipc_msg*, i32) #1

declare dso_local i64 @tipc_bearer_send(i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @tipc_bearer_schedule(i32, %struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
