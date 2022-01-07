; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ulist.c_ulist_add_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ulist.c_ulist_add_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulist = type { i32, i32, %struct.ulist_node*, i32 }
%struct.ulist_node = type { i64, i64 }

@ULIST_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ulist_add_merge(%struct.ulist* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ulist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ulist_node*, align 8
  %15 = alloca i8*, align 8
  store %struct.ulist* %0, %struct.ulist** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %48, %5
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.ulist*, %struct.ulist** %7, align 8
  %19 = getelementptr inbounds %struct.ulist, %struct.ulist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = load %struct.ulist*, %struct.ulist** %7, align 8
  %24 = getelementptr inbounds %struct.ulist, %struct.ulist* %23, i32 0, i32 2
  %25 = load %struct.ulist_node*, %struct.ulist_node** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %25, i64 %27
  %29 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %22
  %34 = load i64*, i64** %10, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.ulist*, %struct.ulist** %7, align 8
  %38 = getelementptr inbounds %struct.ulist, %struct.ulist* %37, i32 0, i32 2
  %39 = load %struct.ulist_node*, %struct.ulist_node** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %39, i64 %41
  %43 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %10, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %36, %33
  store i32 0, i32* %6, align 4
  br label %129

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %16

51:                                               ; preds = %16
  %52 = load %struct.ulist*, %struct.ulist** %7, align 8
  %53 = getelementptr inbounds %struct.ulist, %struct.ulist* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ulist*, %struct.ulist** %7, align 8
  %56 = getelementptr inbounds %struct.ulist, %struct.ulist* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %104

59:                                               ; preds = %51
  %60 = load %struct.ulist*, %struct.ulist** %7, align 8
  %61 = getelementptr inbounds %struct.ulist, %struct.ulist* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 128
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %13, align 8
  store i8* null, i8** %15, align 8
  %65 = load %struct.ulist*, %struct.ulist** %7, align 8
  %66 = getelementptr inbounds %struct.ulist, %struct.ulist* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ULIST_SIZE, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.ulist*, %struct.ulist** %7, align 8
  %72 = getelementptr inbounds %struct.ulist, %struct.ulist* %71, i32 0, i32 2
  %73 = load %struct.ulist_node*, %struct.ulist_node** %72, align 8
  %74 = bitcast %struct.ulist_node* %73 to i8*
  store i8* %74, i8** %15, align 8
  br label %75

75:                                               ; preds = %70, %59
  %76 = load i8*, i8** %15, align 8
  %77 = load i64, i64* %13, align 8
  %78 = mul i64 16, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.ulist_node* @krealloc(i8* %76, i32 %79, i32 %80)
  store %struct.ulist_node* %81, %struct.ulist_node** %14, align 8
  %82 = load %struct.ulist_node*, %struct.ulist_node** %14, align 8
  %83 = icmp ne %struct.ulist_node* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %129

87:                                               ; preds = %75
  %88 = load i8*, i8** %15, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load %struct.ulist_node*, %struct.ulist_node** %14, align 8
  %92 = load %struct.ulist*, %struct.ulist** %7, align 8
  %93 = getelementptr inbounds %struct.ulist, %struct.ulist* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @memcpy(%struct.ulist_node* %91, i32 %94, i32 4)
  br label %96

96:                                               ; preds = %90, %87
  %97 = load %struct.ulist_node*, %struct.ulist_node** %14, align 8
  %98 = load %struct.ulist*, %struct.ulist** %7, align 8
  %99 = getelementptr inbounds %struct.ulist, %struct.ulist* %98, i32 0, i32 2
  store %struct.ulist_node* %97, %struct.ulist_node** %99, align 8
  %100 = load i64, i64* %13, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.ulist*, %struct.ulist** %7, align 8
  %103 = getelementptr inbounds %struct.ulist, %struct.ulist* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %96, %51
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.ulist*, %struct.ulist** %7, align 8
  %107 = getelementptr inbounds %struct.ulist, %struct.ulist* %106, i32 0, i32 2
  %108 = load %struct.ulist_node*, %struct.ulist_node** %107, align 8
  %109 = load %struct.ulist*, %struct.ulist** %7, align 8
  %110 = getelementptr inbounds %struct.ulist, %struct.ulist* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %108, i64 %112
  %114 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %113, i32 0, i32 0
  store i64 %105, i64* %114, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.ulist*, %struct.ulist** %7, align 8
  %117 = getelementptr inbounds %struct.ulist, %struct.ulist* %116, i32 0, i32 2
  %118 = load %struct.ulist_node*, %struct.ulist_node** %117, align 8
  %119 = load %struct.ulist*, %struct.ulist** %7, align 8
  %120 = getelementptr inbounds %struct.ulist, %struct.ulist* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %118, i64 %122
  %124 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %123, i32 0, i32 1
  store i64 %115, i64* %124, align 8
  %125 = load %struct.ulist*, %struct.ulist** %7, align 8
  %126 = getelementptr inbounds %struct.ulist, %struct.ulist* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  store i32 1, i32* %6, align 4
  br label %129

129:                                              ; preds = %104, %84, %46
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local %struct.ulist_node* @krealloc(i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ulist_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
