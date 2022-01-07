; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_item.c_config_item_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_item.c_config_item_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32*, i32*, %struct.config_item*, %struct.config_group*, %struct.config_item_type* }
%struct.config_group = type { i32 }
%struct.config_item_type = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.config_item*)* }

@.str = private unnamed_addr constant [29 x i8] c"config_item %s: cleaning up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*)* @config_item_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_item_cleanup(%struct.config_item* %0) #0 {
  %2 = alloca %struct.config_item*, align 8
  %3 = alloca %struct.config_item_type*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca %struct.config_item*, align 8
  store %struct.config_item* %0, %struct.config_item** %2, align 8
  %6 = load %struct.config_item*, %struct.config_item** %2, align 8
  %7 = getelementptr inbounds %struct.config_item, %struct.config_item* %6, i32 0, i32 4
  %8 = load %struct.config_item_type*, %struct.config_item_type** %7, align 8
  store %struct.config_item_type* %8, %struct.config_item_type** %3, align 8
  %9 = load %struct.config_item*, %struct.config_item** %2, align 8
  %10 = getelementptr inbounds %struct.config_item, %struct.config_item* %9, i32 0, i32 3
  %11 = load %struct.config_group*, %struct.config_group** %10, align 8
  store %struct.config_group* %11, %struct.config_group** %4, align 8
  %12 = load %struct.config_item*, %struct.config_item** %2, align 8
  %13 = getelementptr inbounds %struct.config_item, %struct.config_item* %12, i32 0, i32 2
  %14 = load %struct.config_item*, %struct.config_item** %13, align 8
  store %struct.config_item* %14, %struct.config_item** %5, align 8
  %15 = load %struct.config_item*, %struct.config_item** %2, align 8
  %16 = call i32 @config_item_name(%struct.config_item* %15)
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.config_item*, %struct.config_item** %2, align 8
  %19 = getelementptr inbounds %struct.config_item, %struct.config_item* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.config_item*, %struct.config_item** %2, align 8
  %22 = getelementptr inbounds %struct.config_item, %struct.config_item* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.config_item*, %struct.config_item** %2, align 8
  %27 = getelementptr inbounds %struct.config_item, %struct.config_item* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.config_item*, %struct.config_item** %2, align 8
  %32 = getelementptr inbounds %struct.config_item, %struct.config_item* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.config_item_type*, %struct.config_item_type** %3, align 8
  %34 = icmp ne %struct.config_item_type* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.config_item_type*, %struct.config_item_type** %3, align 8
  %37 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.config_item_type*, %struct.config_item_type** %3, align 8
  %42 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.config_item*)*, i32 (%struct.config_item*)** %44, align 8
  %46 = icmp ne i32 (%struct.config_item*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.config_item_type*, %struct.config_item_type** %3, align 8
  %49 = getelementptr inbounds %struct.config_item_type, %struct.config_item_type* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.config_item*)*, i32 (%struct.config_item*)** %51, align 8
  %53 = load %struct.config_item*, %struct.config_item** %2, align 8
  %54 = call i32 %52(%struct.config_item* %53)
  br label %55

55:                                               ; preds = %47, %40, %35, %30
  %56 = load %struct.config_group*, %struct.config_group** %4, align 8
  %57 = icmp ne %struct.config_group* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.config_group*, %struct.config_group** %4, align 8
  %60 = call i32 @config_group_put(%struct.config_group* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.config_item*, %struct.config_item** %5, align 8
  %63 = icmp ne %struct.config_item* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.config_item*, %struct.config_item** %5, align 8
  %66 = call i32 @config_item_put(%struct.config_item* %65)
  br label %67

67:                                               ; preds = %64, %61
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @config_item_name(%struct.config_item*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @config_group_put(%struct.config_group*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
