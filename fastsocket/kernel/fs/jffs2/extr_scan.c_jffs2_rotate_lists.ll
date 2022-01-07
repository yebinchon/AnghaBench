; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_scan.c_jffs2_rotate_lists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_scan.c_jffs2_rotate_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@pseudo_random = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_rotate_lists(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca %struct.jffs2_sb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %2, align 8
  %5 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %6 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %5, i32 0, i32 7
  %7 = call i32 @count_list(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @pseudo_random, align 4
  %12 = load i32, i32* %3, align 4
  %13 = srem i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %15 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %14, i32 0, i32 7
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @rotate_list(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %20 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %19, i32 0, i32 6
  %21 = call i32 @count_list(i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @pseudo_random, align 4
  %26 = load i32, i32* %3, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %29 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %28, i32 0, i32 6
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @rotate_list(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %18
  %33 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %34 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %33, i32 0, i32 5
  %35 = call i32 @count_list(i32* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i32, i32* @pseudo_random, align 4
  %40 = load i32, i32* %3, align 4
  %41 = srem i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %43 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %42, i32 0, i32 5
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @rotate_list(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %32
  %47 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %48 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %47, i32 0, i32 4
  %49 = call i32 @count_list(i32* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* @pseudo_random, align 4
  %54 = load i32, i32* %3, align 4
  %55 = srem i32 %53, %54
  store i32 %55, i32* %4, align 4
  %56 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %57 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %56, i32 0, i32 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @rotate_list(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %52, %46
  %61 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %62 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32, i32* @pseudo_random, align 4
  %67 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %68 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = srem i32 %66, %69
  store i32 %70, i32* %4, align 4
  %71 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %72 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %71, i32 0, i32 3
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @rotate_list(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %60
  %76 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %77 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32, i32* @pseudo_random, align 4
  %82 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %83 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = srem i32 %81, %84
  store i32 %85, i32* %4, align 4
  %86 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %87 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %86, i32 0, i32 2
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @rotate_list(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %80, %75
  ret void
}

declare dso_local i32 @count_list(i32*) #1

declare dso_local i32 @rotate_list(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
