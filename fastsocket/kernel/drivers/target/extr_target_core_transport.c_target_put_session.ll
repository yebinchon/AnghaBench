; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_put_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_put_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { i32, %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_session*)* }

@target_release_session = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_put_session(%struct.se_session* %0) #0 {
  %2 = alloca %struct.se_session*, align 8
  %3 = alloca %struct.se_portal_group*, align 8
  store %struct.se_session* %0, %struct.se_session** %2, align 8
  %4 = load %struct.se_session*, %struct.se_session** %2, align 8
  %5 = getelementptr inbounds %struct.se_session, %struct.se_session* %4, i32 0, i32 1
  %6 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  store %struct.se_portal_group* %6, %struct.se_portal_group** %3, align 8
  %7 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %8 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.se_session*)*, i32 (%struct.se_session*)** %10, align 8
  %12 = icmp ne i32 (%struct.se_session*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %15 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.se_session*)*, i32 (%struct.se_session*)** %17, align 8
  %19 = load %struct.se_session*, %struct.se_session** %2, align 8
  %20 = call i32 %18(%struct.se_session* %19)
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.se_session*, %struct.se_session** %2, align 8
  %23 = getelementptr inbounds %struct.se_session, %struct.se_session* %22, i32 0, i32 0
  %24 = load i32, i32* @target_release_session, align 4
  %25 = call i32 @kref_put(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %13
  ret void
}

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
