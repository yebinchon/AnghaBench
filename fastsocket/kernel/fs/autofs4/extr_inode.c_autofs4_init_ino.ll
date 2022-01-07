; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_autofs4_init_ino.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_autofs4_init_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_info = type { i32 (%struct.autofs_info*)*, i32, %struct.autofs_sb_info*, i32, i32, i64, i64, i32, i32, i64, i32, i64, i32*, i64 }
%struct.autofs_sb_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.autofs_info* @autofs4_init_ino(%struct.autofs_info* %0, %struct.autofs_sb_info* %1, i32 %2) #0 {
  %4 = alloca %struct.autofs_info*, align 8
  %5 = alloca %struct.autofs_info*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.autofs_info* %0, %struct.autofs_info** %5, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %9 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %10 = icmp eq %struct.autofs_info* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.autofs_info* @kmalloc(i32 96, i32 %12)
  store %struct.autofs_info* %13, %struct.autofs_info** %5, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %16 = icmp eq %struct.autofs_info* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store %struct.autofs_info* null, %struct.autofs_info** %4, align 8
  br label %80

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %18
  %22 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %23 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %22, i32 0, i32 13
  store i64 0, i64* %23, align 8
  %24 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %25 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %24, i32 0, i32 12
  store i32* null, i32** %25, align 8
  %26 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %27 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %26, i32 0, i32 11
  store i64 0, i64* %27, align 8
  %28 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %29 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %28, i32 0, i32 10
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %32 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %34 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %33, i32 0, i32 8
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %37 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %36, i32 0, i32 7
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  br label %39

39:                                               ; preds = %21, %18
  %40 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %41 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %43 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %46 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @jiffies, align 4
  %48 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %49 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %51 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %52 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %51, i32 0, i32 2
  store %struct.autofs_sb_info* %50, %struct.autofs_sb_info** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %39
  %56 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %57 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %56, i32 0, i32 0
  %58 = load i32 (%struct.autofs_info*)*, i32 (%struct.autofs_info*)** %57, align 8
  %59 = icmp ne i32 (%struct.autofs_info*)* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %62 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %61, i32 0, i32 0
  %63 = load i32 (%struct.autofs_info*)*, i32 (%struct.autofs_info*)** %62, align 8
  %64 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %65 = call i32 %63(%struct.autofs_info* %64)
  br label %66

66:                                               ; preds = %60, %55, %39
  %67 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %68 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %67, i32 0, i32 1
  %69 = call i32 @memset(i32* %68, i32 0, i32 4)
  %70 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %71 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %70, i32 0, i32 0
  store i32 (%struct.autofs_info*)* null, i32 (%struct.autofs_info*)** %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @S_ISLNK(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %77 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %76, i32 0, i32 0
  store i32 (%struct.autofs_info*)* @ino_lnkfree, i32 (%struct.autofs_info*)** %77, align 8
  br label %78

78:                                               ; preds = %75, %66
  %79 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  store %struct.autofs_info* %79, %struct.autofs_info** %4, align 8
  br label %80

80:                                               ; preds = %78, %17
  %81 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  ret %struct.autofs_info* %81
}

declare dso_local %struct.autofs_info* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @ino_lnkfree(%struct.autofs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
