; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_send_mig_lockres_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_send_mig_lockres_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_migratable_lockres = type { i32, i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DLM_MAX_MIGRATABLE_LOCKS = common dso_local global i32 0, align 4
@DLM_MRES_ALL_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s:%.*s: sending mig lockres (%s) to %u\0A\00", align 1
@DLM_MRES_MIGRATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"migration\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@DLM_MIG_LOCKRES_MSG = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"node %u told me to kill myself!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_migratable_lockres*, i32, %struct.dlm_lock_resource*, i32)* @dlm_send_mig_lockres_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_mig_lockres_msg(%struct.dlm_ctxt* %0, %struct.dlm_migratable_lockres* %1, i32 %2, %struct.dlm_lock_resource* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ctxt*, align 8
  %8 = alloca %struct.dlm_migratable_lockres*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_lock_resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %7, align 8
  store %struct.dlm_migratable_lockres* %1, %struct.dlm_migratable_lockres** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dlm_lock_resource* %3, %struct.dlm_lock_resource** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %20 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be64_to_cpu(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %24 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %28 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %31 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  %33 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %34 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DLM_MAX_MIGRATABLE_LOCKS, align 4
  %37 = icmp sgt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %41 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %137

45:                                               ; preds = %5
  %46 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %47 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = add i64 20, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %14, align 4
  %53 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %54 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %45
  %65 = load i32, i32* @DLM_MRES_ALL_DONE, align 4
  %66 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %67 = getelementptr inbounds %struct.dlm_migratable_lockres, %struct.dlm_migratable_lockres* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %45
  %71 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %72 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %75 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %79 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @DLM_MRES_MIGRATION, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %77, i32 %81, i8* %87, i32 %88)
  %90 = load i32, i32* @DLM_MIG_LOCKRES_MSG, align 4
  %91 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %92 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @o2net_send_message(i32 %90, i32 %93, %struct.dlm_migratable_lockres* %94, i32 %95, i32 %96, i32* %16)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %70
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %121

103:                                              ; preds = %70
  %104 = load i32, i32* %16, align 4
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @EFAULT, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32, i32* @ML_ERROR, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 (i32, i8*, i32, ...) @mlog(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = call i32 (...) @BUG()
  br label %119

119:                                              ; preds = %114, %107
  br label %120

120:                                              ; preds = %119, %103
  br label %121

121:                                              ; preds = %120, %100
  %122 = load %struct.dlm_migratable_lockres*, %struct.dlm_migratable_lockres** %8, align 8
  %123 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %124 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %128 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @dlm_init_migratable_lockres(%struct.dlm_migratable_lockres* %122, i32 %126, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %121, %44
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_migratable_lockres*, i32, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dlm_init_migratable_lockres(%struct.dlm_migratable_lockres*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
