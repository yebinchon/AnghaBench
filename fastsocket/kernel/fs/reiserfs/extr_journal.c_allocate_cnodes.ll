; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_allocate_cnodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_allocate_cnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_journal_cnode = type { %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reiserfs_journal_cnode* (i32)* @allocate_cnodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reiserfs_journal_cnode* @allocate_cnodes(i32 %0) #0 {
  %2 = alloca %struct.reiserfs_journal_cnode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_journal_cnode*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %2, align 8
  br label %69

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 16
  %13 = trunc i64 %12 to i32
  %14 = call %struct.reiserfs_journal_cnode* @vmalloc(i32 %13)
  store %struct.reiserfs_journal_cnode* %14, %struct.reiserfs_journal_cnode** %4, align 8
  %15 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %16 = icmp ne %struct.reiserfs_journal_cnode* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %2, align 8
  br label %69

18:                                               ; preds = %9
  %19 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 16
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(%struct.reiserfs_journal_cnode* %19, i32 0, i32 %23)
  %25 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %26 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %25, i64 0
  %27 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %26, i32 0, i32 1
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %27, align 8
  %28 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %29 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %28, i64 1
  %30 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %31 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %30, i64 0
  %32 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %31, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* %29, %struct.reiserfs_journal_cnode** %32, align 8
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %58, %18
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %38, i64 %41
  %43 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %43, i64 %45
  %47 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %46, i32 0, i32 1
  store %struct.reiserfs_journal_cnode* %42, %struct.reiserfs_journal_cnode** %47, align 8
  %48 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %48, i64 %51
  %53 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %53, i64 %55
  %57 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %56, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* %52, %struct.reiserfs_journal_cnode** %57, align 8
  br label %58

58:                                               ; preds = %37
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %33

61:                                               ; preds = %33
  %62 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %62, i64 %65
  %67 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %66, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %67, align 8
  %68 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  store %struct.reiserfs_journal_cnode* %68, %struct.reiserfs_journal_cnode** %2, align 8
  br label %69

69:                                               ; preds = %61, %17, %8
  %70 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %2, align 8
  ret %struct.reiserfs_journal_cnode* %70
}

declare dso_local %struct.reiserfs_journal_cnode* @vmalloc(i32) #1

declare dso_local i32 @memset(%struct.reiserfs_journal_cnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
