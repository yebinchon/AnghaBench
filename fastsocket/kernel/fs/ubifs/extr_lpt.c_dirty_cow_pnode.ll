; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_dirty_cow_pnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_dirty_cow_pnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_pnode = type { i64, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_pnode* }

@COW_CNODE = common dso_local global i32 0, align 4
@DIRTY_CNODE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OBSOLETE_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_pnode* (%struct.ubifs_info*, %struct.ubifs_pnode*)* @dirty_cow_pnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_pnode* @dirty_cow_pnode(%struct.ubifs_info* %0, %struct.ubifs_pnode* %1) #0 {
  %3 = alloca %struct.ubifs_pnode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_pnode*, align 8
  %6 = alloca %struct.ubifs_pnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_pnode* %1, %struct.ubifs_pnode** %5, align 8
  %7 = load i32, i32* @COW_CNODE, align 4
  %8 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %9 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %8, i32 0, i32 2
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @DIRTY_CNODE, align 4
  %14 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %14, i32 0, i32 2
  %16 = call i32 @test_and_set_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %25 = call i32 @add_pnode_dirt(%struct.ubifs_info* %23, %struct.ubifs_pnode* %24)
  br label %26

26:                                               ; preds = %18, %12
  %27 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  store %struct.ubifs_pnode* %27, %struct.ubifs_pnode** %3, align 8
  br label %90

28:                                               ; preds = %2
  %29 = load i32, i32* @GFP_NOFS, align 4
  %30 = call %struct.ubifs_pnode* @kmalloc(i32 32, i32 %29)
  store %struct.ubifs_pnode* %30, %struct.ubifs_pnode** %6, align 8
  %31 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %32 = icmp ne %struct.ubifs_pnode* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.ubifs_pnode* @ERR_PTR(i32 %39)
  store %struct.ubifs_pnode* %40, %struct.ubifs_pnode** %3, align 8
  br label %90

41:                                               ; preds = %28
  %42 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %43 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %44 = call i32 @memcpy(%struct.ubifs_pnode* %42, %struct.ubifs_pnode* %43, i32 32)
  %45 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %46 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* @DIRTY_CNODE, align 4
  %48 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %49 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %48, i32 0, i32 2
  %50 = call i32 @__set_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @COW_CNODE, align 4
  %52 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %53 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %52, i32 0, i32 2
  %54 = call i32 @__clear_bit(i32 %51, i32* %53)
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %56 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %57 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %58 = call i32 @replace_cats(%struct.ubifs_info* %55, %struct.ubifs_pnode* %56, %struct.ubifs_pnode* %57)
  %59 = load i32, i32* @OBSOLETE_CNODE, align 4
  %60 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %61 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %60, i32 0, i32 2
  %62 = call i32 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @ubifs_assert(i32 %65)
  %67 = load i32, i32* @OBSOLETE_CNODE, align 4
  %68 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %69 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %68, i32 0, i32 2
  %70 = call i32 @__set_bit(i32 %67, i32* %69)
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %76 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %77 = call i32 @add_pnode_dirt(%struct.ubifs_info* %75, %struct.ubifs_pnode* %76)
  %78 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %79 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %80 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %85 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store %struct.ubifs_pnode* %78, %struct.ubifs_pnode** %88, align 8
  %89 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  store %struct.ubifs_pnode* %89, %struct.ubifs_pnode** %3, align 8
  br label %90

90:                                               ; preds = %41, %37, %26
  %91 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %3, align 8
  ret %struct.ubifs_pnode* %91
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @add_pnode_dirt(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local %struct.ubifs_pnode* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_pnode* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.ubifs_pnode*, %struct.ubifs_pnode*, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @replace_cats(%struct.ubifs_info*, %struct.ubifs_pnode*, %struct.ubifs_pnode*) #1

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
