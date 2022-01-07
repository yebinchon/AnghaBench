; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i64, i64, i32, i32, i32, i64, i64, i32*, %struct.sk_buff*, i64, i64, i32*, i32*, i32*, i64, i64, i32, %struct.sk_buff*, i32, i64, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.TYPE_3__ = type { i64 }

@INVALID_SESSION = common dso_local global i32 0, align 4
@RESET_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Resetting Link\0A\00", align 1
@RESET_RESET = common dso_local global i64 0, align 8
@START_CHANGEOVER = common dso_local global i32 0, align 4
@tipc_cfg_link_event = common dso_local global i32 0, align 4
@tipc_disc_link_event = common dso_local global i32 0, align 4
@TIPC_CONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_reset(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.link* %0, %struct.link** %2, align 8
  %8 = load %struct.link*, %struct.link** %2, align 8
  %9 = getelementptr inbounds %struct.link, %struct.link* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.link*, %struct.link** %2, align 8
  %12 = getelementptr inbounds %struct.link, %struct.link* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.link*, %struct.link** %2, align 8
  %15 = call i32 @tipc_link_is_active(%struct.link* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.link*, %struct.link** %2, align 8
  %17 = getelementptr inbounds %struct.link, %struct.link* %16, i32 0, i32 24
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.link*, %struct.link** %2, align 8
  %20 = getelementptr inbounds %struct.link, %struct.link* %19, i32 0, i32 24
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @msg_session(i32 %21)
  %23 = add nsw i32 %22, 1
  %24 = and i32 %23, 65535
  %25 = call i32 @msg_set_session(i32 %18, i32 %24)
  %26 = load i32, i32* @INVALID_SESSION, align 4
  %27 = load %struct.link*, %struct.link** %2, align 8
  %28 = getelementptr inbounds %struct.link, %struct.link* %27, i32 0, i32 23
  store i32 %26, i32* %28, align 8
  %29 = load %struct.link*, %struct.link** %2, align 8
  %30 = call i32 @link_init_max_pkt(%struct.link* %29)
  %31 = load i64, i64* @RESET_UNKNOWN, align 8
  %32 = load %struct.link*, %struct.link** %2, align 8
  %33 = getelementptr inbounds %struct.link, %struct.link* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = call i32 @dbg_link_state(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @RESET_UNKNOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %1
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @RESET_RESET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %1
  br label %149

43:                                               ; preds = %38
  %44 = load %struct.link*, %struct.link** %2, align 8
  %45 = getelementptr inbounds %struct.link, %struct.link* %44, i32 0, i32 20
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.link*, %struct.link** %2, align 8
  %48 = call i32 @tipc_node_link_down(%struct.TYPE_3__* %46, %struct.link* %47)
  %49 = load %struct.link*, %struct.link** %2, align 8
  %50 = getelementptr inbounds %struct.link, %struct.link* %49, i32 0, i32 22
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.link*, %struct.link** %2, align 8
  %53 = getelementptr inbounds %struct.link, %struct.link* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @tipc_bearer_remove_dest(i32 %51, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %43
  %59 = load %struct.link*, %struct.link** %2, align 8
  %60 = getelementptr inbounds %struct.link, %struct.link* %59, i32 0, i32 20
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = call i64 @tipc_node_has_active_links(%struct.TYPE_3__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.link*, %struct.link** %2, align 8
  %66 = getelementptr inbounds %struct.link, %struct.link* %65, i32 0, i32 20
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.link*, %struct.link** %2, align 8
  %74 = getelementptr inbounds %struct.link, %struct.link* %73, i32 0, i32 19
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @START_CHANGEOVER, align 4
  %76 = load %struct.link*, %struct.link** %2, align 8
  %77 = getelementptr inbounds %struct.link, %struct.link* %76, i32 0, i32 18
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %71, %64, %58, %43
  %79 = load %struct.link*, %struct.link** %2, align 8
  %80 = call i32 @link_release_outqueue(%struct.link* %79)
  %81 = load %struct.link*, %struct.link** %2, align 8
  %82 = getelementptr inbounds %struct.link, %struct.link* %81, i32 0, i32 17
  %83 = load %struct.sk_buff*, %struct.sk_buff** %82, align 8
  %84 = call i32 @buf_discard(%struct.sk_buff* %83)
  %85 = load %struct.link*, %struct.link** %2, align 8
  %86 = getelementptr inbounds %struct.link, %struct.link* %85, i32 0, i32 17
  store %struct.sk_buff* null, %struct.sk_buff** %86, align 8
  %87 = load %struct.link*, %struct.link** %2, align 8
  %88 = getelementptr inbounds %struct.link, %struct.link* %87, i32 0, i32 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  store %struct.sk_buff* %89, %struct.sk_buff** %3, align 8
  br label %90

90:                                               ; preds = %93, %78
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load %struct.sk_buff*, %struct.sk_buff** %95, align 8
  store %struct.sk_buff* %96, %struct.sk_buff** %7, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = call i32 @buf_discard(%struct.sk_buff* %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %99, %struct.sk_buff** %3, align 8
  br label %90

100:                                              ; preds = %90
  %101 = load %struct.link*, %struct.link** %2, align 8
  %102 = getelementptr inbounds %struct.link, %struct.link* %101, i32 0, i32 16
  %103 = call i32 @list_empty(i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load %struct.link*, %struct.link** %2, align 8
  %107 = call i32 @tipc_link_wakeup_ports(%struct.link* %106, i32 1)
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.link*, %struct.link** %2, align 8
  %110 = getelementptr inbounds %struct.link, %struct.link* %109, i32 0, i32 15
  store i64 0, i64* %110, align 8
  %111 = load %struct.link*, %struct.link** %2, align 8
  %112 = getelementptr inbounds %struct.link, %struct.link* %111, i32 0, i32 14
  store i64 0, i64* %112, align 8
  %113 = load %struct.link*, %struct.link** %2, align 8
  %114 = getelementptr inbounds %struct.link, %struct.link* %113, i32 0, i32 13
  store i32* null, i32** %114, align 8
  %115 = load %struct.link*, %struct.link** %2, align 8
  %116 = getelementptr inbounds %struct.link, %struct.link* %115, i32 0, i32 12
  store i32* null, i32** %116, align 8
  %117 = load %struct.link*, %struct.link** %2, align 8
  %118 = getelementptr inbounds %struct.link, %struct.link* %117, i32 0, i32 11
  store i32* null, i32** %118, align 8
  %119 = load %struct.link*, %struct.link** %2, align 8
  %120 = getelementptr inbounds %struct.link, %struct.link* %119, i32 0, i32 10
  store i64 0, i64* %120, align 8
  %121 = load %struct.link*, %struct.link** %2, align 8
  %122 = getelementptr inbounds %struct.link, %struct.link* %121, i32 0, i32 2
  store i32 1, i32* %122, align 8
  %123 = load %struct.link*, %struct.link** %2, align 8
  %124 = getelementptr inbounds %struct.link, %struct.link* %123, i32 0, i32 3
  store i32 1, i32* %124, align 4
  %125 = load %struct.link*, %struct.link** %2, align 8
  %126 = getelementptr inbounds %struct.link, %struct.link* %125, i32 0, i32 9
  store i64 0, i64* %126, align 8
  %127 = load %struct.link*, %struct.link** %2, align 8
  %128 = getelementptr inbounds %struct.link, %struct.link* %127, i32 0, i32 8
  store %struct.sk_buff* null, %struct.sk_buff** %128, align 8
  %129 = load %struct.link*, %struct.link** %2, align 8
  %130 = getelementptr inbounds %struct.link, %struct.link* %129, i32 0, i32 7
  store i32* null, i32** %130, align 8
  %131 = load %struct.link*, %struct.link** %2, align 8
  %132 = getelementptr inbounds %struct.link, %struct.link* %131, i32 0, i32 6
  store i64 0, i64* %132, align 8
  %133 = load %struct.link*, %struct.link** %2, align 8
  %134 = getelementptr inbounds %struct.link, %struct.link* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load %struct.link*, %struct.link** %2, align 8
  %136 = call i32 @link_reset_statistics(%struct.link* %135)
  %137 = load i32, i32* @tipc_cfg_link_event, align 4
  %138 = load %struct.link*, %struct.link** %2, align 8
  %139 = call i32 @link_send_event(i32 %137, %struct.link* %138, i32 0)
  %140 = load %struct.link*, %struct.link** %2, align 8
  %141 = getelementptr inbounds %struct.link, %struct.link* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @in_own_cluster(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %108
  %146 = load i32, i32* @tipc_disc_link_event, align 4
  %147 = load %struct.link*, %struct.link** %2, align 8
  %148 = call i32 @link_send_event(i32 %146, %struct.link* %147, i32 0)
  br label %149

149:                                              ; preds = %42, %145, %108
  ret void
}

declare dso_local i32 @tipc_link_is_active(%struct.link*) #1

declare dso_local i32 @msg_set_session(i32, i32) #1

declare dso_local i32 @msg_session(i32) #1

declare dso_local i32 @link_init_max_pkt(%struct.link*) #1

declare dso_local i32 @dbg_link_state(i8*) #1

declare dso_local i32 @tipc_node_link_down(%struct.TYPE_3__*, %struct.link*) #1

declare dso_local i32 @tipc_bearer_remove_dest(i32, i32) #1

declare dso_local i64 @tipc_node_has_active_links(%struct.TYPE_3__*) #1

declare dso_local i32 @link_release_outqueue(%struct.link*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @tipc_link_wakeup_ports(%struct.link*, i32) #1

declare dso_local i32 @link_reset_statistics(%struct.link*) #1

declare dso_local i32 @link_send_event(i32, %struct.link*, i32) #1

declare dso_local i32 @in_own_cluster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
