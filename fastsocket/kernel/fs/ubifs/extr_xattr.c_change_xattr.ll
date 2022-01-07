; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_change_xattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_change_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32, i32 }
%struct.ubifs_budget_req = type { i32, i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, %struct.inode*, i8*, i32)* @change_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_xattr(%struct.ubifs_info* %0, %struct.inode* %1, %struct.inode* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubifs_inode*, align 8
  %14 = alloca %struct.ubifs_inode*, align 8
  %15 = alloca %struct.ubifs_budget_req, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %16)
  store %struct.ubifs_inode* %17, %struct.ubifs_inode** %13, align 8
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %18)
  store %struct.ubifs_inode* %19, %struct.ubifs_inode** %14, align 8
  %20 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %15, i32 0, i32 0
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %15, i32 0, i32 1
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @ALIGN(i32 %22, i32 8)
  %24 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %25 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ALIGN(i32 %26, i32 8)
  %28 = add nsw i64 %23, %27
  store i64 %28, i64* %21, align 8
  %29 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %30 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ubifs_assert(i32 %36)
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %39 = call i32 @ubifs_budget_space(%struct.ubifs_info* %38, %struct.ubifs_budget_req* %15)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %142

44:                                               ; preds = %5
  %45 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %46 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @GFP_NOFS, align 4
  %51 = call i32 @kmalloc(i32 %49, i32 %50)
  %52 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %53 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %55 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  br label %138

61:                                               ; preds = %44
  %62 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %63 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @memcpy(i32 %64, i8* %65, i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %70 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %75 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %77 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %76, i32 0, i32 2
  %78 = call i32 @mutex_lock(i32* %77)
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = call i32 @ubifs_current_time(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %84 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @CALC_XATTR_BYTES(i32 %85)
  %87 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %88 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i64 @CALC_XATTR_BYTES(i32 %93)
  %95 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %96 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = call i32 @ubifs_jnl_change_xattr(%struct.ubifs_info* %101, %struct.inode* %102, %struct.inode* %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %61
  br label %114

108:                                              ; preds = %61
  %109 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %110 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %109, i32 0, i32 2
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %113 = call i32 @ubifs_release_budget(%struct.ubifs_info* %112, %struct.ubifs_budget_req* %15)
  store i32 0, i32* %6, align 4
  br label %142

114:                                              ; preds = %107
  %115 = load i32, i32* %11, align 4
  %116 = call i64 @CALC_XATTR_BYTES(i32 %115)
  %117 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %118 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %120, %116
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %124 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @CALC_XATTR_BYTES(i32 %125)
  %127 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %128 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %126
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  %133 = load %struct.ubifs_inode*, %struct.ubifs_inode** %13, align 8
  %134 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %133, i32 0, i32 2
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = call i32 @make_bad_inode(%struct.inode* %136)
  br label %138

138:                                              ; preds = %114, %58
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %140 = call i32 @ubifs_release_budget(%struct.ubifs_info* %139, %struct.ubifs_budget_req* %15)
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %138, %108, %42
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_current_time(%struct.inode*) #1

declare dso_local i64 @CALC_XATTR_BYTES(i32) #1

declare dso_local i32 @ubifs_jnl_change_xattr(%struct.ubifs_info*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
