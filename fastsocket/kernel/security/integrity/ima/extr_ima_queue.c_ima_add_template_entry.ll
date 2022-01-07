; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_queue.c_ima_add_template_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_queue.c_ima_add_template_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_template_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }

@IMA_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hash_added\00", align 1
@ima_extend_list_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hash_exists\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ENOMEM\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"TPM error\00", align 1
@AUDIT_INTEGRITY_PCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_add_template_entry(%struct.ima_template_entry* %0, i32 %1, i8* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.ima_template_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ima_template_entry* %0, %struct.ima_template_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %14 = load i32, i32* @IMA_DIGEST_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = call i32 @mutex_lock(i32* @ima_extend_list_mutex)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %4
  %22 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %23 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nuw i64 4, %15
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memcpy(i32* %17, i32 %24, i32 %26)
  %28 = call i64 @ima_lookup_digest_entry(i32* %17)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %51

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %4
  %33 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %34 = call i32 @ima_add_digest_entry(%struct.ima_template_entry* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %51

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = mul nuw i64 4, %15
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(i32* %17, i32 255, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = call i32 @ima_pcr_extend(i32* %17)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %45
  br label %51

51:                                               ; preds = %50, %37, %30
  %52 = call i32 @mutex_unlock(i32* @ima_extend_list_mutex)
  %53 = load i32, i32* @AUDIT_INTEGRITY_PCR, align 4
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = load %struct.ima_template_entry*, %struct.ima_template_entry** %5, align 8
  %56 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @integrity_audit_msg(i32 %53, %struct.inode* %54, i32 %58, i8* %59, i8* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i64 @ima_lookup_digest_entry(i32*) #2

declare dso_local i32 @ima_add_digest_entry(%struct.ima_template_entry*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ima_pcr_extend(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @integrity_audit_msg(i32, %struct.inode*, i32, i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
