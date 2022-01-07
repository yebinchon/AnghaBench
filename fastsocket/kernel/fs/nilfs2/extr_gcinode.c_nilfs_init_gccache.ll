; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_gcinode.c_nilfs_init_gccache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_gcinode.c_nilfs_init_gccache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32*, i32 }

@NILFS_GCINODE_HASH_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_init_gccache(%struct.the_nilfs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %3, align 8
  %5 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %6 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @BUG_ON(i32* %7)
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %10 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %9, i32 0, i32 1
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load i32, i32* @NILFS_GCINODE_HASH_SIZE, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %21 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @NILFS_GCINODE_HASH_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %34 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @INIT_HLIST_HEAD(i32* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %28

43:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @BUG_ON(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
