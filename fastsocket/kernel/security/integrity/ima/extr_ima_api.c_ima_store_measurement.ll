; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_api.c_ima_store_measurement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_api.c_ima_store_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_iint_cache = type { i32, i32 }
%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ima_template_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"add_template_measure\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_PCR = common dso_local global i32 0, align 4
@IMA_DIGEST_SIZE = common dso_local global i32 0, align 4
@IMA_EVENT_NAME_LEN_MAX = common dso_local global i32 0, align 4
@IMA_MEASURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_store_measurement(%struct.ima_iint_cache* %0, %struct.file* %1, i8* %2) #0 {
  %4 = alloca %struct.ima_iint_cache*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ima_template_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.ima_iint_cache* %0, %struct.ima_iint_cache** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ima_template_entry* @kmalloc(i32 8, i32 %20)
  store %struct.ima_template_entry* %21, %struct.ima_template_entry** %11, align 8
  %22 = load %struct.ima_template_entry*, %struct.ima_template_entry** %11, align 8
  %23 = icmp ne %struct.ima_template_entry* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @AUDIT_INTEGRITY_PCR, align 4
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @integrity_audit_msg(i32 %25, %struct.inode* %26, i8* %27, i8* %28, i8* %29, i32 %30, i32 0)
  br label %67

32:                                               ; preds = %3
  %33 = load %struct.ima_template_entry*, %struct.ima_template_entry** %11, align 8
  %34 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %33, i32 0, i32 0
  %35 = call i32 @memset(%struct.TYPE_4__* %34, i32 0, i32 8)
  %36 = load %struct.ima_template_entry*, %struct.ima_template_entry** %11, align 8
  %37 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %4, align 8
  %41 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IMA_DIGEST_SIZE, align 4
  %44 = call i32 @memcpy(i32 %39, i32 %42, i32 %43)
  %45 = load %struct.ima_template_entry*, %struct.ima_template_entry** %11, align 8
  %46 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @IMA_EVENT_NAME_LEN_MAX, align 4
  %51 = call i32 @strncpy(i32 %48, i8* %49, i32 %50)
  %52 = load %struct.ima_template_entry*, %struct.ima_template_entry** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = call i32 @ima_store_template(%struct.ima_template_entry* %52, i32 %53, %struct.inode* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %32
  %59 = load i32, i32* @IMA_MEASURED, align 4
  %60 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %4, align 8
  %61 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %67

64:                                               ; preds = %32
  %65 = load %struct.ima_template_entry*, %struct.ima_template_entry** %11, align 8
  %66 = call i32 @kfree(%struct.ima_template_entry* %65)
  br label %67

67:                                               ; preds = %24, %64, %58
  ret void
}

declare dso_local %struct.ima_template_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @integrity_audit_msg(i32, %struct.inode*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @ima_store_template(%struct.ima_template_entry*, i32, %struct.inode*) #1

declare dso_local i32 @kfree(%struct.ima_template_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
