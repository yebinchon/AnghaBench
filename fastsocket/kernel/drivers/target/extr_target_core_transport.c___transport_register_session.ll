; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c___transport_register_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c___transport_register_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (...)*, i32 (%struct.se_session*, i8*, i32)* }
%struct.se_node_acl = type { i32, i32, %struct.se_session*, i32 }
%struct.se_session = type { i8*, i32, i32, i32, %struct.se_portal_group* }

@PR_REG_ISID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"TARGET_CORE[%s]: Registered fabric_sess_ptr: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__transport_register_session(%struct.se_portal_group* %0, %struct.se_node_acl* %1, %struct.se_session* %2, i8* %3) #0 {
  %5 = alloca %struct.se_portal_group*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca %struct.se_session*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %5, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %6, align 8
  store %struct.se_session* %2, %struct.se_session** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %16 = load %struct.se_session*, %struct.se_session** %7, align 8
  %17 = getelementptr inbounds %struct.se_session, %struct.se_session* %16, i32 0, i32 4
  store %struct.se_portal_group* %15, %struct.se_portal_group** %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.se_session*, %struct.se_session** %7, align 8
  %20 = getelementptr inbounds %struct.se_session, %struct.se_session* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %22 = icmp ne %struct.se_node_acl* %21, null
  br i1 %22, label %23, label %65

23:                                               ; preds = %4
  %24 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %25 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.se_session*, i8*, i32)*, i32 (%struct.se_session*, i8*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.se_session*, i8*, i32)* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = getelementptr inbounds i8, i8* %14, i64 0
  %32 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %33 = call i32 @memset(i8* %31, i32 0, i32 %32)
  %34 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %35 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (%struct.se_session*, i8*, i32)*, i32 (%struct.se_session*, i8*, i32)** %37, align 8
  %39 = load %struct.se_session*, %struct.se_session** %7, align 8
  %40 = getelementptr inbounds i8, i8* %14, i64 0
  %41 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %42 = call i32 %38(%struct.se_session* %39, i8* %40, i32 %41)
  %43 = getelementptr inbounds i8, i8* %14, i64 0
  %44 = call i32 @get_unaligned_be64(i8* %43)
  %45 = load %struct.se_session*, %struct.se_session** %7, align 8
  %46 = getelementptr inbounds %struct.se_session, %struct.se_session* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %30, %23
  %48 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %49 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %48, i32 0, i32 3
  %50 = call i32 @kref_get(i32* %49)
  %51 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %52 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_irq(i32* %52)
  %54 = load %struct.se_session*, %struct.se_session** %7, align 8
  %55 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %56 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %55, i32 0, i32 2
  store %struct.se_session* %54, %struct.se_session** %56, align 8
  %57 = load %struct.se_session*, %struct.se_session** %7, align 8
  %58 = getelementptr inbounds %struct.se_session, %struct.se_session* %57, i32 0, i32 2
  %59 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %60 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %59, i32 0, i32 1
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  %62 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %63 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock_irq(i32* %63)
  br label %65

65:                                               ; preds = %47, %4
  %66 = load %struct.se_session*, %struct.se_session** %7, align 8
  %67 = getelementptr inbounds %struct.se_session, %struct.se_session* %66, i32 0, i32 1
  %68 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %69 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %68, i32 0, i32 1
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  %71 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %72 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (...)*, i32 (...)** %74, align 8
  %76 = call i32 (...) %75()
  %77 = load %struct.se_session*, %struct.se_session** %7, align 8
  %78 = getelementptr inbounds %struct.se_session, %struct.se_session* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %76, i8* %79)
  %81 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @get_unaligned_be64(i8*) #2

declare dso_local i32 @kref_get(i32*) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @pr_debug(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
