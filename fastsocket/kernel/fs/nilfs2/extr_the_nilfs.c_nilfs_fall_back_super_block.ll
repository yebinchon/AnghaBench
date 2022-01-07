; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_fall_back_super_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_fall_back_super_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32**, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_fall_back_super_block(%struct.the_nilfs* %0) #0 {
  %2 = alloca %struct.the_nilfs*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %2, align 8
  %3 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %4 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %3, i32 0, i32 1
  %5 = load i32**, i32*** %4, align 8
  %6 = getelementptr inbounds i32*, i32** %5, i64 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @brelse(i32* %7)
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %10 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %9, i32 0, i32 1
  %11 = load i32**, i32*** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %15 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  store i32* %13, i32** %17, align 8
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %24 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  store i32* %22, i32** %26, align 8
  %27 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %28 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %32 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  store i32* null, i32** %34, align 8
  ret void
}

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
