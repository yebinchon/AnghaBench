; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_layout_in_gaps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_layout_in_gaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%d znodes to write\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@dbg_force_in_the_gaps_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%d znodes remaining, need %d LEBs, have %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32)* @layout_in_gaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_in_gaps(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i8*, i32, ...) @dbg_gc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = call i32* @kmalloc(i32 %19, i32 %20)
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %108

31:                                               ; preds = %2
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  br label %35

35:                                               ; preds = %100, %31
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  %47 = icmp ult i32* %36, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ubifs_assert(i32 %48)
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @layout_leb_in_gaps(%struct.ubifs_info* %50, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %35
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %63 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %67 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %108

69:                                               ; preds = %55
  %70 = load i32, i32* @dbg_force_in_the_gaps_enabled, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %69
  %73 = call i32 @ubifs_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %75 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %74, i32 0, i32 2
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %78 = call i32 @dbg_dump_budg(%struct.ubifs_info* %77)
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 2
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %83 = call i32 @dbg_dump_lprops(%struct.ubifs_info* %82)
  br label %84

84:                                               ; preds = %72, %69
  store i32 0, i32* %6, align 4
  br label %106

85:                                               ; preds = %35
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %9, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @get_leb_cnt(%struct.ubifs_info* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, i32, ...) @dbg_gc(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %101, %104
  br i1 %105, label %35, label %106

106:                                              ; preds = %100, %84
  %107 = load i32*, i32** %9, align 8
  store i32 -1, i32* %107, align 4
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %61, %28
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @dbg_gc(i8*, i32, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @layout_leb_in_gaps(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ubifs_err(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dbg_dump_budg(%struct.ubifs_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dbg_dump_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @get_leb_cnt(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
