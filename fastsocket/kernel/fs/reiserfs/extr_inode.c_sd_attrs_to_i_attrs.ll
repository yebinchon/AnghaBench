; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_sd_attrs_to_i_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_sd_attrs_to_i_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@REISERFS_SYNC_FL = common dso_local global i32 0, align 4
@S_SYNC = common dso_local global i32 0, align 4
@REISERFS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@REISERFS_APPEND_FL = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@REISERFS_NOATIME_FL = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@REISERFS_NOTAIL_FL = common dso_local global i32 0, align 4
@i_nopack_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sd_attrs_to_i_attrs(i32 %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %4, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @reiserfs_attrs(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %103

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @REISERFS_SYNC_FL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @S_SYNC, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %28

21:                                               ; preds = %10
  %22 = load i32, i32* @S_SYNC, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %15
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @REISERFS_IMMUTABLE_FL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @S_IMMUTABLE, align 4
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %46

39:                                               ; preds = %28
  %40 = load i32, i32* @S_IMMUTABLE, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @REISERFS_APPEND_FL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @S_APPEND, align 4
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %64

57:                                               ; preds = %46
  %58 = load i32, i32* @S_APPEND, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %51
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @REISERFS_NOATIME_FL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* @S_NOATIME, align 4
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %82

75:                                               ; preds = %64
  %76 = load i32, i32* @S_NOATIME, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %75, %69
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @REISERFS_NOTAIL_FL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32, i32* @i_nopack_mask, align 4
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 4
  br label %102

94:                                               ; preds = %82
  %95 = load i32, i32* @i_nopack_mask, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %96
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %94, %87
  br label %103

103:                                              ; preds = %102, %2
  ret void
}

declare dso_local i64 @reiserfs_attrs(i32) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
