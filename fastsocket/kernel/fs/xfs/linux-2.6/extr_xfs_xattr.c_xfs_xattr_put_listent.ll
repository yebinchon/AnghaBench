; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_xattr.c_xfs_xattr_put_listent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_xattr.c_xfs_xattr_put_listent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_attr_list_context = type { i32, i32, i64 }

@XFS_ATTR_ROOT = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_attr_list_context*, i32, i8*, i32, i32, i8*)* @xfs_xattr_put_listent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_xattr_put_listent(%struct.xfs_attr_list_context* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_attr_list_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.xfs_attr_list_context* %0, %struct.xfs_attr_list_context** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @xfs_xattr_prefix_len(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %8, align 8
  %20 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp uge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @XFS_ATTR_ROOT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %6
  %30 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %31 = call i32 @capable(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %87

34:                                               ; preds = %29, %6
  %35 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %8, align 8
  %36 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = add i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = add i32 %39, %40
  %42 = add i32 %41, 1
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %8, align 8
  %45 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %8, align 8
  %50 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  store i32 1, i32* %7, align 4
  br label %87

51:                                               ; preds = %34
  %52 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %8, align 8
  %53 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %8, align 8
  %57 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i8* @xfs_xattr_prefix(i32 %62)
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @strncpy(i8* %61, i8* %63, i32 %64)
  %66 = load i32, i32* %14, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %15, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @strncpy(i8* %70, i8* %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i8*, i8** %15, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %15, align 8
  store i8 0, i8* %78, align 1
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add i32 %79, %80
  %82 = add i32 %81, 1
  %83 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %8, align 8
  %84 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add i32 %85, %82
  store i32 %86, i32* %84, align 8
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %51, %48, %33
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @xfs_xattr_prefix_len(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @xfs_xattr_prefix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
