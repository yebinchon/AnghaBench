; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_api.c_ima_store_template.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_api.c_ima_store_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_template_entry = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"add_template_measure\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"hashing_error\00", align 1
@IMA_TEMPLATE_NAME = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_PCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_store_template(%struct.ima_template_entry* %0, i32 %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ima_template_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ima_template_entry* %0, %struct.ima_template_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %11 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %12 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memset(i32 %13, i32 0, i32 4)
  %15 = load i32, i32* @IMA_TEMPLATE_NAME, align 4
  %16 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %17 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %19 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %18, i32 0, i32 0
  store i32 4, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %3
  %23 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %24 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %27 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %26, i32 0, i32 3
  %28 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %29 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ima_calc_template_hash(i32 %25, i32* %27, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load i32, i32* @AUDIT_INTEGRITY_PCR, align 4
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %38 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @integrity_audit_msg(i32 %35, %struct.inode* %36, i32 %39, i8* %40, i8* %41, i32 %42, i32 0)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = call i32 @ima_add_template_entry(%struct.ima_template_entry* %47, i32 %48, i8* %49, %struct.inode* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %34
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ima_calc_template_hash(i32, i32*, i32) #1

declare dso_local i32 @integrity_audit_msg(i32, %struct.inode*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @ima_add_template_entry(%struct.ima_template_entry*, i32, i8*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
