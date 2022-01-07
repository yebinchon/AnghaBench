; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_validate_gd_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_validate_gd_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_dinode = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_group_desc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"Group descriptor #%llu has bad parent pointer (%llu, expected %llu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Group descriptor #%llu has bit count of %u\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Group descriptor #%llu has bad chain %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_dinode*, %struct.buffer_head*, i32)* @ocfs2_validate_gd_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_validate_gd_parent(%struct.super_block* %0, %struct.ocfs2_dinode* %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %15, %struct.ocfs2_group_desc** %11, align 8
  %16 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %17 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %20 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %28 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @le64_to_cpu(i64 %29)
  %31 = trunc i64 %30 to i32
  %32 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %33 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @le64_to_cpu(i64 %34)
  %36 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %31, i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %94

39:                                               ; preds = %4
  %40 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %41 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %47 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = mul i32 %45, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %54 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %39
  %60 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %64 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %62, i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %94

70:                                               ; preds = %39
  %71 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %72 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %76 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = icmp uge i32 %74, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %70
  %83 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %87 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = call i32 (i8*, i64, i32, ...) @do_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %85, i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %94

93:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %82, %59, %23
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @do_error(i8*, i64, i32, ...) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
