; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_lib.c_sas_get_pr_transport_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_lib.c_sas_get_pr_transport_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_node_acl = type { i8* }
%struct.t10_pr_registration = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_get_pr_transport_id(%struct.se_portal_group* %0, %struct.se_node_acl* %1, %struct.t10_pr_registration* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_node_acl*, align 8
  %8 = alloca %struct.t10_pr_registration*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %6, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %7, align 8
  store %struct.t10_pr_registration* %2, %struct.t10_pr_registration** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 4, i32* %14, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 6, i8* %16, align 1
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %18 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %36, %5
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = call zeroext i8 @transport_asciihex_to_binaryhex(i8* %28)
  store i8 %29, i8* %11, align 1
  %30 = load i8, i8* %11, align 1
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %14, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 %30, i8* %35, align 1
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %13, align 4
  br label %21

39:                                               ; preds = %21
  ret i32 24
}

declare dso_local zeroext i8 @transport_asciihex_to_binaryhex(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
