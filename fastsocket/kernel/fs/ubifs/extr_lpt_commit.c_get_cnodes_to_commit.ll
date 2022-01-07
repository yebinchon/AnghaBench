; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_get_cnodes_to_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_get_cnodes_to_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.ubifs_cnode*, %struct.TYPE_2__* }
%struct.ubifs_cnode = type { %struct.ubifs_cnode*, i32 }
%struct.TYPE_2__ = type { i32 }

@DIRTY_CNODE = common dso_local global i32 0, align 4
@COW_ZNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"committing %d cnodes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @get_cnodes_to_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cnodes_to_commit(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_cnode*, align 8
  %5 = alloca %struct.ubifs_cnode*, align 8
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

12:                                               ; preds = %1
  %13 = load i32, i32* @DIRTY_CNODE, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %13, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %84

21:                                               ; preds = %12
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call %struct.ubifs_cnode* @first_dirty_cnode(%struct.TYPE_2__* %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 2
  store %struct.ubifs_cnode* %25, %struct.ubifs_cnode** %27, align 8
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 2
  %30 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %29, align 8
  store %struct.ubifs_cnode* %30, %struct.ubifs_cnode** %4, align 8
  %31 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %32 = icmp ne %struct.ubifs_cnode* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %84

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %60
  %38 = load i32, i32* @COW_ZNODE, align 4
  %39 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %40 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %39, i32 0, i32 1
  %41 = call i32 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @ubifs_assert(i32 %44)
  %46 = load i32, i32* @COW_ZNODE, align 4
  %47 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %48 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %47, i32 0, i32 1
  %49 = call i32 @__set_bit(i32 %46, i32* %48)
  %50 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %51 = call %struct.ubifs_cnode* @next_dirty_cnode(%struct.ubifs_cnode* %50)
  store %struct.ubifs_cnode* %51, %struct.ubifs_cnode** %5, align 8
  %52 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %53 = icmp ne %struct.ubifs_cnode* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %37
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 2
  %57 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %56, align 8
  %58 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %59 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %58, i32 0, i32 0
  store %struct.ubifs_cnode* %57, %struct.ubifs_cnode** %59, align 8
  br label %67

60:                                               ; preds = %37
  %61 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %62 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %63 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %62, i32 0, i32 0
  store %struct.ubifs_cnode* %61, %struct.ubifs_cnode** %63, align 8
  %64 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  store %struct.ubifs_cnode* %64, %struct.ubifs_cnode** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %37

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dbg_cmt(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @dbg_lp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = icmp eq i32 %72, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ubifs_assert(i32 %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %67, %33, %20, %11
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.ubifs_cnode* @first_dirty_cnode(%struct.TYPE_2__*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local %struct.ubifs_cnode* @next_dirty_cnode(%struct.ubifs_cnode*) #1

declare dso_local i32 @dbg_cmt(i8*, i32) #1

declare dso_local i32 @dbg_lp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
