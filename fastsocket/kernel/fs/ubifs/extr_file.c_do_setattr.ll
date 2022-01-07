; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_do_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_file.c_do_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.inode*, i32*)* }
%struct.iattr = type { i32, i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32 }
%struct.ubifs_budget_req = type { i32, i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"size %lld -> %lld\00", align 1
@I_DIRTY_SYNC = common dso_local global i32 0, align 4
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, %struct.iattr*)* @do_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_setattr(%struct.ubifs_info* %0, %struct.inode* %1, %struct.iattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca %struct.ubifs_budget_req, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  %13 = load %struct.iattr*, %struct.iattr** %7, align 8
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %16)
  store %struct.ubifs_inode* %17, %struct.ubifs_inode** %11, align 8
  %18 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %12, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %12, i32 0, i32 1
  %20 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %21 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ALIGN(i32 %22, i32 8)
  store i32 %23, i32* %19, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %25 = call i32 @ubifs_budget_space(%struct.ubifs_info* %24, %struct.ubifs_budget_req* %12)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %123

30:                                               ; preds = %3
  %31 = load %struct.iattr*, %struct.iattr** %7, align 8
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ATTR_SIZE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @dbg_gen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @vmtruncate(%struct.inode* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %119

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %52 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.iattr*, %struct.iattr** %7, align 8
  %55 = getelementptr inbounds %struct.iattr, %struct.iattr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ATTR_SIZE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %50
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call i32 @ubifs_current_time(%struct.inode* %61)
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 3
  store i32 %62, i32* %66, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %71 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %60, %50
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = load %struct.iattr*, %struct.iattr** %7, align 8
  %75 = call i32 @do_attr_changes(%struct.inode* %73, %struct.iattr* %74)
  %76 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %77 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  %79 = load %struct.iattr*, %struct.iattr** %7, align 8
  %80 = getelementptr inbounds %struct.iattr, %struct.iattr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ATTR_SIZE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %72
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load i32, i32* @I_DIRTY_SYNC, align 4
  %88 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @__mark_inode_dirty(%struct.inode* %86, i32 %89)
  br label %94

91:                                               ; preds = %72
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = call i32 @mark_inode_dirty_sync(%struct.inode* %92)
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %96 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %95, i32 0, i32 1
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %102 = call i32 @ubifs_release_budget(%struct.ubifs_info* %101, %struct.ubifs_budget_req* %12)
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = call i64 @IS_SYNC(%struct.inode* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32 (%struct.inode*, i32*)*, i32 (%struct.inode*, i32*)** %113, align 8
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = call i32 %114(%struct.inode* %115, i32* null)
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %107, %103
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %4, align 4
  br label %123

119:                                              ; preds = %48
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %121 = call i32 @ubifs_release_budget(%struct.ubifs_info* %120, %struct.ubifs_budget_req* %12)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %119, %117, %28
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32) #1

declare dso_local i32 @vmtruncate(%struct.inode*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_current_time(%struct.inode*) #1

declare dso_local i32 @do_attr_changes(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
