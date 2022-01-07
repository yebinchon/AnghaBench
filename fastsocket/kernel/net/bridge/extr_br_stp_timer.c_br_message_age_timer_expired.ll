; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_timer.c_br_message_age_timer_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_timer.c_br_message_age_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, %struct.TYPE_5__*, i32, %struct.TYPE_6__, %struct.net_bridge* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.net_bridge = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"%s: neighbor %.2x%.2x.%.2x:%.2x:%.2x:%.2x:%.2x:%.2x lost on port %d(%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @br_message_age_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_message_age_timer_expired(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.net_bridge_port*
  store %struct.net_bridge_port* %8, %struct.net_bridge_port** %3, align 8
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %9, i32 0, i32 4
  %11 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  store %struct.net_bridge* %11, %struct.net_bridge** %4, align 8
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %13 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %12, i32 0, i32 3
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  %14 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %15 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BR_STATE_DISABLED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %107

20:                                               ; preds = %1
  %21 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %22 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %67 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %70 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pr_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30, i32 %35, i32 %40, i32 %45, i32 %50, i32 %55, i32 %60, i32 %65, i32 %68, i32 %73)
  %75 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %76 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %75, i32 0, i32 0
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %79 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @BR_STATE_DISABLED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %20
  br label %103

84:                                               ; preds = %20
  %85 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %86 = call i32 @br_is_root_bridge(%struct.net_bridge* %85)
  store i32 %86, i32* %6, align 4
  %87 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %88 = call i32 @br_become_designated_port(%struct.net_bridge_port* %87)
  %89 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %90 = call i32 @br_configuration_update(%struct.net_bridge* %89)
  %91 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %92 = call i32 @br_port_state_selection(%struct.net_bridge* %91)
  %93 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %94 = call i32 @br_is_root_bridge(%struct.net_bridge* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %101 = call i32 @br_become_root_bridge(%struct.net_bridge* %100)
  br label %102

102:                                              ; preds = %99, %96, %84
  br label %103

103:                                              ; preds = %102, %83
  %104 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %105 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  br label %107

107:                                              ; preds = %103, %19
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @br_is_root_bridge(%struct.net_bridge*) #1

declare dso_local i32 @br_become_designated_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_configuration_update(%struct.net_bridge*) #1

declare dso_local i32 @br_port_state_selection(%struct.net_bridge*) #1

declare dso_local i32 @br_become_root_bridge(%struct.net_bridge*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
