; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_sec_merge_emit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c_sec_merge_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_merge_hash_entry = type { i32, i32, %struct.TYPE_5__, %struct.sec_merge_hash_entry*, %struct.sec_merge_sec_info* }
%struct.TYPE_5__ = type { i8* }
%struct.sec_merge_sec_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sec_merge_hash_entry*)* @sec_merge_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_merge_emit(i32* %0, %struct.sec_merge_hash_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sec_merge_hash_entry*, align 8
  %6 = alloca %struct.sec_merge_sec_info*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.sec_merge_hash_entry* %1, %struct.sec_merge_hash_entry** %5, align 8
  %13 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %14 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %13, i32 0, i32 4
  %15 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %14, align 8
  store %struct.sec_merge_sec_info* %15, %struct.sec_merge_sec_info** %6, align 8
  %16 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %6, align 8
  %17 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 1, %27
  %29 = call i8* @bfd_zmalloc(i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %2
  br label %36

36:                                               ; preds = %88, %35
  %37 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %38 = icmp ne %struct.sec_merge_hash_entry* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %41 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %40, i32 0, i32 4
  %42 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %41, align 8
  %43 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %6, align 8
  %44 = icmp eq %struct.sec_merge_sec_info* %42, %43
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  br i1 %46, label %47, label %92

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 0, %48
  %50 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %51 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %49, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %47
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @bfd_bwrite(i8* %58, i32 %59, i32* %60)
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %116

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %47
  %70 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %71 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %11, align 8
  %74 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %75 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @bfd_bwrite(i8* %77, i32 %78, i32* %79)
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %116

84:                                               ; preds = %69
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %84
  %89 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %5, align 8
  %90 = getelementptr inbounds %struct.sec_merge_hash_entry, %struct.sec_merge_hash_entry* %89, i32 0, i32 3
  %91 = load %struct.sec_merge_hash_entry*, %struct.sec_merge_hash_entry** %90, align 8
  store %struct.sec_merge_hash_entry* %91, %struct.sec_merge_hash_entry** %5, align 8
  br label %36

92:                                               ; preds = %45
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @bfd_bwrite(i8* %101, i32 %102, i32* %103)
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %116

108:                                              ; preds = %100, %92
  %109 = load i8*, i8** %8, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @free(i8* %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %3, align 4
  br label %124

116:                                              ; preds = %107, %83, %64
  %117 = load i8*, i8** %8, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @free(i8* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %114, %32
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i8* @bfd_zmalloc(i32) #1

declare dso_local i32 @bfd_bwrite(i8*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
