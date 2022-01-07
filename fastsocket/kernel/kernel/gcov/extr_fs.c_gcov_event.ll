; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_gcov_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_gcov_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32 }
%struct.gcov_node = type { i32 }

@node_lock = common dso_local global i32 0, align 4
@gcov_persist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not add '%s' (already exists)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"could not remove '%s' (not found)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gcov_event(i32 %0, %struct.gcov_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca %struct.gcov_node*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gcov_info* %1, %struct.gcov_info** %4, align 8
  %6 = call i32 @mutex_lock(i32* @node_lock)
  %7 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %8 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.gcov_node* @get_node_by_name(i32 %9)
  store %struct.gcov_node* %10, %struct.gcov_node** %5, align 8
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %51 [
    i32 129, label %12
    i32 128, label %31
  ]

12:                                               ; preds = %2
  %13 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %14 = icmp ne %struct.gcov_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %17 = call i32 @add_node(%struct.gcov_info* %16)
  br label %51

18:                                               ; preds = %12
  %19 = load i32, i32* @gcov_persist, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %23 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %24 = call i32 @revive_node(%struct.gcov_node* %22, %struct.gcov_info* %23)
  br label %30

25:                                               ; preds = %18
  %26 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %27 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %21
  br label %51

31:                                               ; preds = %2
  %32 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %33 = icmp ne %struct.gcov_node* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %36 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %51

39:                                               ; preds = %31
  %40 = load i32, i32* @gcov_persist, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %44 = call i32 @ghost_node(%struct.gcov_node* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %51

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %39
  %49 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %50 = call i32 @remove_node(%struct.gcov_node* %49)
  br label %51

51:                                               ; preds = %2, %48, %46, %34, %30, %15
  %52 = call i32 @mutex_unlock(i32* @node_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gcov_node* @get_node_by_name(i32) #1

declare dso_local i32 @add_node(%struct.gcov_info*) #1

declare dso_local i32 @revive_node(%struct.gcov_node*, %struct.gcov_info*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @ghost_node(%struct.gcov_node*) #1

declare dso_local i32 @remove_node(%struct.gcov_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
