; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_dirty_cow_nnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_dirty_cow_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.ubifs_nnode* }
%struct.ubifs_nnode = type { i64, %struct.TYPE_6__*, i32, %struct.ubifs_nbranch*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ubifs_nnode* }
%struct.ubifs_nbranch = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ubifs_nnode* }

@COW_CNODE = common dso_local global i32 0, align 4
@DIRTY_CNODE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@OBSOLETE_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_nnode* (%struct.ubifs_info*, %struct.ubifs_nnode*)* @dirty_cow_nnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_nnode* @dirty_cow_nnode(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1) #0 {
  %3 = alloca %struct.ubifs_nnode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_nnode*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_nbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %5, align 8
  %9 = load i32, i32* @COW_CNODE, align 4
  %10 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %11 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %10, i32 0, i32 2
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @DIRTY_CNODE, align 4
  %16 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %17 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %16, i32 0, i32 2
  %18 = call i32 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %27 = call i32 @ubifs_add_nnode_dirt(%struct.ubifs_info* %25, %struct.ubifs_nnode* %26)
  br label %28

28:                                               ; preds = %20, %14
  %29 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  store %struct.ubifs_nnode* %29, %struct.ubifs_nnode** %3, align 8
  br label %124

30:                                               ; preds = %2
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = call %struct.ubifs_nnode* @kmalloc(i32 40, i32 %31)
  store %struct.ubifs_nnode* %32, %struct.ubifs_nnode** %6, align 8
  %33 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %34 = icmp ne %struct.ubifs_nnode* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.ubifs_nnode* @ERR_PTR(i32 %41)
  store %struct.ubifs_nnode* %42, %struct.ubifs_nnode** %3, align 8
  br label %124

43:                                               ; preds = %30
  %44 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %45 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %46 = call i32 @memcpy(%struct.ubifs_nnode* %44, %struct.ubifs_nnode* %45, i32 40)
  %47 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %48 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %47, i32 0, i32 4
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* @DIRTY_CNODE, align 4
  %50 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %51 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %50, i32 0, i32 2
  %52 = call i32 @__set_bit(i32 %49, i32* %51)
  %53 = load i32, i32* @COW_CNODE, align 4
  %54 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %55 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %54, i32 0, i32 2
  %56 = call i32 @__clear_bit(i32 %53, i32* %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %79, %43
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %63 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %62, i32 0, i32 3
  %64 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %64, i64 %66
  store %struct.ubifs_nbranch* %67, %struct.ubifs_nbranch** %8, align 8
  %68 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %69 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %74 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %75 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store %struct.ubifs_nnode* %73, %struct.ubifs_nnode** %77, align 8
  br label %78

78:                                               ; preds = %72, %61
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %57

82:                                               ; preds = %57
  %83 = load i32, i32* @OBSOLETE_CNODE, align 4
  %84 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %85 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %84, i32 0, i32 2
  %86 = call i32 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @ubifs_assert(i32 %89)
  %91 = load i32, i32* @OBSOLETE_CNODE, align 4
  %92 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %93 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %92, i32 0, i32 2
  %94 = call i32 @__set_bit(i32 %91, i32* %93)
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %96 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %100 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %101 = call i32 @ubifs_add_nnode_dirt(%struct.ubifs_info* %99, %struct.ubifs_nnode* %100)
  %102 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %103 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = icmp ne %struct.TYPE_6__* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %82
  %107 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %108 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %109 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %114 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store %struct.ubifs_nnode* %107, %struct.ubifs_nnode** %117, align 8
  br label %122

118:                                              ; preds = %82
  %119 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 1
  store %struct.ubifs_nnode* %119, %struct.ubifs_nnode** %121, align 8
  br label %122

122:                                              ; preds = %118, %106
  %123 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  store %struct.ubifs_nnode* %123, %struct.ubifs_nnode** %3, align 8
  br label %124

124:                                              ; preds = %122, %39, %28
  %125 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %3, align 8
  ret %struct.ubifs_nnode* %125
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ubifs_add_nnode_dirt(%struct.ubifs_info*, %struct.ubifs_nnode*) #1

declare dso_local %struct.ubifs_nnode* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_nnode* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.ubifs_nnode*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
