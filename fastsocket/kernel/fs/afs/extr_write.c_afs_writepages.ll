; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_writepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_write.c_afs_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i8*, %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }
%struct.writeback_control = type { i32, i64, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" = 0 [congest]\00", align 1
@LLONG_MAX = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.backing_dev_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %11 = load %struct.address_space*, %struct.address_space** %4, align 8
  %12 = getelementptr inbounds %struct.address_space, %struct.address_space* %11, i32 0, i32 1
  %13 = load %struct.backing_dev_info*, %struct.backing_dev_info** %12, align 8
  store %struct.backing_dev_info* %13, %struct.backing_dev_info** %6, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %16 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.backing_dev_info*, %struct.backing_dev_info** %6, align 8
  %21 = call i64 @bdi_write_congested(%struct.backing_dev_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %25 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

27:                                               ; preds = %19, %2
  %28 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %29 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  %33 = load %struct.address_space*, %struct.address_space** %4, align 8
  %34 = getelementptr inbounds %struct.address_space, %struct.address_space* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %8, align 8
  %36 = load %struct.address_space*, %struct.address_space** %4, align 8
  %37 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @afs_writepages_region(%struct.address_space* %36, %struct.writeback_control* %37, i8* %38, i8* %39, i8** %9)
  store i32 %40, i32* %10, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ugt i8* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %32
  %44 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %45 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %53 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %58 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.address_space*, %struct.address_space** %4, align 8
  %63 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @afs_writepages_region(%struct.address_space* %62, %struct.writeback_control* %63, i8* null, i8* %64, i8** %9)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %56, %48, %43, %32
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.address_space*, %struct.address_space** %4, align 8
  %69 = getelementptr inbounds %struct.address_space, %struct.address_space* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %121

70:                                               ; preds = %27
  %71 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %72 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %77 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LLONG_MAX, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load i32, i32* @LLONG_MAX, align 4
  %83 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %84 = ashr i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %8, align 8
  %87 = load %struct.address_space*, %struct.address_space** %4, align 8
  %88 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @afs_writepages_region(%struct.address_space* %87, %struct.writeback_control* %88, i8* null, i8* %89, i8** %9)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %92 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.address_space*, %struct.address_space** %4, align 8
  %98 = getelementptr inbounds %struct.address_space, %struct.address_space* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %95, %81
  br label %120

100:                                              ; preds = %75, %70
  %101 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %102 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %105 = ashr i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** %7, align 8
  %108 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %109 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %112 = ashr i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %8, align 8
  %115 = load %struct.address_space*, %struct.address_space** %4, align 8
  %116 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @afs_writepages_region(%struct.address_space* %115, %struct.writeback_control* %116, i8* %117, i8* %118, i8** %9)
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %100, %99
  br label %121

121:                                              ; preds = %120, %66
  %122 = load i32, i32* %10, align 4
  %123 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %23
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @bdi_write_congested(%struct.backing_dev_info*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @afs_writepages_region(%struct.address_space*, %struct.writeback_control*, i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
