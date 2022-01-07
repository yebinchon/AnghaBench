; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_lib.c_fc_get_pr_transport_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_lib.c_fc_get_pr_transport_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_node_acl = type { i8* }
%struct.t10_pr_registration = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_get_pr_transport_id(%struct.se_portal_group* %0, %struct.se_node_acl* %1, %struct.t10_pr_registration* %2, i32* %3, i8* %4) #0 {
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
  store i32 8, i32* %14, align 4
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %16 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8* %18, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %32, %29, %5
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 24
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  br label %19

32:                                               ; preds = %22
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = call zeroext i8 @transport_asciihex_to_binaryhex(i8* %36)
  store i8 %37, i8* %11, align 1
  %38 = load i8, i8* %11, align 1
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 %38, i8* %43, align 1
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %13, align 4
  br label %19

46:                                               ; preds = %19
  ret i32 24
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local zeroext i8 @transport_asciihex_to_binaryhex(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
