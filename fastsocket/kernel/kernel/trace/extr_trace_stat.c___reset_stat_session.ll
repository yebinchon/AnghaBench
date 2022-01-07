; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_stat.c___reset_stat_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_stat.c___reset_stat_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.rb_node* }
%struct.rb_node = type { i32 }
%struct.stat_session = type { %struct.TYPE_2__, i32 }

@RB_ROOT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stat_session*)* @__reset_stat_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__reset_stat_session(%struct.stat_session* %0) #0 {
  %2 = alloca %struct.stat_session*, align 8
  %3 = alloca %struct.rb_node*, align 8
  store %struct.stat_session* %0, %struct.stat_session** %2, align 8
  %4 = load %struct.stat_session*, %struct.stat_session** %2, align 8
  %5 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  store %struct.rb_node* %7, %struct.rb_node** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %10 = icmp ne %struct.rb_node* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.stat_session*, %struct.stat_session** %2, align 8
  %13 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %16 = call %struct.rb_node* @release_next(i32 %14, %struct.rb_node* %15)
  store %struct.rb_node* %16, %struct.rb_node** %3, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.stat_session*, %struct.stat_session** %2, align 8
  %19 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %18, i32 0, i32 0
  %20 = bitcast %struct.TYPE_2__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_2__* @RB_ROOT to i8*), i64 8, i1 false)
  ret void
}

declare dso_local %struct.rb_node* @release_next(i32, %struct.rb_node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
