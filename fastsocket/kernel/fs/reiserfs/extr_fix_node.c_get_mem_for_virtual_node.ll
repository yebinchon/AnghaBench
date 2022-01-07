; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_get_mem_for_virtual_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_get_mem_for_virtual_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32, i8*, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*)* @get_mem_for_virtual_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mem_for_virtual_node(%struct.tree_balance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree_balance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %8 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %11 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @PATH_PLAST_BUFFER(i32 %12)
  %14 = call i32 @get_virtual_node_size(i32 %9, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %17 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %1
  %21 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %22 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %27 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @kfree(i8* %28)
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %33 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = load i32, i32* @__GFP_NOWARN, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @kmalloc(i32 %34, i32 %37)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %30
  %42 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %43 = call i32 @free_buffers_in_tb(%struct.tree_balance* %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @GFP_NOFS, align 4
  %46 = call i8* @kmalloc(i32 %44, i32 %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %51 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %41
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %55 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = call i32 (...) @schedule()
  %57 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %57, i32* %2, align 4
  br label %73

58:                                               ; preds = %30
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %61 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %1
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %67 = call i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @REPEAT_SEARCH, align 4
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %65, %62
  %72 = load i32, i32* @CARRY_ON, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %69, %52
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @get_virtual_node_size(i32, i32) #1

declare dso_local i32 @PATH_PLAST_BUFFER(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @free_buffers_in_tb(%struct.tree_balance*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @FILESYSTEM_CHANGED_TB(%struct.tree_balance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
