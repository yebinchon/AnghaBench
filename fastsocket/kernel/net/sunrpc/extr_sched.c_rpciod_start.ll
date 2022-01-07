; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpciod_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpciod_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"RPC:       creating workqueue rpciod\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rpciod\00", align 1
@rpciod_workqueue = common dso_local global %struct.workqueue_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rpciod_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpciod_start() #0 {
  %1 = alloca %struct.workqueue_struct*, align 8
  %2 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %3 = call %struct.workqueue_struct* @create_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.workqueue_struct* %3, %struct.workqueue_struct** %1, align 8
  %4 = load %struct.workqueue_struct*, %struct.workqueue_struct** %1, align 8
  store %struct.workqueue_struct* %4, %struct.workqueue_struct** @rpciod_workqueue, align 8
  %5 = load %struct.workqueue_struct*, %struct.workqueue_struct** @rpciod_workqueue, align 8
  %6 = icmp ne %struct.workqueue_struct* %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local %struct.workqueue_struct* @create_workqueue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
