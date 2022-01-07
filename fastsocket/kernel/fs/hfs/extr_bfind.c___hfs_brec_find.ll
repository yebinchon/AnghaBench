; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bfind.c___hfs_brec_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bfind.c___hfs_brec_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.hfs_find_data = type { i32, i64, i64, i64, i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hfs_brec_find(%struct.hfs_bnode* %0, %struct.hfs_find_data* %1) #0 {
  %3 = alloca %struct.hfs_bnode*, align 8
  %4 = alloca %struct.hfs_find_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %3, align 8
  store %struct.hfs_find_data* %1, %struct.hfs_find_data** %4, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %14 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  br label %19

19:                                               ; preds = %69, %2
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %20, %21
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %9, align 4
  %24 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @hfs_brec_lenoff(%struct.hfs_bnode* %24, i32 %25, i64* %6)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @hfs_brec_keylen(%struct.hfs_bnode* %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %121

35:                                               ; preds = %19
  %36 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %37 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %38 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %36, i32 %39, i64 %40, i64 %41)
  %43 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %44 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %49 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %52 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %47(i32 %50, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %35
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %101

59:                                               ; preds = %35
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %19, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @hfs_brec_lenoff(%struct.hfs_bnode* %81, i32 %82, i64* %6)
  store i64 %83, i64* %7, align 8
  %84 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @hfs_brec_keylen(%struct.hfs_bnode* %84, i32 %85)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %121

92:                                               ; preds = %80
  %93 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  %94 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %95 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %93, i32 %96, i64 %97, i64 %98)
  br label %100

100:                                              ; preds = %92, %77, %73
  br label %101

101:                                              ; preds = %100, %57
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %104 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %107 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %110 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* %8, align 8
  %113 = add nsw i64 %111, %112
  %114 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %115 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %8, align 8
  %118 = sub nsw i64 %116, %117
  %119 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %120 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %101, %89, %32
  %122 = load i32, i32* %12, align 4
  ret i32 %122
}

declare dso_local i64 @hfs_brec_lenoff(%struct.hfs_bnode*, i32, i64*) #1

declare dso_local i64 @hfs_brec_keylen(%struct.hfs_bnode*, i32) #1

declare dso_local i32 @hfs_bnode_read(%struct.hfs_bnode*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
