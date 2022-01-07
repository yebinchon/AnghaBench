; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_set_inode_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_set_inode_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }

@S_SYNC = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_DIRSYNC = common dso_local global i32 0, align 4
@GFS2_DIF_IMMUTABLE = common dso_local global i32 0, align 4
@GFS2_DIF_APPENDONLY = common dso_local global i32 0, align 4
@GFS2_DIF_NOATIME = common dso_local global i32 0, align 4
@GFS2_DIF_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_set_inode_flags(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %5)
  store %struct.gfs2_inode* %6, %struct.gfs2_inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @S_SYNC, align 4
  %11 = load i32, i32* @S_APPEND, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @S_IMMUTABLE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @S_NOATIME, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S_DIRSYNC, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFS2_DIF_IMMUTABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @S_IMMUTABLE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %1
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFS2_DIF_APPENDONLY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @S_APPEND, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GFS2_DIF_NOATIME, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @S_NOATIME, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %56 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GFS2_DIF_SYNC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @S_SYNC, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %54
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.inode*, %struct.inode** %2, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
