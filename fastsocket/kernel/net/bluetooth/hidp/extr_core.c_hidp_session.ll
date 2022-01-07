; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.sock* }
%struct.sock = type { i64, i32*, i8*, i32 }
%struct.TYPE_7__ = type { i32, %struct.sock* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"session %p\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"khidpd_%04x%04x\00", align 1
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@hidp_session_sem = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i8* null, align 8
@BT_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hidp_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_session(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.hidp_session*
  store %struct.hidp_session* %12, %struct.hidp_session** %3, align 8
  %13 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %14 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %4, align 8
  %18 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %19 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %23)
  %25 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %26 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %25, i32 0, i32 3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %1
  %30 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %31 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %30, i32 0, i32 3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %37 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %36, i32 0, i32 3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %29, %1
  %43 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %44 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %49 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %54 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %47, %42
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @daemonize(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* @current, align 4
  %63 = call i32 @set_user_nice(i32 %62, i32 -15)
  %64 = load i32, i32* @current, align 4
  %65 = call i32 @init_waitqueue_entry(i32* %9, i32 %64)
  %66 = load i32, i32* @current, align 4
  %67 = call i32 @init_waitqueue_entry(i32* %10, i32 %66)
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @add_wait_queue(i32* %70, i32* %9)
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @add_wait_queue(i32* %74, i32* %10)
  br label %76

76:                                               ; preds = %121, %58
  %77 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %78 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %77, i32 0, i32 4
  %79 = call i32 @atomic_read(i32* %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %82, label %125

82:                                               ; preds = %76
  %83 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %84 = call i32 @set_current_state(i32 %83)
  %85 = load %struct.sock*, %struct.sock** %4, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BT_CONNECTED, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %82
  %91 = load %struct.sock*, %struct.sock** %5, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @BT_CONNECTED, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %82
  br label %125

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %103, %97
  %99 = load %struct.sock*, %struct.sock** %4, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 3
  %101 = call %struct.sk_buff* @skb_dequeue(i32* %100)
  store %struct.sk_buff* %101, %struct.sk_buff** %6, align 8
  %102 = icmp ne %struct.sk_buff* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = call i32 @skb_orphan(%struct.sk_buff* %104)
  %106 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call i32 @hidp_recv_ctrl_frame(%struct.hidp_session* %106, %struct.sk_buff* %107)
  br label %98

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %115, %109
  %111 = load %struct.sock*, %struct.sock** %5, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 3
  %113 = call %struct.sk_buff* @skb_dequeue(i32* %112)
  store %struct.sk_buff* %113, %struct.sk_buff** %6, align 8
  %114 = icmp ne %struct.sk_buff* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = call i32 @skb_orphan(%struct.sk_buff* %116)
  %118 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = call i32 @hidp_recv_intr_frame(%struct.hidp_session* %118, %struct.sk_buff* %119)
  br label %110

121:                                              ; preds = %110
  %122 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %123 = call i32 @hidp_process_transmit(%struct.hidp_session* %122)
  %124 = call i32 (...) @schedule()
  br label %76

125:                                              ; preds = %96, %76
  %126 = load i32, i32* @TASK_RUNNING, align 4
  %127 = call i32 @set_current_state(i32 %126)
  %128 = load %struct.sock*, %struct.sock** %5, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @remove_wait_queue(i32* %130, i32* %10)
  %132 = load %struct.sock*, %struct.sock** %4, align 8
  %133 = getelementptr inbounds %struct.sock, %struct.sock* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @remove_wait_queue(i32* %134, i32* %9)
  %136 = call i32 @down_write(i32* @hidp_session_sem)
  %137 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %138 = call i32 @hidp_del_timer(%struct.hidp_session* %137)
  %139 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %140 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %139, i32 0, i32 3
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = icmp ne %struct.TYPE_9__* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %125
  %144 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %145 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %144, i32 0, i32 3
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = call i32 @input_unregister_device(%struct.TYPE_9__* %146)
  %148 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %149 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %148, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %149, align 8
  br label %150

150:                                              ; preds = %143, %125
  %151 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %152 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %151, i32 0, i32 2
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = icmp ne %struct.TYPE_10__* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %157 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %156, i32 0, i32 2
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = call i32 @hid_destroy_device(%struct.TYPE_10__* %158)
  %160 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %161 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %160, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %161, align 8
  br label %162

162:                                              ; preds = %155, %150
  %163 = load i8*, i8** @EUNATCH, align 8
  %164 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %165 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %164, i32 0, i32 1
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load %struct.sock*, %struct.sock** %167, align 8
  %169 = getelementptr inbounds %struct.sock, %struct.sock* %168, i32 0, i32 2
  store i8* %163, i8** %169, align 8
  %170 = load i8*, i8** @EUNATCH, align 8
  %171 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %172 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %171, i32 0, i32 0
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load %struct.sock*, %struct.sock** %174, align 8
  %176 = getelementptr inbounds %struct.sock, %struct.sock* %175, i32 0, i32 2
  store i8* %170, i8** %176, align 8
  %177 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %178 = call i32 @hidp_schedule(%struct.hidp_session* %177)
  %179 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %180 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %179, i32 0, i32 1
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @fput(i32 %183)
  %185 = load %struct.sock*, %struct.sock** %4, align 8
  %186 = getelementptr inbounds %struct.sock, %struct.sock* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.sock*, %struct.sock** %4, align 8
  %190 = getelementptr inbounds %struct.sock, %struct.sock* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @BT_CLOSED, align 8
  %193 = icmp eq i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @msecs_to_jiffies(i32 500)
  %196 = call i32 @wait_event_timeout(i32 %188, i32 %194, i32 %195)
  %197 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %198 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %197, i32 0, i32 0
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @fput(i32 %201)
  %203 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %204 = call i32 @__hidp_unlink_session(%struct.hidp_session* %203)
  %205 = call i32 @up_write(i32* @hidp_session_sem)
  %206 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %207 = call i32 @kfree(%struct.hidp_session* %206)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*) #1

declare dso_local i32 @daemonize(i8*, i32, i32) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @hidp_recv_ctrl_frame(%struct.hidp_session*, %struct.sk_buff*) #1

declare dso_local i32 @hidp_recv_intr_frame(%struct.hidp_session*, %struct.sk_buff*) #1

declare dso_local i32 @hidp_process_transmit(%struct.hidp_session*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @hidp_del_timer(%struct.hidp_session*) #1

declare dso_local i32 @input_unregister_device(%struct.TYPE_9__*) #1

declare dso_local i32 @hid_destroy_device(%struct.TYPE_10__*) #1

declare dso_local i32 @hidp_schedule(%struct.hidp_session*) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @__hidp_unlink_session(%struct.hidp_session*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.hidp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
