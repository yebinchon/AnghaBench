; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c___dequeue_entity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c___dequeue_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32, %struct.rb_node* }
%struct.rb_node = type { i32 }
%struct.sched_entity = type { %struct.rb_node }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*)* @__dequeue_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dequeue_entity(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca %struct.rb_node*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %6 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %7 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %6, i32 0, i32 1
  %8 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %9 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %10 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %9, i32 0, i32 0
  %11 = icmp eq %struct.rb_node* %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %14 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %13, i32 0, i32 0
  %15 = call %struct.rb_node* @rb_next(%struct.rb_node* %14)
  store %struct.rb_node* %15, %struct.rb_node** %5, align 8
  %16 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %17 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %18 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %17, i32 0, i32 1
  store %struct.rb_node* %16, %struct.rb_node** %18, align 8
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %21 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %20, i32 0, i32 0
  %22 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %23 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %22, i32 0, i32 0
  %24 = call i32 @rb_erase(%struct.rb_node* %21, i32* %23)
  ret void
}

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local i32 @rb_erase(%struct.rb_node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
