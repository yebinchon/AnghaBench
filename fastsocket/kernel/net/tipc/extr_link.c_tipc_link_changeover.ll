; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_changeover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_changeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.sk_buff*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.link**, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.tipc_msg = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Link changeover error, peer did not permit changeover\0A\00", align 1
@CHANGEOVER_PROTOCOL = common dso_local global i32 0, align 4
@ORIGINAL_MSG = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Link changeover requires %u tunnel messages\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%c->%c:\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"EMPTY>SEND>\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Link changeover error, unable to send changeover msg\0A\00", align 1
@MSG_BUNDLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_changeover(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.link*, align 8
  %6 = alloca %struct.tipc_msg, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca %struct.tipc_msg*, align 8
  %11 = alloca i32*, align 8
  store %struct.link* %0, %struct.link** %2, align 8
  %12 = load %struct.link*, %struct.link** %2, align 8
  %13 = getelementptr inbounds %struct.link, %struct.link* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load %struct.link*, %struct.link** %2, align 8
  %16 = getelementptr inbounds %struct.link, %struct.link* %15, i32 0, i32 2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.link*, %struct.link** %2, align 8
  %19 = getelementptr inbounds %struct.link, %struct.link* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.link**, %struct.link*** %21, align 8
  %23 = getelementptr inbounds %struct.link*, %struct.link** %22, i64 0
  %24 = load %struct.link*, %struct.link** %23, align 8
  store %struct.link* %24, %struct.link** %5, align 8
  %25 = load %struct.link*, %struct.link** %5, align 8
  %26 = icmp ne %struct.link* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %156

28:                                               ; preds = %1
  %29 = load %struct.link*, %struct.link** %2, align 8
  %30 = getelementptr inbounds %struct.link, %struct.link* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = call i32 @warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %156

37:                                               ; preds = %28
  %38 = load i32, i32* @CHANGEOVER_PROTOCOL, align 4
  %39 = load i32, i32* @ORIGINAL_MSG, align 4
  %40 = load i32, i32* @INT_H_SIZE, align 4
  %41 = load %struct.link*, %struct.link** %2, align 8
  %42 = getelementptr inbounds %struct.link, %struct.link* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @msg_init(%struct.tipc_msg* %6, i32 %38, i32 %39, i32 %40, i32 %43)
  %45 = load %struct.link*, %struct.link** %2, align 8
  %46 = getelementptr inbounds %struct.link, %struct.link* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @msg_set_bearer_id(%struct.tipc_msg* %6, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @msg_set_msgcnt(%struct.tipc_msg* %6, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.link*, %struct.link** %2, align 8
  %54 = getelementptr inbounds %struct.link, %struct.link* %53, i32 0, i32 2
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %86, label %57

57:                                               ; preds = %37
  %58 = load i32, i32* @INT_H_SIZE, align 4
  %59 = call %struct.sk_buff* @buf_acquire(i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %8, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %83

62:                                               ; preds = %57
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load i32, i32* @INT_H_SIZE, align 4
  %65 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %63, %struct.tipc_msg* %6, i32 %64)
  %66 = load i32, i32* @INT_H_SIZE, align 4
  %67 = call i32 @msg_set_size(%struct.tipc_msg* %6, i32 %66)
  %68 = load %struct.link*, %struct.link** %2, align 8
  %69 = getelementptr inbounds %struct.link, %struct.link* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.link*, %struct.link** %5, align 8
  %74 = getelementptr inbounds %struct.link, %struct.link* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %77)
  %79 = call i32 @msg_dbg(%struct.tipc_msg* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.link*, %struct.link** %5, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call i32 @tipc_link_send_buf(%struct.link* %80, %struct.sk_buff* %81)
  br label %85

83:                                               ; preds = %57
  %84 = call i32 @warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %62
  br label %156

86:                                               ; preds = %37
  %87 = load %struct.link*, %struct.link** %2, align 8
  %88 = getelementptr inbounds %struct.link, %struct.link* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.link**, %struct.link*** %90, align 8
  %92 = getelementptr inbounds %struct.link*, %struct.link** %91, i64 0
  %93 = load %struct.link*, %struct.link** %92, align 8
  %94 = load %struct.link*, %struct.link** %2, align 8
  %95 = getelementptr inbounds %struct.link, %struct.link* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.link**, %struct.link*** %97, align 8
  %99 = getelementptr inbounds %struct.link*, %struct.link** %98, i64 1
  %100 = load %struct.link*, %struct.link** %99, align 8
  %101 = icmp ne %struct.link* %93, %100
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %152, %86
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %106, label %156

106:                                              ; preds = %103
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %107)
  store %struct.tipc_msg* %108, %struct.tipc_msg** %9, align 8
  %109 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %110 = call i64 @msg_user(%struct.tipc_msg* %109)
  %111 = load i64, i64* @MSG_BUNDLER, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %146

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %113
  %117 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %118 = call %struct.tipc_msg* @msg_get_wrapped(%struct.tipc_msg* %117)
  store %struct.tipc_msg* %118, %struct.tipc_msg** %10, align 8
  %119 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %120 = bitcast %struct.tipc_msg* %119 to i32*
  store i32* %120, i32** %11, align 8
  %121 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %122 = call i32 @msg_msgcnt(%struct.tipc_msg* %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %127, %116
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %3, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %123
  %128 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %129 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %130 = call i32 @msg_seqno(%struct.tipc_msg* %129)
  %131 = call i32 @msg_set_seqno(%struct.tipc_msg* %128, i32 %130)
  %132 = load %struct.link*, %struct.link** %2, align 8
  %133 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %134 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %135 = call i32 @msg_link_selector(%struct.tipc_msg* %134)
  %136 = call i32 @tipc_link_tunnel(%struct.link* %132, %struct.tipc_msg* %6, %struct.tipc_msg* %133, i32 %135)
  %137 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %138 = call i32 @msg_size(%struct.tipc_msg* %137)
  %139 = call i32 @align(i32 %138)
  %140 = load i32*, i32** %11, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %11, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = bitcast i32* %143 to %struct.tipc_msg*
  store %struct.tipc_msg* %144, %struct.tipc_msg** %10, align 8
  br label %123

145:                                              ; preds = %123
  br label %152

146:                                              ; preds = %113, %106
  %147 = load %struct.link*, %struct.link** %2, align 8
  %148 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %149 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %150 = call i32 @msg_link_selector(%struct.tipc_msg* %149)
  %151 = call i32 @tipc_link_tunnel(%struct.link* %147, %struct.tipc_msg* %6, %struct.tipc_msg* %148, i32 %150)
  br label %152

152:                                              ; preds = %146, %145
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  %155 = load %struct.sk_buff*, %struct.sk_buff** %154, align 8
  store %struct.sk_buff* %155, %struct.sk_buff** %4, align 8
  br label %103

156:                                              ; preds = %27, %35, %85, %103
  ret void
}

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_set_bearer_id(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_msgcnt(%struct.tipc_msg*, i32) #1

declare dso_local i32 @dbg(i8*, i32, ...) #1

declare dso_local %struct.sk_buff* @buf_acquire(i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @tipc_link_send_buf(%struct.link*, %struct.sk_buff*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @msg_get_wrapped(%struct.tipc_msg*) #1

declare dso_local i32 @msg_msgcnt(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_seqno(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_link_tunnel(%struct.link*, %struct.tipc_msg*, %struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_link_selector(%struct.tipc_msg*) #1

declare dso_local i32 @align(i32) #1

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
