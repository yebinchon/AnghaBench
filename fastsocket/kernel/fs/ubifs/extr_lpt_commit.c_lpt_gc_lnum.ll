; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_lpt_gc_lnum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_lpt_gc_lnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"LEB %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot read LEB %d, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32)* @lpt_gc_lnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpt_gc_lnum(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dbg_lp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ubi_read(i32 %24, i32 %25, i8* %26, i32 0, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ubifs_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %101

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %52, %93
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @is_a_node(%struct.ubifs_info* %40, i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %39
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @get_pad_len(%struct.ubifs_info* %46, i8* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = load i8*, i8** %12, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr i8, i8* %54, i64 %55
  store i8* %56, i8** %12, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %39

60:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %101

61:                                               ; preds = %39
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @get_lpt_node_type(%struct.ubifs_info* %62, i8* %63, i32* %9)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @get_lpt_node_len(%struct.ubifs_info* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @ubifs_assert(i32 %75)
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %78 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %77, i32 0, i32 1
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @make_node_dirty(%struct.ubifs_info* %80, i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %87 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %61
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %101

93:                                               ; preds = %61
  %94 = load i32, i32* %10, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr i8, i8* %95, i64 %96
  store i8* %97, i8** %12, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %39

101:                                              ; preds = %91, %60, %33
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @dbg_lp(i8*, i32) #1

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

declare dso_local i32 @is_a_node(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @get_pad_len(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @get_lpt_node_type(%struct.ubifs_info*, i8*, i32*) #1

declare dso_local i32 @get_lpt_node_len(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @make_node_dirty(%struct.ubifs_info*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
