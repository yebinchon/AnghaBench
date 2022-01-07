; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_split_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_split_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_io_tree = type { i32 }
%struct.extent_state = type { %struct.extent_io_tree*, i32, i8*, i8*, i32 }
%struct.rb_node = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_io_tree*, %struct.extent_state*, %struct.extent_state*, i8*)* @split_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_state(%struct.extent_io_tree* %0, %struct.extent_state* %1, %struct.extent_state* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca %struct.extent_state*, align 8
  %8 = alloca %struct.extent_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rb_node*, align 8
  store %struct.extent_io_tree* %0, %struct.extent_io_tree** %6, align 8
  store %struct.extent_state* %1, %struct.extent_state** %7, align 8
  store %struct.extent_state* %2, %struct.extent_state** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %12 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i32 @split_cb(%struct.extent_io_tree* %11, %struct.extent_state* %12, i8* %13)
  %15 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %16 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %19 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr i8, i8* %20, i64 -1
  %22 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %23 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %25 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %28 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %31 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %33 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %32, i32 0, i32 0
  %34 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %35 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %38 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %37, i32 0, i32 1
  %39 = call %struct.rb_node* @tree_insert(i32* %33, i8* %36, i32* %38)
  store %struct.rb_node* %39, %struct.rb_node** %10, align 8
  %40 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %41 = icmp ne %struct.rb_node* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %44 = call i32 @free_extent_state(%struct.extent_state* %43)
  %45 = load i32, i32* @EEXIST, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %51

47:                                               ; preds = %4
  %48 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %49 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %50 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %49, i32 0, i32 0
  store %struct.extent_io_tree* %48, %struct.extent_io_tree** %50, align 8
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @split_cb(%struct.extent_io_tree*, %struct.extent_state*, i8*) #1

declare dso_local %struct.rb_node* @tree_insert(i32*, i8*, i32*) #1

declare dso_local i32 @free_extent_state(%struct.extent_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
