; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_lib.c_iscsi_get_pr_transport_id_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_lib.c_iscsi_get_pr_transport_id_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_node_acl = type { i32, i32 }
%struct.t10_pr_registration = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_get_pr_transport_id_len(%struct.se_portal_group* %0, %struct.se_node_acl* %1, %struct.t10_pr_registration* %2, i32* %3) #0 {
  %5 = alloca %struct.se_portal_group*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.t10_pr_registration*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %5, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %6, align 8
  store %struct.t10_pr_registration* %2, %struct.t10_pr_registration** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %12 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %15 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlen(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %7, align 8
  %21 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 5
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 7
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 1, i32* %29, align 4
  br label %32

30:                                               ; preds = %4
  %31 = load i32*, i32** %8, align 8
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %34 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 0, %36
  %38 = and i32 %37, 3
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
