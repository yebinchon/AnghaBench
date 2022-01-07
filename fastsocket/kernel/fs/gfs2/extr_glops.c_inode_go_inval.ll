; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_inode_go_inval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_inode_go_inval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { %struct.TYPE_4__*, i32, %struct.gfs2_inode* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.gfs2_inode = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.address_space*, i32 }
%struct.address_space = type { i32 }

@DIO_METADATA = common dso_local global i32 0, align 4
@GIF_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*, i32)* @inode_go_inval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode_go_inval(%struct.gfs2_glock* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.address_space*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 2
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  store %struct.gfs2_inode* %9, %struct.gfs2_inode** %5, align 8
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %13, i32 0, i32 1
  %15 = call i32 @atomic_read(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @gfs2_assert_withdraw(%struct.TYPE_4__* %12, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DIO_METADATA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %26 = call %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock* %25)
  store %struct.address_space* %26, %struct.address_space** %6, align 8
  %27 = load %struct.address_space*, %struct.address_space** %6, align 8
  %28 = call i32 @truncate_inode_pages(%struct.address_space* %27, i32 0)
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %30 = icmp ne %struct.gfs2_inode* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load i32, i32* @GIF_INVALID, align 4
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 1
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 0
  %38 = call i32 @forget_all_cached_acls(%struct.TYPE_5__* %37)
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %40 = call i32 @gfs2_dir_hash_inval(%struct.gfs2_inode* %39)
  br label %41

41:                                               ; preds = %31, %24
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %44 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.gfs2_inode* @GFS2_I(i32 %48)
  %50 = icmp eq %struct.gfs2_inode* %43, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %53 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @gfs2_log_flush(%struct.TYPE_4__* %54, i32* null)
  %56 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %57 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %51, %42
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %62 = icmp ne %struct.gfs2_inode* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %65 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @S_ISREG(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %72 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.address_space*, %struct.address_space** %73, align 8
  %75 = call i32 @truncate_inode_pages(%struct.address_space* %74, i32 0)
  br label %76

76:                                               ; preds = %70, %63, %60
  ret void
}

declare dso_local i32 @gfs2_assert_withdraw(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @forget_all_cached_acls(%struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_dir_hash_inval(%struct.gfs2_inode*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_log_flush(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
