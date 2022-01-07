; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_ubifs_load_znode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_misc.c_ubifs_load_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_zbranch = type { %struct.ubifs_znode*, i32, i32, i32 }
%struct.ubifs_znode = type { i32, i32, %struct.ubifs_znode* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_znode* @ubifs_load_znode(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, %struct.ubifs_znode* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.ubifs_zbranch*, align 8
  %8 = alloca %struct.ubifs_znode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %7, align 8
  store %struct.ubifs_znode* %2, %struct.ubifs_znode** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %13 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %12, i32 0, i32 0
  %14 = load %struct.ubifs_znode*, %struct.ubifs_znode** %13, align 8
  %15 = icmp ne %struct.ubifs_znode* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ubifs_assert(i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_NOFS, align 4
  %23 = call %struct.ubifs_znode* @kzalloc(i32 %21, i32 %22)
  store %struct.ubifs_znode* %23, %struct.ubifs_znode** %11, align 8
  %24 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %25 = icmp ne %struct.ubifs_znode* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ubifs_znode* @ERR_PTR(i32 %28)
  store %struct.ubifs_znode* %29, %struct.ubifs_znode** %5, align 8
  br label %69

30:                                               ; preds = %4
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %32 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %33 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %36 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %39 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %42 = call i32 @read_znode(%struct.ubifs_info* %31, i32 %34, i32 %37, i32 %40, %struct.ubifs_znode* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %64

46:                                               ; preds = %30
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 0
  %49 = call i32 @atomic_long_inc(i32* %48)
  %50 = call i32 @atomic_long_inc(i32* @ubifs_clean_zn_cnt)
  %51 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %52 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %53 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %52, i32 0, i32 0
  store %struct.ubifs_znode* %51, %struct.ubifs_znode** %53, align 8
  %54 = load %struct.ubifs_znode*, %struct.ubifs_znode** %8, align 8
  %55 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %56 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %55, i32 0, i32 2
  store %struct.ubifs_znode* %54, %struct.ubifs_znode** %56, align 8
  %57 = call i32 (...) @get_seconds()
  %58 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %59 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %62 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  store %struct.ubifs_znode* %63, %struct.ubifs_znode** %5, align 8
  br label %69

64:                                               ; preds = %45
  %65 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %66 = call i32 @kfree(%struct.ubifs_znode* %65)
  %67 = load i32, i32* %10, align 4
  %68 = call %struct.ubifs_znode* @ERR_PTR(i32 %67)
  store %struct.ubifs_znode* %68, %struct.ubifs_znode** %5, align 8
  br label %69

69:                                               ; preds = %64, %46, %26
  %70 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  ret %struct.ubifs_znode* %70
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local %struct.ubifs_znode* @kzalloc(i32, i32) #1

declare dso_local %struct.ubifs_znode* @ERR_PTR(i32) #1

declare dso_local i32 @read_znode(%struct.ubifs_info*, i32, i32, i32, %struct.ubifs_znode*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @kfree(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
