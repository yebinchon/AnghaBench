; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_sort_reserve_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_sort_reserve_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt_info = type { %struct.reserve_info* }
%struct.reserve_info = type { %struct.reserve_info* }

@cmp_reserve_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dt_info*)* @sort_reserve_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_reserve_entries(%struct.dt_info* %0) #0 {
  %2 = alloca %struct.dt_info*, align 8
  %3 = alloca %struct.reserve_info*, align 8
  %4 = alloca %struct.reserve_info**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dt_info* %0, %struct.dt_info** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.dt_info*, %struct.dt_info** %2, align 8
  %8 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %7, i32 0, i32 0
  %9 = load %struct.reserve_info*, %struct.reserve_info** %8, align 8
  store %struct.reserve_info* %9, %struct.reserve_info** %3, align 8
  br label %10

10:                                               ; preds = %16, %1
  %11 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  %12 = icmp ne %struct.reserve_info* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13
  %17 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  %18 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %17, i32 0, i32 0
  %19 = load %struct.reserve_info*, %struct.reserve_info** %18, align 8
  store %struct.reserve_info* %19, %struct.reserve_info** %3, align 8
  br label %10

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %88

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call %struct.reserve_info** @xmalloc(i32 %28)
  store %struct.reserve_info** %29, %struct.reserve_info*** %4, align 8
  %30 = load %struct.dt_info*, %struct.dt_info** %2, align 8
  %31 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %30, i32 0, i32 0
  %32 = load %struct.reserve_info*, %struct.reserve_info** %31, align 8
  store %struct.reserve_info* %32, %struct.reserve_info** %3, align 8
  br label %33

33:                                               ; preds = %43, %24
  %34 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  %35 = icmp ne %struct.reserve_info* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  %38 = load %struct.reserve_info**, %struct.reserve_info*** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds %struct.reserve_info*, %struct.reserve_info** %38, i64 %41
  store %struct.reserve_info* %37, %struct.reserve_info** %42, align 8
  br label %43

43:                                               ; preds = %36
  %44 = load %struct.reserve_info*, %struct.reserve_info** %3, align 8
  %45 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %44, i32 0, i32 0
  %46 = load %struct.reserve_info*, %struct.reserve_info** %45, align 8
  store %struct.reserve_info* %46, %struct.reserve_info** %3, align 8
  br label %33

47:                                               ; preds = %33
  %48 = load %struct.reserve_info**, %struct.reserve_info*** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @cmp_reserve_info, align 4
  %51 = call i32 @qsort(%struct.reserve_info** %48, i32 %49, i32 8, i32 %50)
  %52 = load %struct.reserve_info**, %struct.reserve_info*** %4, align 8
  %53 = getelementptr inbounds %struct.reserve_info*, %struct.reserve_info** %52, i64 0
  %54 = load %struct.reserve_info*, %struct.reserve_info** %53, align 8
  %55 = load %struct.dt_info*, %struct.dt_info** %2, align 8
  %56 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %55, i32 0, i32 0
  store %struct.reserve_info* %54, %struct.reserve_info** %56, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %75, %47
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load %struct.reserve_info**, %struct.reserve_info*** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.reserve_info*, %struct.reserve_info** %63, i64 %66
  %68 = load %struct.reserve_info*, %struct.reserve_info** %67, align 8
  %69 = load %struct.reserve_info**, %struct.reserve_info*** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.reserve_info*, %struct.reserve_info** %69, i64 %71
  %73 = load %struct.reserve_info*, %struct.reserve_info** %72, align 8
  %74 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %73, i32 0, i32 0
  store %struct.reserve_info* %68, %struct.reserve_info** %74, align 8
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %57

78:                                               ; preds = %57
  %79 = load %struct.reserve_info**, %struct.reserve_info*** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.reserve_info*, %struct.reserve_info** %79, i64 %82
  %84 = load %struct.reserve_info*, %struct.reserve_info** %83, align 8
  %85 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %84, i32 0, i32 0
  store %struct.reserve_info* null, %struct.reserve_info** %85, align 8
  %86 = load %struct.reserve_info**, %struct.reserve_info*** %4, align 8
  %87 = call i32 @free(%struct.reserve_info** %86)
  br label %88

88:                                               ; preds = %78, %23
  ret void
}

declare dso_local %struct.reserve_info** @xmalloc(i32) #1

declare dso_local i32 @qsort(%struct.reserve_info**, i32, i32, i32) #1

declare dso_local i32 @free(%struct.reserve_info**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
