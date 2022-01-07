; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_do_alloc_registration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_do_alloc_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_pr_registration = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.se_dev_entry*, %struct.se_node_acl*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.se_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.se_node_acl = type { i32 }
%struct.se_dev_entry = type { %struct.TYPE_4__*, i32 }

@t10_pr_reg_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to allocate struct t10_pr_registration\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to allocate pr_reg->pr_aptpl_buf\0A\00", align 1
@PR_REG_ISID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t10_pr_registration* (%struct.se_device*, %struct.se_node_acl*, %struct.se_dev_entry*, i8*, i32, i32, i32)* @__core_scsi3_do_alloc_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t10_pr_registration* @__core_scsi3_do_alloc_registration(%struct.se_device* %0, %struct.se_node_acl* %1, %struct.se_dev_entry* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.t10_pr_registration*, align 8
  %9 = alloca %struct.se_device*, align 8
  %10 = alloca %struct.se_node_acl*, align 8
  %11 = alloca %struct.se_dev_entry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.t10_pr_registration*, align 8
  store %struct.se_device* %0, %struct.se_device** %9, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %10, align 8
  store %struct.se_dev_entry* %2, %struct.se_dev_entry** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* @t10_pr_reg_cache, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.t10_pr_registration* @kmem_cache_zalloc(i32 %17, i32 %18)
  store %struct.t10_pr_registration* %19, %struct.t10_pr_registration** %16, align 8
  %20 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %21 = icmp ne %struct.t10_pr_registration* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %7
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store %struct.t10_pr_registration* null, %struct.t10_pr_registration** %8, align 8
  br label %110

24:                                               ; preds = %7
  %25 = load %struct.se_device*, %struct.se_device** %9, align 8
  %26 = getelementptr inbounds %struct.se_device, %struct.se_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call i32 @kzalloc(i32 %28, i32 %29)
  %31 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %32 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %31, i32 0, i32 17
  store i32 %30, i32* %32, align 8
  %33 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %34 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %33, i32 0, i32 17
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %24
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @t10_pr_reg_cache, align 4
  %40 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %41 = call i32 @kmem_cache_free(i32 %39, %struct.t10_pr_registration* %40)
  store %struct.t10_pr_registration* null, %struct.t10_pr_registration** %8, align 8
  br label %110

42:                                               ; preds = %24
  %43 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %44 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %43, i32 0, i32 16
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %47 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %46, i32 0, i32 15
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %50 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %49, i32 0, i32 14
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %53 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %52, i32 0, i32 13
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %56 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %55, i32 0, i32 12
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %59 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %58, i32 0, i32 11
  %60 = call i32 @atomic_set(i32* %59, i32 0)
  %61 = load %struct.se_node_acl*, %struct.se_node_acl** %10, align 8
  %62 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %63 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %62, i32 0, i32 10
  store %struct.se_node_acl* %61, %struct.se_node_acl** %63, align 8
  %64 = load %struct.se_dev_entry*, %struct.se_dev_entry** %11, align 8
  %65 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %66 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %65, i32 0, i32 9
  store %struct.se_dev_entry* %64, %struct.se_dev_entry** %66, align 8
  %67 = load %struct.se_dev_entry*, %struct.se_dev_entry** %11, align 8
  %68 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %71 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 8
  %72 = load %struct.se_dev_entry*, %struct.se_dev_entry** %11, align 8
  %73 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %78 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %81 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %84 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %87 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.se_dev_entry*, %struct.se_dev_entry** %11, align 8
  %89 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %92 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %91, i32 0, i32 5
  store %struct.TYPE_4__* %90, %struct.TYPE_4__** %92, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %42
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @get_unaligned_be64(i8* %96)
  %98 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %99 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %101 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @snprintf(i32 %102, i32 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  %106 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  %107 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %95, %42
  %109 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %16, align 8
  store %struct.t10_pr_registration* %109, %struct.t10_pr_registration** %8, align 8
  br label %110

110:                                              ; preds = %108, %37, %22
  %111 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  ret %struct.t10_pr_registration* %111
}

declare dso_local %struct.t10_pr_registration* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.t10_pr_registration*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @get_unaligned_be64(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
