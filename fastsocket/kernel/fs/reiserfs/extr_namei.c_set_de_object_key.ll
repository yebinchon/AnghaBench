; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_set_de_object_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_set_de_object_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_dir_entry = type { i64, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reiserfs_dir_entry*)* @set_de_object_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_de_object_key(%struct.reiserfs_dir_entry* %0) #0 {
  %2 = alloca %struct.reiserfs_dir_entry*, align 8
  store %struct.reiserfs_dir_entry* %0, %struct.reiserfs_dir_entry** %2, align 8
  %3 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %4 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %7 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @ih_entry_count(i32 %8)
  %10 = icmp uge i64 %5, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %14 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %17 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = call i32 @deh_dir_id(i32* %19)
  %21 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %22 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %24 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %27 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = call i32 @deh_objectid(i32* %29)
  %31 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %32 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ih_entry_count(i32) #1

declare dso_local i32 @deh_dir_id(i32*) #1

declare dso_local i32 @deh_objectid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
