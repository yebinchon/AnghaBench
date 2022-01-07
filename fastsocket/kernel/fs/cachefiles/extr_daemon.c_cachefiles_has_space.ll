; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_daemon.c_cachefiles_has_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_daemon.c_cachefiles_has_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i32, i64, i32, i64, i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kstatfs = type { i32, i32 }
%struct.path = type { i32, %struct.TYPE_2__* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"statfs failed\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@CACHEFILES_CULLING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"cease culling\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"### CULL CACHE ###\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_has_space(%struct.cachefiles_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cachefiles_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kstatfs, align 4
  %9 = alloca %struct.path, align 8
  %10 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %12 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %13 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %12, i32 0, i32 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  %18 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %19 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %18, i32 0, i32 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %17, align 8
  %21 = call i32 @memset(%struct.kstatfs* %8, i32 0, i32 8)
  %22 = call i32 @vfs_statfs(%struct.path* %9, %struct.kstatfs* %8)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %32 = call i32 @cachefiles_io_error(%struct.cachefiles_cache* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %147

37:                                               ; preds = %3
  %38 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %39 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %55

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %67

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* @ENOBUFS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  %70 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %74 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %81 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77, %67
  br label %133

85:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  %86 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  %89 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %90 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %97 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %85
  br label %133

101:                                              ; preds = %93
  %102 = load i32, i32* @CACHEFILES_CULLING, align 4
  %103 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %104 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %103, i32 0, i32 7
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  %111 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %112 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp sge i64 %110, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %119 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = icmp uge i32 %117, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %115
  %123 = load i32, i32* @CACHEFILES_CULLING, align 4
  %124 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %125 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %124, i32 0, i32 7
  %126 = call i64 @test_and_clear_bit(i32 %123, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = call i32 @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %131 = call i32 @cachefiles_state_changed(%struct.cachefiles_cache* %130)
  br label %132

132:                                              ; preds = %128, %122, %115, %107, %101
  store i32 0, i32* %4, align 4
  br label %147

133:                                              ; preds = %100, %84
  %134 = load i32, i32* @CACHEFILES_CULLING, align 4
  %135 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %136 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %135, i32 0, i32 7
  %137 = call i32 @test_and_set_bit(i32 %134, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %133
  %140 = call i32 @_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %142 = call i32 @cachefiles_state_changed(%struct.cachefiles_cache* %141)
  br label %143

143:                                              ; preds = %139, %133
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %143, %132, %33
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @memset(%struct.kstatfs*, i32, i32) #1

declare dso_local i32 @vfs_statfs(%struct.path*, %struct.kstatfs*) #1

declare dso_local i32 @cachefiles_io_error(%struct.cachefiles_cache*, i8*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @cachefiles_state_changed(%struct.cachefiles_cache*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
