; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_remove_xattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_xattr.c_remove_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { i64, i32 }
%struct.qstr = type { i64 }
%struct.ubifs_inode = type { i64, i32, i32, i32, i32 }
%struct.ubifs_budget_req = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, %struct.inode*, %struct.qstr*)* @remove_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_xattr(%struct.ubifs_info* %0, %struct.inode* %1, %struct.inode* %2, %struct.qstr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca %struct.ubifs_inode*, align 8
  %13 = alloca %struct.ubifs_budget_req, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.qstr* %3, %struct.qstr** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %14)
  store %struct.ubifs_inode* %15, %struct.ubifs_inode** %11, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %16)
  store %struct.ubifs_inode* %17, %struct.ubifs_inode** %12, align 8
  %18 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %13, i32 0, i32 0
  store i32 2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %13, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %13, i32 0, i32 2
  %21 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %22 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ALIGN(i64 %23, i32 8)
  store i32 %24, i32* %20, align 4
  %25 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %26 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ubifs_assert(i32 %32)
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %35 = call i32 @ubifs_budget_space(%struct.ubifs_info* %34, %struct.ubifs_budget_req* %13)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %128

40:                                               ; preds = %4
  %41 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %42 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %41, i32 0, i32 2
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call i32 @ubifs_current_time(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %49 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.qstr*, %struct.qstr** %9, align 8
  %53 = getelementptr inbounds %struct.qstr, %struct.qstr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @CALC_DENT_SIZE(i64 %54)
  %56 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %57 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 8
  %62 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %63 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @CALC_XATTR_BYTES(i64 %64)
  %66 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %67 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load %struct.qstr*, %struct.qstr** %9, align 8
  %73 = getelementptr inbounds %struct.qstr, %struct.qstr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %76 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = load %struct.qstr*, %struct.qstr** %9, align 8
  %85 = call i32 @ubifs_jnl_delete_xattr(%struct.ubifs_info* %81, %struct.inode* %82, %struct.inode* %83, %struct.qstr* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %40
  br label %95

89:                                               ; preds = %40
  %90 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %91 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %94 = call i32 @ubifs_release_budget(%struct.ubifs_info* %93, %struct.ubifs_budget_req* %13)
  store i32 0, i32* %5, align 4
  br label %128

95:                                               ; preds = %88
  %96 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %97 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.qstr*, %struct.qstr** %9, align 8
  %101 = getelementptr inbounds %struct.qstr, %struct.qstr* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @CALC_DENT_SIZE(i64 %102)
  %104 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %105 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 8
  %110 = load %struct.ubifs_inode*, %struct.ubifs_inode** %12, align 8
  %111 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @CALC_XATTR_BYTES(i64 %112)
  %114 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %115 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %113
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 8
  %120 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %121 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %120, i32 0, i32 2
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %124 = call i32 @ubifs_release_budget(%struct.ubifs_info* %123, %struct.ubifs_budget_req* %13)
  %125 = load %struct.inode*, %struct.inode** %8, align 8
  %126 = call i32 @make_bad_inode(%struct.inode* %125)
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %95, %89, %38
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_current_time(%struct.inode*) #1

declare dso_local i64 @CALC_DENT_SIZE(i64) #1

declare dso_local i64 @CALC_XATTR_BYTES(i64) #1

declare dso_local i32 @ubifs_jnl_delete_xattr(%struct.ubifs_info*, %struct.inode*, %struct.inode*, %struct.qstr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
