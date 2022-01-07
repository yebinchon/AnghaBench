; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_validate_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_replay.c_validate_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32 }
%struct.ubifs_ref_node = type { i32, i32, i32 }
%struct.ubifs_bud = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"bud at LEB %d:%d was already referred\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_ref_node*)* @validate_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ref(%struct.ubifs_info* %0, %struct.ubifs_ref_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_ref_node*, align 8
  %6 = alloca %struct.ubifs_bud*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_ref_node* %1, %struct.ubifs_ref_node** %5, align 8
  %10 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %5, align 8
  %11 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le32_to_cpu(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @le32_to_cpu(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %5, align 8
  %21 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @le32_to_cpu(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp uge i32 %25, %28
  br i1 %29, label %56, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %56, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ugt i32 %43, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %49, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48, %42, %36, %30, %2
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %85

59:                                               ; preds = %48
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.ubifs_bud* @ubifs_search_bud(%struct.ubifs_info* %60, i32 %61)
  store %struct.ubifs_bud* %62, %struct.ubifs_bud** %6, align 8
  %63 = load %struct.ubifs_bud*, %struct.ubifs_bud** %6, align 8
  %64 = icmp ne %struct.ubifs_bud* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load %struct.ubifs_bud*, %struct.ubifs_bud** %6, align 8
  %67 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.ubifs_bud*, %struct.ubifs_bud** %6, align 8
  %73 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ule i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %85

78:                                               ; preds = %71, %65
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ubifs_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %78, %77, %56
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.ubifs_bud* @ubifs_search_bud(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
