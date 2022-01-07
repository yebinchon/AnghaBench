; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_ubifs_validate_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_ubifs_validate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_dent_node = type { i64, i64*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@UBIFS_DENT_NODE_SZ = common dso_local global i64 0, align 8
@UBIFS_ITYPES_CNT = common dso_local global i64 0, align 8
@UBIFS_MAX_NLEN = common dso_local global i32 0, align 4
@MAX_INUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"bad %s node\00", align 1
@UBIFS_DENT_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"directory entry\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"extended attribute entry\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBIFS_XENT_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"bad key type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_validate_entry(%struct.ubifs_info* %0, %struct.ubifs_dent_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_dent_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_dent_node* %1, %struct.ubifs_dent_node** %5, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %9 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %5, align 8
  %10 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @key_type_flash(%struct.ubifs_info* %8, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %5, align 8
  %18 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @UBIFS_DENT_NODE_SZ, align 8
  %25 = add nsw i64 %23, %24
  %26 = add nsw i64 %25, 1
  %27 = icmp ne i64 %21, %26
  br i1 %27, label %62, label %28

28:                                               ; preds = %2
  %29 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %5, align 8
  %30 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UBIFS_ITYPES_CNT, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %62, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @UBIFS_MAX_NLEN, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %62, label %38

38:                                               ; preds = %34
  %39 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %5, align 8
  %40 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %38
  %48 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %5, align 8
  %49 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @strnlen(i64* %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %47
  %56 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %5, align 8
  %57 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @le64_to_cpu(i32 %58)
  %60 = load i64, i64* @MAX_INUM, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %55, %47, %38, %34, %28, %2
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @UBIFS_DENT_KEY, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)
  %68 = call i32 (i8*, ...) @ubifs_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %85

71:                                               ; preds = %55
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @UBIFS_DENT_KEY, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @UBIFS_XENT_KEY, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i8*, ...) @ubifs_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %75, %71
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %79, %62
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @key_type_flash(%struct.ubifs_info*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @strnlen(i64*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
