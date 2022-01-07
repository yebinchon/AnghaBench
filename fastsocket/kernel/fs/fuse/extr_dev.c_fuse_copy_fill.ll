; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*)* @fuse_copy_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_copy_fill(%struct.fuse_copy_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fuse_copy_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %3, align 8
  %6 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %7 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %10 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @unlock_request(i32 %8, i32 %11)
  %13 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %14 = call i32 @fuse_copy_finish(%struct.fuse_copy_state* %13)
  %15 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %16 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %1
  %20 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %21 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %28 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %27, i32 0, i32 10
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %34 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %36 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %35, i32 0, i32 10
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %42 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %44 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %43, i32 0, i32 10
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 1
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %44, align 8
  %47 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %48 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %19, %1
  %52 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %53 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %56 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %59 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %58, i32 0, i32 7
  %60 = call i32 @get_user_pages_fast(i64 %54, i32 1, i32 %57, i32* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %119

65:                                               ; preds = %51
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %71 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = urem i64 %72, %73
  store i64 %74, i64* %4, align 8
  %75 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %76 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @KM_USER0, align 4
  %79 = call i64 @kmap_atomic(i32 %77, i32 %78)
  %80 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %81 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  %82 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %83 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %4, align 8
  %86 = add i64 %84, %85
  %87 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %88 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %87, i32 0, i32 6
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* @PAGE_SIZE, align 8
  %90 = load i64, i64* %4, align 8
  %91 = sub i64 %89, %90
  %92 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %93 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @min(i64 %91, i64 %94)
  %96 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %97 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %99 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %102 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %106 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %109 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %113 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %116 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @lock_request(i32 %114, i32 %117)
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %65, %63
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @unlock_request(i32, i32) #1

declare dso_local i32 @fuse_copy_finish(%struct.fuse_copy_state*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, i32*) #1

declare dso_local i64 @kmap_atomic(i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @lock_request(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
