; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_clear_state_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_clear_state_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_io_tree = type { i64, i32 }
%struct.extent_state = type { i32, i64, i64, i32*, i32, i32 }

@EXTENT_CTLBITS = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_state* (%struct.extent_io_tree*, %struct.extent_state*, i32*, i32)* @clear_state_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_state* @clear_state_bit(%struct.extent_io_tree* %0, %struct.extent_state* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.extent_io_tree*, align 8
  %6 = alloca %struct.extent_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.extent_io_tree* %0, %struct.extent_io_tree** %5, align 8
  store %struct.extent_state* %1, %struct.extent_state** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @EXTENT_CTLBITS, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @EXTENT_DIRTY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %4
  %22 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %23 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EXTENT_DIRTY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %30 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %33 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %39 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %46 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %28, %21, %4
  %50 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %51 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @clear_state_cb(%struct.extent_io_tree* %50, %struct.extent_state* %51, i32* %52)
  %54 = load i32, i32* %10, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %57 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %64 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %63, i32 0, i32 5
  %65 = call i32 @wake_up(i32* %64)
  br label %66

66:                                               ; preds = %62, %49
  %67 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %68 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %73 = call %struct.extent_state* @next_state(%struct.extent_state* %72)
  store %struct.extent_state* %73, %struct.extent_state** %9, align 8
  %74 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %75 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %80 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %79, i32 0, i32 4
  %81 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %82 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %81, i32 0, i32 1
  %83 = call i32 @rb_erase(i32* %80, i32* %82)
  %84 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %85 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %84, i32 0, i32 3
  store i32* null, i32** %85, align 8
  %86 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %87 = call i32 @free_extent_state(%struct.extent_state* %86)
  br label %90

88:                                               ; preds = %71
  %89 = call i32 @WARN_ON(i32 1)
  br label %90

90:                                               ; preds = %88, %78
  br label %97

91:                                               ; preds = %66
  %92 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %93 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %94 = call i32 @merge_state(%struct.extent_io_tree* %92, %struct.extent_state* %93)
  %95 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %96 = call %struct.extent_state* @next_state(%struct.extent_state* %95)
  store %struct.extent_state* %96, %struct.extent_state** %9, align 8
  br label %97

97:                                               ; preds = %91, %90
  %98 = load %struct.extent_state*, %struct.extent_state** %9, align 8
  ret %struct.extent_state* %98
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clear_state_cb(%struct.extent_io_tree*, %struct.extent_state*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.extent_state* @next_state(%struct.extent_state*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @free_extent_state(%struct.extent_state*) #1

declare dso_local i32 @merge_state(%struct.extent_io_tree*, %struct.extent_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
