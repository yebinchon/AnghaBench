; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i32, i64, %struct.avtab_node** }
%struct.avtab_node = type { %struct.avtab_node* }

@avtab_node_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avtab_destroy(%struct.avtab* %0) #0 {
  %2 = alloca %struct.avtab*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.avtab_node*, align 8
  %5 = alloca %struct.avtab_node*, align 8
  store %struct.avtab* %0, %struct.avtab** %2, align 8
  %6 = load %struct.avtab*, %struct.avtab** %2, align 8
  %7 = icmp ne %struct.avtab* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.avtab*, %struct.avtab** %2, align 8
  %10 = getelementptr inbounds %struct.avtab, %struct.avtab* %9, i32 0, i32 2
  %11 = load %struct.avtab_node**, %struct.avtab_node*** %10, align 8
  %12 = icmp ne %struct.avtab_node** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %61

14:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %47, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.avtab*, %struct.avtab** %2, align 8
  %18 = getelementptr inbounds %struct.avtab, %struct.avtab* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.avtab*, %struct.avtab** %2, align 8
  %23 = getelementptr inbounds %struct.avtab, %struct.avtab* %22, i32 0, i32 2
  %24 = load %struct.avtab_node**, %struct.avtab_node*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %24, i64 %26
  %28 = load %struct.avtab_node*, %struct.avtab_node** %27, align 8
  store %struct.avtab_node* %28, %struct.avtab_node** %4, align 8
  br label %29

29:                                               ; preds = %32, %21
  %30 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %31 = icmp ne %struct.avtab_node* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  store %struct.avtab_node* %33, %struct.avtab_node** %5, align 8
  %34 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %35 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %34, i32 0, i32 0
  %36 = load %struct.avtab_node*, %struct.avtab_node** %35, align 8
  store %struct.avtab_node* %36, %struct.avtab_node** %4, align 8
  %37 = load i32, i32* @avtab_node_cachep, align 4
  %38 = load %struct.avtab_node*, %struct.avtab_node** %5, align 8
  %39 = call i32 @kmem_cache_free(i32 %37, %struct.avtab_node* %38)
  br label %29

40:                                               ; preds = %29
  %41 = load %struct.avtab*, %struct.avtab** %2, align 8
  %42 = getelementptr inbounds %struct.avtab, %struct.avtab* %41, i32 0, i32 2
  %43 = load %struct.avtab_node**, %struct.avtab_node*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %43, i64 %45
  store %struct.avtab_node* null, %struct.avtab_node** %46, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load %struct.avtab*, %struct.avtab** %2, align 8
  %52 = getelementptr inbounds %struct.avtab, %struct.avtab* %51, i32 0, i32 2
  %53 = load %struct.avtab_node**, %struct.avtab_node*** %52, align 8
  %54 = call i32 @kfree(%struct.avtab_node** %53)
  %55 = load %struct.avtab*, %struct.avtab** %2, align 8
  %56 = getelementptr inbounds %struct.avtab, %struct.avtab* %55, i32 0, i32 2
  store %struct.avtab_node** null, %struct.avtab_node*** %56, align 8
  %57 = load %struct.avtab*, %struct.avtab** %2, align 8
  %58 = getelementptr inbounds %struct.avtab, %struct.avtab* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.avtab*, %struct.avtab** %2, align 8
  %60 = getelementptr inbounds %struct.avtab, %struct.avtab* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %50, %13
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.avtab_node*) #1

declare dso_local i32 @kfree(%struct.avtab_node**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
