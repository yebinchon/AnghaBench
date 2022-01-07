; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_ubifs_jnl_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_ubifs_jnl_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32 }
%struct.inode = type { i64, i32 }
%struct.ubifs_inode = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_jnl_delete_inode(%struct.ubifs_info* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %8)
  store %struct.ubifs_inode* %9, %struct.ubifs_inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ubifs_assert(i32 %14)
  %16 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %17 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i32 @ubifs_jnl_write_inode(%struct.ubifs_info* %24, %struct.inode* %25)
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %2
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 1
  %30 = call i32 @down_read(i32* %29)
  %31 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %32 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 1
  %41 = call i32 @up_read(i32* %40)
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @ubifs_jnl_write_inode(%struct.ubifs_info* %42, %struct.inode* %43)
  store i32 %44, i32* %3, align 4
  br label %68

45:                                               ; preds = %27
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ubifs_tnc_remove_ino(%struct.ubifs_info* %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %54, i32 %55)
  br label %63

57:                                               ; preds = %45
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ubifs_delete_orphan(%struct.ubifs_info* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %53
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 1
  %66 = call i32 @up_read(i32* %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %38, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_jnl_write_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ubifs_tnc_remove_ino(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_delete_orphan(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
