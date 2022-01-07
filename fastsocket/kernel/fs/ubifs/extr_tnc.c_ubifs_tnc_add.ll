; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"%d:%d, len %d, key %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_add(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %union.ubifs_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_znode*, align 8
  %15 = alloca %struct.ubifs_zbranch, align 8
  %16 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %24 = call i32 @DBGKEY(%union.ubifs_key* %23)
  %25 = call i32 @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %27 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %28 = call i32 @lookup_level0_dirty(%struct.ubifs_info* %26, %union.ubifs_key* %27, %struct.ubifs_znode** %14, i32* %12)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %15, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %15, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %15, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %15, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %40 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %41 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %15, i32 0, i32 3
  %42 = call i32 @key_copy(%struct.ubifs_info* %39, %union.ubifs_key* %40, i32* %41)
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %44 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @tnc_insert(%struct.ubifs_info* %43, %struct.ubifs_znode* %44, %struct.ubifs_zbranch* %15, i32 %46)
  store i32 %47, i32* %13, align 4
  br label %80

48:                                               ; preds = %5
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %53 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %52, i32 0, i32 0
  %54 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %54, i64 %56
  store %struct.ubifs_zbranch* %57, %struct.ubifs_zbranch** %16, align 8
  %58 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %16, align 8
  %59 = call i32 @lnc_free(%struct.ubifs_zbranch* %58)
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %61 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %16, align 8
  %62 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %16, align 8
  %65 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %60, i32 %63, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %16, align 8
  %70 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %16, align 8
  %73 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %16, align 8
  %76 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %79

77:                                               ; preds = %48
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %77, %51
  br label %80

80:                                               ; preds = %79, %31
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %85 = call i32 @dbg_check_tnc(%struct.ubifs_info* %84, i32 0)
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %13, align 4
  ret i32 %90
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

declare dso_local i32 @lookup_level0_dirty(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @key_copy(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @tnc_insert(%struct.ubifs_info*, %struct.ubifs_znode*, %struct.ubifs_zbranch*, i32) #1

declare dso_local i32 @lnc_free(%struct.ubifs_zbranch*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
