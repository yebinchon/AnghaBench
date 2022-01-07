; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport.c_ovs_vport_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport.c_ovs_vport_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.vport* (%struct.vport_parms*)* }
%struct.vport = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.vport*)* }
%struct.vport_parms = type { i64 }
%struct.hlist_head = type { i32 }

@vport_ops_list = common dso_local global %struct.TYPE_5__** null, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vport* @ovs_vport_add(%struct.vport_parms* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.vport_parms*, align 8
  %4 = alloca %struct.vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hlist_head*, align 8
  store %struct.vport_parms* %0, %struct.vport_parms** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %60, %1
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @vport_ops_list, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_5__** %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %63

13:                                               ; preds = %8
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @vport_ops_list, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %22 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %13
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @vport_ops_list, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.vport* (%struct.vport_parms*)*, %struct.vport* (%struct.vport_parms*)** %31, align 8
  %33 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %34 = call %struct.vport* %32(%struct.vport_parms* %33)
  store %struct.vport* %34, %struct.vport** %4, align 8
  %35 = load %struct.vport*, %struct.vport** %4, align 8
  %36 = call i64 @IS_ERR(%struct.vport* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.vport*, %struct.vport** %4, align 8
  %40 = call i32 @PTR_ERR(%struct.vport* %39)
  store i32 %40, i32* %5, align 4
  br label %66

41:                                               ; preds = %25
  %42 = load %struct.vport*, %struct.vport** %4, align 8
  %43 = getelementptr inbounds %struct.vport, %struct.vport* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ovs_dp_get_net(i32 %44)
  %46 = load %struct.vport*, %struct.vport** %4, align 8
  %47 = getelementptr inbounds %struct.vport, %struct.vport* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.vport*)*, i32 (%struct.vport*)** %49, align 8
  %51 = load %struct.vport*, %struct.vport** %4, align 8
  %52 = call i32 %50(%struct.vport* %51)
  %53 = call %struct.hlist_head* @hash_bucket(i32 %45, i32 %52)
  store %struct.hlist_head* %53, %struct.hlist_head** %7, align 8
  %54 = load %struct.vport*, %struct.vport** %4, align 8
  %55 = getelementptr inbounds %struct.vport, %struct.vport* %54, i32 0, i32 0
  %56 = load %struct.hlist_head*, %struct.hlist_head** %7, align 8
  %57 = call i32 @hlist_add_head_rcu(i32* %55, %struct.hlist_head* %56)
  %58 = load %struct.vport*, %struct.vport** %4, align 8
  store %struct.vport* %58, %struct.vport** %2, align 8
  br label %69

59:                                               ; preds = %13
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %8

63:                                               ; preds = %8
  %64 = load i32, i32* @EAFNOSUPPORT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %38
  %67 = load i32, i32* %5, align 4
  %68 = call %struct.vport* @ERR_PTR(i32 %67)
  store %struct.vport* %68, %struct.vport** %2, align 8
  br label %69

69:                                               ; preds = %66, %41
  %70 = load %struct.vport*, %struct.vport** %2, align 8
  ret %struct.vport* %70
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__**) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local %struct.hlist_head* @hash_bucket(i32, i32) #1

declare dso_local i32 @ovs_dp_get_net(i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

declare dso_local %struct.vport* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
