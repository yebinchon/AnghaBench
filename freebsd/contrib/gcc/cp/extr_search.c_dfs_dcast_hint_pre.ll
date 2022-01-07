; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_dfs_dcast_hint_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_dfs_dcast_hint_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcast_data_s = type { i8*, i64, i64, i32 }

@dfs_skip_bases = common dso_local global i8* null, align 8
@NULL_TREE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @dfs_dcast_hint_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dfs_dcast_hint_pre(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dcast_data_s*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.dcast_data_s*
  store %struct.dcast_data_s* %8, %struct.dcast_data_s** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @BINFO_VIRTUAL_P(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.dcast_data_s*, %struct.dcast_data_s** %6, align 8
  %14 = getelementptr inbounds %struct.dcast_data_s, %struct.dcast_data_s* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @BINFO_TYPE(i8* %18)
  %20 = load %struct.dcast_data_s*, %struct.dcast_data_s** %6, align 8
  %21 = getelementptr inbounds %struct.dcast_data_s, %struct.dcast_data_s* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @SAME_BINFO_TYPE_P(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %17
  %26 = load %struct.dcast_data_s*, %struct.dcast_data_s** %6, align 8
  %27 = getelementptr inbounds %struct.dcast_data_s, %struct.dcast_data_s* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = call i8* @ssize_int(i32 -1)
  %32 = load %struct.dcast_data_s*, %struct.dcast_data_s** %6, align 8
  %33 = getelementptr inbounds %struct.dcast_data_s, %struct.dcast_data_s* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.dcast_data_s*, %struct.dcast_data_s** %6, align 8
  %35 = getelementptr inbounds %struct.dcast_data_s, %struct.dcast_data_s* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %3, align 8
  br label %66

37:                                               ; preds = %25
  %38 = load %struct.dcast_data_s*, %struct.dcast_data_s** %6, align 8
  %39 = getelementptr inbounds %struct.dcast_data_s, %struct.dcast_data_s* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = call i8* @ssize_int(i32 -3)
  %44 = load %struct.dcast_data_s*, %struct.dcast_data_s** %6, align 8
  %45 = getelementptr inbounds %struct.dcast_data_s, %struct.dcast_data_s* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %51

46:                                               ; preds = %37
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @BINFO_OFFSET(i8* %47)
  %49 = load %struct.dcast_data_s*, %struct.dcast_data_s** %6, align 8
  %50 = getelementptr inbounds %struct.dcast_data_s, %struct.dcast_data_s* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.dcast_data_s*, %struct.dcast_data_s** %6, align 8
  %53 = getelementptr inbounds %struct.dcast_data_s, %struct.dcast_data_s* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** @dfs_skip_bases, align 8
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.dcast_data_s*, %struct.dcast_data_s** %6, align 8
  %60 = getelementptr inbounds %struct.dcast_data_s, %struct.dcast_data_s* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  br label %62

62:                                               ; preds = %58, %56
  %63 = phi i8* [ %57, %56 ], [ %61, %58 ]
  store i8* %63, i8** %3, align 8
  br label %66

64:                                               ; preds = %17
  %65 = load i8*, i8** @NULL_TREE, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %64, %62, %30
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i64 @BINFO_VIRTUAL_P(i8*) #1

declare dso_local i64 @SAME_BINFO_TYPE_P(i32, i32) #1

declare dso_local i32 @BINFO_TYPE(i8*) #1

declare dso_local i8* @ssize_int(i32) #1

declare dso_local i8* @BINFO_OFFSET(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
