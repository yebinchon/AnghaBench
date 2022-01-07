; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ins_clr_old_idx_znode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ins_clr_old_idx_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.ubifs_znode = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_znode*)* @ins_clr_old_idx_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ins_clr_old_idx_znode(%struct.ubifs_info* %0, %struct.ubifs_znode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %5, align 8
  %8 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %9 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %16, align 8
  %18 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %19 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %17, i64 %20
  store %struct.ubifs_zbranch* %21, %struct.ubifs_zbranch** %7, align 8
  %22 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %23 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %12
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %29 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %32 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @insert_old_idx(%struct.ubifs_info* %27, i64 %30, i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %80

39:                                               ; preds = %26
  %40 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %41 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %43 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %45 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %12
  br label %79

47:                                               ; preds = %2
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %47
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @insert_old_idx(%struct.ubifs_info* %54, i64 %58, i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %80

68:                                               ; preds = %53
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %68, %47
  br label %79

79:                                               ; preds = %78, %46
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %66, %37
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @insert_old_idx(%struct.ubifs_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
