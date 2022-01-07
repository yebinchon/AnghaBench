; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_run_li_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_run_li_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_li_request = type { i64, i64, i64, %struct.TYPE_3__*, %struct.super_block* }
%struct.TYPE_3__ = type { i64 }
%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EXT4_BG_INODE_ZEROED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_li_request*)* @ext4_run_li_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_run_li_request(%struct.ext4_li_request* %0) #0 {
  %2 = alloca %struct.ext4_li_request*, align 8
  %3 = alloca %struct.ext4_group_desc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ext4_li_request* %0, %struct.ext4_li_request** %2, align 8
  store %struct.ext4_group_desc* null, %struct.ext4_group_desc** %3, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %10 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %9, i32 0, i32 4
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call i32 @sb_start_write(%struct.super_block* %16)
  %18 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %19 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %42, %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %26, i64 %27, i32* null)
  store %struct.ext4_group_desc* %28, %struct.ext4_group_desc** %3, align 8
  %29 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %3, align 8
  %30 = icmp ne %struct.ext4_group_desc* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %45

32:                                               ; preds = %25
  %33 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %3, align 8
  %34 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EXT4_BG_INODE_ZEROED, align 4
  %37 = call i32 @cpu_to_le16(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %21

45:                                               ; preds = %40, %31, %21
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* @jiffies, align 8
  store i64 %54, i64* %7, align 8
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %58 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 1
  %63 = call i32 @ext4_init_inode_table(%struct.super_block* %55, i64 %56, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %65 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %53
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i64, i64* %7, align 8
  %71 = sub i64 %69, %70
  %72 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %73 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %72, i32 0, i32 3
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = mul i64 %71, %76
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %80 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %68, %53
  %82 = load i64, i64* @jiffies, align 8
  %83 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %84 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %82, %85
  %87 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %88 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %4, align 8
  %90 = add nsw i64 %89, 1
  %91 = load %struct.ext4_li_request*, %struct.ext4_li_request** %2, align 8
  %92 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %81, %50
  %94 = load %struct.super_block*, %struct.super_block** %6, align 8
  %95 = call i32 @sb_end_write(%struct.super_block* %94)
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @sb_start_write(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_init_inode_table(%struct.super_block*, i64, i32) #1

declare dso_local i32 @sb_end_write(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
