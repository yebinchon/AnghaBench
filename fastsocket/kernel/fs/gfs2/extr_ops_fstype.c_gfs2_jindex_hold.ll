; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_jindex_hold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_jindex_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, i32, i32, i32 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.qstr = type { i8*, i32, i32 }
%struct.gfs2_jdesc = type { i32, i64, i32, i32, i32 }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"journal%u\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@gfs2_recover_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.gfs2_holder*)* @gfs2_jindex_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_jindex_hold(%struct.gfs2_sbd* %0, %struct.gfs2_holder* %1) #0 {
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_holder*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.qstr, align 8
  %7 = alloca [20 x i8], align 16
  %8 = alloca %struct.gfs2_jdesc*, align 8
  %9 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store %struct.gfs2_holder* %1, %struct.gfs2_holder** %4, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.gfs2_inode* @GFS2_I(i32 %12)
  store %struct.gfs2_inode* %13, %struct.gfs2_inode** %5, align 8
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  br label %19

19:                                               ; preds = %104, %2
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LM_ST_SHARED, align 4
  %24 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %25 = call i32 @gfs2_glock_nq_init(i32 %22, i32 %23, i32 0, %struct.gfs2_holder* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %123

29:                                               ; preds = %19
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @gfs2_disk_hash(i8* %37, i32 %39)
  %41 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %43 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gfs2_dir_check(i32 %44, %struct.qstr* %6, i32* null)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %123

51:                                               ; preds = %29
  %52 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %53 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %123

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.gfs2_jdesc* @kzalloc(i32 32, i32 %60)
  store %struct.gfs2_jdesc* %61, %struct.gfs2_jdesc** %8, align 8
  %62 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %63 = icmp ne %struct.gfs2_jdesc* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %123

65:                                               ; preds = %57
  %66 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %67 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %66, i32 0, i32 4
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %70 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %69, i32 0, i32 3
  %71 = call i32 @slow_work_init(i32* %70, i32* @gfs2_recover_ops)
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %73 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gfs2_lookupi(i32 %74, %struct.qstr* %6, i32 1)
  %76 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %77 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %79 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %65
  %83 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %84 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %82, %65
  %89 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %90 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %101

96:                                               ; preds = %88
  %97 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %98 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %96, %93
  %102 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %103 = call i32 @kfree(%struct.gfs2_jdesc* %102)
  br label %123

104:                                              ; preds = %82
  %105 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %106 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %105, i32 0, i32 2
  %107 = call i32 @spin_lock(i32* %106)
  %108 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %109 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = sext i32 %110 to i64
  %113 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %114 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %8, align 8
  %116 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %115, i32 0, i32 0
  %117 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %118 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %117, i32 0, i32 3
  %119 = call i32 @list_add_tail(i32* %116, i32* %118)
  %120 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %121 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %120, i32 0, i32 2
  %122 = call i32 @spin_unlock(i32* %121)
  br label %19

123:                                              ; preds = %101, %64, %56, %50, %28
  %124 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %125 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @gfs2_disk_hash(i8*, i32) #1

declare dso_local i32 @gfs2_dir_check(i32, %struct.qstr*, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_jdesc* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @slow_work_init(i32*, i32*) #1

declare dso_local i32 @gfs2_lookupi(i32, %struct.qstr*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.gfs2_jdesc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
