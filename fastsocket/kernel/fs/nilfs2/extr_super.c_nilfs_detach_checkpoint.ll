; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_detach_checkpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_detach_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sb_info = type { i32, i32*, %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_detach_checkpoint(%struct.nilfs_sb_info* %0) #0 {
  %2 = alloca %struct.nilfs_sb_info*, align 8
  %3 = alloca %struct.the_nilfs*, align 8
  store %struct.nilfs_sb_info* %0, %struct.nilfs_sb_info** %2, align 8
  %4 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %2, align 8
  %5 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %4, i32 0, i32 2
  %6 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  store %struct.the_nilfs* %6, %struct.the_nilfs** %3, align 8
  %7 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %2, align 8
  %8 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @nilfs_mdt_clear(i32* %9)
  %11 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %2, align 8
  %12 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @nilfs_mdt_destroy(i32* %13)
  %15 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %2, align 8
  %16 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 0
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %2, align 8
  %21 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %20, i32 0, i32 0
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %24 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %23, i32 0, i32 0
  %25 = call i32 @up_write(i32* %24)
  ret void
}

declare dso_local i32 @nilfs_mdt_clear(i32*) #1

declare dso_local i32 @nilfs_mdt_destroy(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
