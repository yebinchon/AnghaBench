; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_copy_znode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_copy_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_znode = type { i64, i32, %struct.ubifs_zbranch*, i32, i32* }
%struct.ubifs_zbranch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_znode* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIRTY_ZNODE = common dso_local global i32 0, align 4
@COW_ZNODE = common dso_local global i32 0, align 4
@OBSOLETE_ZNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_info*, %struct.ubifs_znode*)* @copy_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @copy_znode(%struct.ubifs_info* %0, %struct.ubifs_znode* %1) #0 {
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %5, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.ubifs_znode* @kmalloc(i32 %12, i32 %13)
  store %struct.ubifs_znode* %14, %struct.ubifs_znode** %6, align 8
  %15 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %16 = icmp ne %struct.ubifs_znode* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.ubifs_znode* @ERR_PTR(i32 %23)
  store %struct.ubifs_znode* %24, %struct.ubifs_znode** %3, align 8
  br label %93

25:                                               ; preds = %2
  %26 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %27 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(%struct.ubifs_znode* %26, %struct.ubifs_znode* %27, i32 %30)
  %32 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %33 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* @DIRTY_ZNODE, align 4
  %35 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %36 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %35, i32 0, i32 3
  %37 = call i32 @__set_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @COW_ZNODE, align 4
  %39 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %40 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %39, i32 0, i32 3
  %41 = call i32 @__clear_bit(i32 %38, i32* %40)
  %42 = load i32, i32* @OBSOLETE_ZNODE, align 4
  %43 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %44 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %43, i32 0, i32 3
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @ubifs_assert(i32 %48)
  %50 = load i32, i32* @OBSOLETE_ZNODE, align 4
  %51 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %52 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %51, i32 0, i32 3
  %53 = call i32 @__set_bit(i32 %50, i32* %52)
  %54 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %55 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %25
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %60 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %84, %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %68 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %67, i32 0, i32 2
  %69 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %69, i64 %71
  store %struct.ubifs_zbranch* %72, %struct.ubifs_zbranch** %9, align 8
  %73 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %9, align 8
  %74 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = icmp ne %struct.TYPE_2__* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %79 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %9, align 8
  %80 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store %struct.ubifs_znode* %78, %struct.ubifs_znode** %82, align 8
  br label %83

83:                                               ; preds = %77, %66
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %62

87:                                               ; preds = %62
  br label %88

88:                                               ; preds = %87, %25
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %90 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %89, i32 0, i32 0
  %91 = call i32 @atomic_long_inc(i32* %90)
  %92 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %92, %struct.ubifs_znode** %3, align 8
  br label %93

93:                                               ; preds = %88, %21
  %94 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  ret %struct.ubifs_znode* %94
}

declare dso_local %struct.ubifs_znode* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.ubifs_znode*, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
