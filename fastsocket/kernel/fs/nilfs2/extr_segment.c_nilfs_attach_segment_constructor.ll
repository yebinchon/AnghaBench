; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_attach_segment_constructor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_attach_segment_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sb_info = type { i32*, %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_attach_segment_constructor(%struct.nilfs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nilfs_sb_info*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca i32, align 4
  store %struct.nilfs_sb_info* %0, %struct.nilfs_sb_info** %3, align 8
  %6 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %6, i32 0, i32 1
  %8 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  store %struct.the_nilfs* %8, %struct.the_nilfs** %4, align 8
  %9 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %10 = call i32* @nilfs_segctor_new(%struct.nilfs_sb_info* %9)
  %11 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %22 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %23 = call i32 @nilfs_attach_writer(%struct.the_nilfs* %21, %struct.nilfs_sb_info* %22)
  %24 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %25 = call i32 @NILFS_SC(%struct.nilfs_sb_info* %24)
  %26 = call i32 @nilfs_segctor_init(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %31 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %32 = call i32 @nilfs_detach_writer(%struct.the_nilfs* %30, %struct.nilfs_sb_info* %31)
  %33 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %34 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %38 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %29, %20
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32* @nilfs_segctor_new(%struct.nilfs_sb_info*) #1

declare dso_local i32 @nilfs_attach_writer(%struct.the_nilfs*, %struct.nilfs_sb_info*) #1

declare dso_local i32 @nilfs_segctor_init(i32) #1

declare dso_local i32 @NILFS_SC(%struct.nilfs_sb_info*) #1

declare dso_local i32 @nilfs_detach_writer(%struct.the_nilfs*, %struct.nilfs_sb_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
