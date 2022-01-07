; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_api.c_ima_add_violation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_api.c_ima_add_violation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.ima_template_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ima_htable = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IMA_EVENT_NAME_LEN_MAX = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_PCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_add_violation(%struct.inode* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ima_template_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1, i32* %10, align 4
  %12 = call i32 @atomic_long_inc(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ima_htable, i32 0, i32 0))
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ima_template_entry* @kmalloc(i32 4, i32 %13)
  store %struct.ima_template_entry* %14, %struct.ima_template_entry** %9, align 8
  %15 = load %struct.ima_template_entry*, %struct.ima_template_entry** %9, align 8
  %16 = icmp ne %struct.ima_template_entry* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  br label %41

20:                                               ; preds = %4
  %21 = load %struct.ima_template_entry*, %struct.ima_template_entry** %9, align 8
  %22 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %21, i32 0, i32 0
  %23 = call i32 @memset(%struct.TYPE_3__* %22, i32 0, i32 4)
  %24 = load %struct.ima_template_entry*, %struct.ima_template_entry** %9, align 8
  %25 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @IMA_EVENT_NAME_LEN_MAX, align 4
  %30 = call i32 @strncpy(i32 %27, i8* %28, i32 %29)
  %31 = load %struct.ima_template_entry*, %struct.ima_template_entry** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @ima_store_template(%struct.ima_template_entry* %31, i32 %32, %struct.inode* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load %struct.ima_template_entry*, %struct.ima_template_entry** %9, align 8
  %39 = call i32 @kfree(%struct.ima_template_entry* %38)
  br label %40

40:                                               ; preds = %37, %20
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i32, i32* @AUDIT_INTEGRITY_PCR, align 4
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @integrity_audit_msg(i32 %42, %struct.inode* %43, i8* %44, i8* %45, i8* %46, i32 %47, i32 0)
  ret void
}

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local %struct.ima_template_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @ima_store_template(%struct.ima_template_entry*, i32, %struct.inode*) #1

declare dso_local i32 @kfree(%struct.ima_template_entry*) #1

declare dso_local i32 @integrity_audit_msg(i32, %struct.inode*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
