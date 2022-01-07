; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_make_nnode_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_make_nnode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32 }
%struct.ubifs_nnode = type { i64, %struct.ubifs_nnode*, i32, %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { i32, i32 }

@DIRTY_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32)* @make_nnode_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_nnode_dirty(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_nnode*, align 8
  %11 = alloca %struct.ubifs_nbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.ubifs_nnode* @nnode_lookup(%struct.ubifs_info* %12, i32 %13)
  store %struct.ubifs_nnode* %14, %struct.ubifs_nnode** %10, align 8
  %15 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %16 = call i64 @IS_ERR(%struct.ubifs_nnode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.ubifs_nnode* %19)
  store i32 %20, i32* %5, align 4
  br label %104

21:                                               ; preds = %4
  %22 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %23 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %22, i32 0, i32 1
  %24 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %23, align 8
  %25 = icmp ne %struct.ubifs_nnode* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %28 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %27, i32 0, i32 1
  %29 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %28, align 8
  %30 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %29, i32 0, i32 3
  %31 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %30, align 8
  %32 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %33 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %31, i64 %34
  store %struct.ubifs_nbranch* %35, %struct.ubifs_nbranch** %11, align 8
  %36 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %11, align 8
  %37 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %26
  %42 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %11, align 8
  %43 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %26
  store i32 0, i32* %5, align 4
  br label %104

48:                                               ; preds = %41
  br label %63

49:                                               ; preds = %21
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %49
  store i32 0, i32* %5, align 4
  br label %104

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* @DIRTY_CNODE, align 4
  %65 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %66 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %65, i32 0, i32 2
  %67 = call i32 @test_and_set_bit(i32 %64, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %63
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %75 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %76 = call i32 @ubifs_add_nnode_dirt(%struct.ubifs_info* %74, %struct.ubifs_nnode* %75)
  %77 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %78 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %77, i32 0, i32 1
  %79 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %78, align 8
  store %struct.ubifs_nnode* %79, %struct.ubifs_nnode** %10, align 8
  br label %80

80:                                               ; preds = %101, %69
  %81 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %82 = icmp ne %struct.ubifs_nnode* %81, null
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load i32, i32* @DIRTY_CNODE, align 4
  %85 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %86 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %85, i32 0, i32 2
  %87 = call i32 @test_and_set_bit(i32 %84, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %83
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %95 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %96 = call i32 @ubifs_add_nnode_dirt(%struct.ubifs_info* %94, %struct.ubifs_nnode* %95)
  %97 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %98 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %97, i32 0, i32 1
  %99 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %98, align 8
  store %struct.ubifs_nnode* %99, %struct.ubifs_nnode** %10, align 8
  br label %101

100:                                              ; preds = %83
  br label %102

101:                                              ; preds = %89
  br label %80

102:                                              ; preds = %100, %80
  br label %103

103:                                              ; preds = %102, %63
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %61, %47, %18
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.ubifs_nnode* @nnode_lookup(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_nnode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_nnode*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ubifs_add_nnode_dirt(%struct.ubifs_info*, %struct.ubifs_nnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
