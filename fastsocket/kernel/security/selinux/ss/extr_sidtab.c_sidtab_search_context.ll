; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_sidtab.c_sidtab_search_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_sidtab.c_sidtab_search_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab = type { %struct.sidtab_node** }
%struct.sidtab_node = type { %struct.sidtab_node*, i32, i32 }
%struct.context = type { i32 }

@SIDTAB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sidtab*, %struct.context*)* @sidtab_search_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sidtab_search_context(%struct.sidtab* %0, %struct.context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sidtab*, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sidtab_node*, align 8
  store %struct.sidtab* %0, %struct.sidtab** %4, align 8
  store %struct.context* %1, %struct.context** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %38, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SIDTAB_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %14 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %13, i32 0, i32 0
  %15 = load %struct.sidtab_node**, %struct.sidtab_node*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sidtab_node*, %struct.sidtab_node** %15, i64 %17
  %19 = load %struct.sidtab_node*, %struct.sidtab_node** %18, align 8
  store %struct.sidtab_node* %19, %struct.sidtab_node** %7, align 8
  br label %20

20:                                               ; preds = %33, %12
  %21 = load %struct.sidtab_node*, %struct.sidtab_node** %7, align 8
  %22 = icmp ne %struct.sidtab_node* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.sidtab_node*, %struct.sidtab_node** %7, align 8
  %25 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %24, i32 0, i32 2
  %26 = load %struct.context*, %struct.context** %5, align 8
  %27 = call i64 @context_cmp(i32* %25, %struct.context* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.sidtab_node*, %struct.sidtab_node** %7, align 8
  %31 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %23
  %34 = load %struct.sidtab_node*, %struct.sidtab_node** %7, align 8
  %35 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %34, i32 0, i32 0
  %36 = load %struct.sidtab_node*, %struct.sidtab_node** %35, align 8
  store %struct.sidtab_node* %36, %struct.sidtab_node** %7, align 8
  br label %20

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %8

41:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @context_cmp(i32*, %struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
