; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_free_registration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_free_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_6__*, %struct.t10_reservation }
%struct.TYPE_6__ = type { i8* }
%struct.t10_reservation = type { i32 }
%struct.t10_pr_registration = type { i8*, i8*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i64, i32, i32 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.target_core_fabric_ops* }
%struct.target_core_fabric_ops = type { i32 (...)* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.list_head = type { i32 }

@PR_REG_ISID_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SPC-3 PR [%s] waiting for pr_res_holders\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"SPC-3 PR [%s] Service Action: UNREGISTER Initiator Node: %s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"SPC-3 PR [%s] for %s TCM Subsystem %s Object Target Port(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SINGLE\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"SPC-3 PR [%s] SA Res Key: 0x%016Lx PRgeneration: 0x%08x\0A\00", align 1
@t10_pr_reg_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*, %struct.t10_pr_registration*, %struct.list_head*, i32)* @__core_scsi3_free_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__core_scsi3_free_registration(%struct.se_device* %0, %struct.t10_pr_registration* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.t10_pr_registration*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.target_core_fabric_ops*, align 8
  %10 = alloca %struct.t10_reservation*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store %struct.t10_pr_registration* %1, %struct.t10_pr_registration** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %16 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %15, i32 0, i32 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %20, align 8
  store %struct.target_core_fabric_ops* %21, %struct.target_core_fabric_ops** %9, align 8
  %22 = load %struct.se_device*, %struct.se_device** %5, align 8
  %23 = getelementptr inbounds %struct.se_device, %struct.se_device* %22, i32 0, i32 1
  store %struct.t10_reservation* %23, %struct.t10_reservation** %10, align 8
  %24 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %29 = call i32 @memset(i8* %27, i32 0, i32 %28)
  %30 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %31 = getelementptr inbounds i8, i8* %27, i64 0
  %32 = load i32, i32* @PR_REG_ISID_ID_LEN, align 4
  %33 = call i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration* %30, i8* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %35 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %34, i32 0, i32 5
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %39 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %38, i32 0, i32 5
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %43 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %42, i32 0, i32 8
  %44 = call i32 @list_del(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %4
  %48 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %49 = call i32 @core_scsi3_put_pr_reg(%struct.t10_pr_registration* %48)
  br label %50

50:                                               ; preds = %47, %4
  br label %51

51:                                               ; preds = %56, %50
  %52 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %53 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %52, i32 0, i32 7
  %54 = call i64 @atomic_read(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.t10_reservation*, %struct.t10_reservation** %10, align 8
  %58 = getelementptr inbounds %struct.t10_reservation, %struct.t10_reservation* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %61 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %60, i32 0, i32 0
  %62 = load i32 (...)*, i32 (...)** %61, align 8
  %63 = call i32 (...) %62()
  %64 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = call i32 (...) @cpu_relax()
  %66 = load %struct.t10_reservation*, %struct.t10_reservation** %10, align 8
  %67 = getelementptr inbounds %struct.t10_reservation, %struct.t10_reservation* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  br label %51

69:                                               ; preds = %51
  %70 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %71 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %70, i32 0, i32 0
  %72 = load i32 (...)*, i32 (...)** %71, align 8
  %73 = call i32 (...) %72()
  %74 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %75 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %74, i32 0, i32 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = getelementptr inbounds i8, i8* %27, i64 0
  br label %84

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i8* [ %82, %81 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %83 ]
  %86 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %73, i8* %78, i8* %85)
  %87 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %88 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %87, i32 0, i32 0
  %89 = load i32 (...)*, i32 (...)** %88, align 8
  %90 = call i32 (...) %89()
  %91 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %92 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %97 = load %struct.se_device*, %struct.se_device** %5, align 8
  %98 = getelementptr inbounds %struct.se_device, %struct.se_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %90, i8* %96, i8* %101)
  %103 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %104 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %103, i32 0, i32 0
  %105 = load i32 (...)*, i32 (...)** %104, align 8
  %106 = call i32 (...) %105()
  %107 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %108 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %111 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %106, i8* %109, i8* %112)
  %114 = load %struct.list_head*, %struct.list_head** %7, align 8
  %115 = icmp ne %struct.list_head* %114, null
  br i1 %115, label %128, label %116

116:                                              ; preds = %84
  %117 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %118 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %117, i32 0, i32 5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %118, align 8
  %119 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %120 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %119, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %120, align 8
  %121 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %122 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @kfree(i32 %123)
  %125 = load i32, i32* @t10_pr_reg_cache, align 4
  %126 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %127 = call i32 @kmem_cache_free(i32 %125, %struct.t10_pr_registration* %126)
  store i32 1, i32* %14, align 4
  br label %133

128:                                              ; preds = %84
  %129 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %130 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %129, i32 0, i32 2
  %131 = load %struct.list_head*, %struct.list_head** %7, align 8
  %132 = call i32 @list_add_tail(i32* %130, %struct.list_head* %131)
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %128, %116
  %134 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %14, align 4
  switch i32 %135, label %137 [
    i32 0, label %136
    i32 1, label %136
  ]

136:                                              ; preds = %133, %133
  ret void

137:                                              ; preds = %133
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @core_pr_dump_initiator_port(%struct.t10_pr_registration*, i8*, i32) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @core_scsi3_put_pr_reg(%struct.t10_pr_registration*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @pr_debug(i8*, i32, ...) #2

declare dso_local i32 @cpu_relax(...) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @kmem_cache_free(i32, %struct.t10_pr_registration*) #2

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
