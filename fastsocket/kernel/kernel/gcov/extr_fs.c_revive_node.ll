; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_revive_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_fs.c_revive_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { %struct.gcov_info*, i32* }
%struct.gcov_info = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"discarding saved data for '%s' (version changed)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_node*, %struct.gcov_info*)* @revive_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revive_node(%struct.gcov_node* %0, %struct.gcov_info* %1) #0 {
  %3 = alloca %struct.gcov_node*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  store %struct.gcov_node* %0, %struct.gcov_node** %3, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %4, align 8
  %5 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %6 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %9 = call i64 @gcov_info_is_compatible(i32* %7, %struct.gcov_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %13 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %14 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @gcov_info_add(%struct.gcov_info* %12, i32* %15)
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %19 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %24 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @gcov_info_free(i32* %25)
  %27 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %28 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %30 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %31 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %30, i32 0, i32 0
  store %struct.gcov_info* %29, %struct.gcov_info** %31, align 8
  ret void
}

declare dso_local i64 @gcov_info_is_compatible(i32*, %struct.gcov_info*) #1

declare dso_local i32 @gcov_info_add(%struct.gcov_info*, i32*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @gcov_info_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
