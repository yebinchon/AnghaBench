; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_inode_go_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_inode_go_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_holder = type { i32, i64, %struct.gfs2_glock* }
%struct.gfs2_glock = type { i64, %struct.gfs2_inode*, %struct.gfs2_sbd* }
%struct.gfs2_inode = type { i32, i32, i32 }
%struct.gfs2_sbd = type { i32, i32, i32 }

@GL_SKIP = common dso_local global i32 0, align 4
@GIF_INVALID = common dso_local global i32 0, align 4
@GFS2_DIF_TRUNC_IN_PROG = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_holder*)* @inode_go_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inode_go_lock(%struct.gfs2_holder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_holder*, align 8
  %4 = alloca %struct.gfs2_glock*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  store %struct.gfs2_holder* %0, %struct.gfs2_holder** %3, align 8
  %8 = load %struct.gfs2_holder*, %struct.gfs2_holder** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %8, i32 0, i32 2
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  store %struct.gfs2_glock* %10, %struct.gfs2_glock** %4, align 8
  %11 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %11, i32 0, i32 2
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %5, align 8
  %14 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %15 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %14, i32 0, i32 1
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %15, align 8
  store %struct.gfs2_inode* %16, %struct.gfs2_inode** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %18 = icmp ne %struct.gfs2_inode* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.gfs2_holder*, %struct.gfs2_holder** %3, align 8
  %21 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GL_SKIP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  br label %83

27:                                               ; preds = %19
  %28 = load i32, i32* @GIF_INVALID, align 4
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 2
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %35 = call i32 @gfs2_inode_refresh(%struct.gfs2_inode* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %83

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %27
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %43 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GFS2_DIF_TRUNC_IN_PROG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %41
  %49 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %50 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %48
  %55 = load %struct.gfs2_holder*, %struct.gfs2_holder** %3, align 8
  %56 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %54
  %61 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %62 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %61, i32 0, i32 1
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %65 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %64, i32 0, i32 1
  %66 = call i64 @list_empty(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %70 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %69, i32 0, i32 2
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %72 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %71, i32 0, i32 1
  %73 = call i32 @list_add(i32* %70, i32* %72)
  br label %74

74:                                               ; preds = %68, %60
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %76 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %79 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %78, i32 0, i32 0
  %80 = call i32 @wake_up(i32* %79)
  store i32 1, i32* %2, align 4
  br label %83

81:                                               ; preds = %54, %48, %41
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %74, %38, %26
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_inode_refresh(%struct.gfs2_inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
