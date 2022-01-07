; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_release_super_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_release_super_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.the_nilfs*)* @nilfs_release_super_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_release_super_block(%struct.the_nilfs* %0) #0 {
  %2 = alloca %struct.the_nilfs*, align 8
  %3 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %38, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %41

7:                                                ; preds = %4
  %8 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %9 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %7
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @brelse(i32* %23)
  %25 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %26 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* null, i32** %30, align 8
  %31 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %32 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %16, %7
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %4

41:                                               ; preds = %4
  ret void
}

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
