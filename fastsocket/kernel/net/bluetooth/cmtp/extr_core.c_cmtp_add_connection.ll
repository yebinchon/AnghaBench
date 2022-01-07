; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_core.c_cmtp_add_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_core.c_cmtp_add_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_connadd_req = type { i32 }
%struct.socket = type { i32 }
%struct.cmtp_session = type { i64, i32, i32**, i32, i32, i32, i32, %struct.socket*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cmtp_session_sem = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mtu %d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BT_CONFIG = common dso_local global i64 0, align 8
@CMTP_INITIAL_MSGNUM = common dso_local global i32 0, align 4
@cmtp_session = common dso_local global i32 0, align 4
@CLONE_KERNEL = common dso_local global i32 0, align 4
@CMTP_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmtp_add_connection(%struct.cmtp_connadd_req* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmtp_connadd_req*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.cmtp_session*, align 8
  %7 = alloca %struct.cmtp_session*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cmtp_connadd_req* %0, %struct.cmtp_connadd_req** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %12 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_4__* @bt_sk(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = call i32 @baswap(i32* %8, i32* %17)
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_4__* @bt_sk(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @baswap(i32* %9, i32* %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.cmtp_session* @kzalloc(i32 64, i32 %25)
  store %struct.cmtp_session* %26, %struct.cmtp_session** %6, align 8
  %27 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %28 = icmp ne %struct.cmtp_session* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %159

32:                                               ; preds = %2
  %33 = call i32 @down_write(i32* @cmtp_session_sem)
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_4__* @bt_sk(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call %struct.cmtp_session* @__cmtp_get_session(i32* %38)
  store %struct.cmtp_session* %39, %struct.cmtp_session** %7, align 8
  %40 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %41 = icmp ne %struct.cmtp_session* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %44 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BT_CONNECTED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EEXIST, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %154

51:                                               ; preds = %42, %32
  %52 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %53 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %52, i32 0, i32 10
  %54 = load %struct.socket*, %struct.socket** %5, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_4__* @bt_sk(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @bacpy(i32* %53, i32* %58)
  %60 = load i32, i32* @uint, align 4
  %61 = load %struct.socket*, %struct.socket** %5, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_3__* @l2cap_pi(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.socket*, %struct.socket** %5, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_3__* @l2cap_pi(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @min_t(i32 %60, i32 %66, i32 %72)
  %74 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %75 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %77 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %81 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @batostr(i32* %9)
  %84 = call i32 @sprintf(i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = load %struct.socket*, %struct.socket** %5, align 8
  %86 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %87 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %86, i32 0, i32 7
  store %struct.socket* %85, %struct.socket** %87, align 8
  %88 = load i64, i64* @BT_CONFIG, align 8
  %89 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %90 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %92 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %91, i32 0, i32 6
  %93 = call i32 @init_waitqueue_head(i32* %92)
  %94 = load i32, i32* @CMTP_INITIAL_MSGNUM, align 4
  %95 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %96 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %98 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %97, i32 0, i32 4
  %99 = call i32 @INIT_LIST_HEAD(i32* %98)
  %100 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %101 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %100, i32 0, i32 3
  %102 = call i32 @skb_queue_head_init(i32* %101)
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %113, %51
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 16
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %108 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %107, i32 0, i32 2
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %103

116:                                              ; preds = %103
  %117 = load %struct.cmtp_connadd_req*, %struct.cmtp_connadd_req** %4, align 8
  %118 = getelementptr inbounds %struct.cmtp_connadd_req, %struct.cmtp_connadd_req* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %121 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %123 = call i32 @__cmtp_link_session(%struct.cmtp_session* %122)
  %124 = load i32, i32* @cmtp_session, align 4
  %125 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %126 = load i32, i32* @CLONE_KERNEL, align 4
  %127 = call i32 @kernel_thread(i32 %124, %struct.cmtp_session* %125, i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %151

131:                                              ; preds = %116
  %132 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %133 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @CMTP_LOOPBACK, align 4
  %136 = shl i32 1, %135
  %137 = and i32 %134, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %131
  %140 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %141 = call i32 @cmtp_attach_device(%struct.cmtp_session* %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %148

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %131
  %147 = call i32 @up_write(i32* @cmtp_session_sem)
  store i32 0, i32* %3, align 4
  br label %159

148:                                              ; preds = %144
  %149 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %150 = call i32 @cmtp_detach_device(%struct.cmtp_session* %149)
  br label %151

151:                                              ; preds = %148, %130
  %152 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %153 = call i32 @__cmtp_unlink_session(%struct.cmtp_session* %152)
  br label %154

154:                                              ; preds = %151, %48
  %155 = call i32 @up_write(i32* @cmtp_session_sem)
  %156 = load %struct.cmtp_session*, %struct.cmtp_session** %6, align 8
  %157 = call i32 @kfree(%struct.cmtp_session* %156)
  %158 = load i32, i32* %11, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %154, %146, %29
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @baswap(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(i32) #1

declare dso_local %struct.cmtp_session* @kzalloc(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.cmtp_session* @__cmtp_get_session(i32*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i8* @batostr(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @__cmtp_link_session(%struct.cmtp_session*) #1

declare dso_local i32 @kernel_thread(i32, %struct.cmtp_session*, i32) #1

declare dso_local i32 @cmtp_attach_device(%struct.cmtp_session*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @cmtp_detach_device(%struct.cmtp_session*) #1

declare dso_local i32 @__cmtp_unlink_session(%struct.cmtp_session*) #1

declare dso_local i32 @kfree(%struct.cmtp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
