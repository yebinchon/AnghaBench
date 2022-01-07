; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_set_initiator_node_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_set_initiator_node_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_node_acl = type { i8* }

@MAX_ACL_TAG_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_tpg_set_initiator_node_tag(%struct.se_portal_group* %0, %struct.se_node_acl* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_portal_group*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca i8*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %5, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = load i64, i64* @MAX_ACL_TAG_SIZE, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %31

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %16, i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %21 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  store i32 0, i32* %4, align 4
  br label %31

24:                                               ; preds = %15
  %25 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %26 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* @MAX_ACL_TAG_SIZE, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @snprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %19, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
