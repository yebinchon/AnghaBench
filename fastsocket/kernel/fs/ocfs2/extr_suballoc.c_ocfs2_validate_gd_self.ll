; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_validate_gd_self.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_validate_gd_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_group_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Group descriptor #%llu has bad signature %.*s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Group descriptor #%llu has an invalid bg_blkno of %llu\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Group descriptor #%llu has an invalid fs_generation of #%u\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"Group descriptor #%llu has bit count %u but claims that %u are free\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Group descriptor #%llu has bit count %u but max bitmap bits of %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*, i32)* @ocfs2_validate_gd_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_validate_gd_self(%struct.super_block* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %12, %struct.ocfs2_group_desc** %8, align 8
  %13 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %14 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %21 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %19, i32 7, i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %121

26:                                               ; preds = %3
  %27 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %28 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le64_to_cpu(i32 %29)
  %31 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %26
  %36 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %40 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le64_to_cpu(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %38, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %121

47:                                               ; preds = %26
  %48 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %49 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %47
  %58 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %62 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %60, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %121

68:                                               ; preds = %47
  %69 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %70 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le16_to_cpu(i32 %71)
  %73 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %74 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = icmp sgt i32 %72, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %68
  %79 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %83 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %87 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %81, i32 %85, i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %121

93:                                               ; preds = %68
  %94 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %95 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %99 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = mul nsw i32 8, %101
  %103 = icmp sgt i32 %97, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %93
  %105 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %109 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le16_to_cpu(i32 %110)
  %112 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %113 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le16_to_cpu(i32 %114)
  %116 = mul nsw i32 8, %115
  %117 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i64 %107, i32 %111, i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %121

120:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %104, %78, %57, %35, %16
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc*) #1

declare dso_local i32 @do_error(i8*, i64, i32, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
