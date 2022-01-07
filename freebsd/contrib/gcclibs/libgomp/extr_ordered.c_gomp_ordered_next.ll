; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_ordered.c_gomp_ordered_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.gomp_work_share*, %struct.gomp_team* }
%struct.gomp_work_share = type { i32, i32, i32, i32* }
%struct.gomp_team = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gomp_ordered_next() #0 {
  %1 = alloca %struct.gomp_thread*, align 8
  %2 = alloca %struct.gomp_team*, align 8
  %3 = alloca %struct.gomp_work_share*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %6, %struct.gomp_thread** %1, align 8
  %7 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %8 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.gomp_team*, %struct.gomp_team** %9, align 8
  store %struct.gomp_team* %10, %struct.gomp_team** %2, align 8
  %11 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %12 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.gomp_work_share*, %struct.gomp_work_share** %13, align 8
  store %struct.gomp_work_share* %14, %struct.gomp_work_share** %3, align 8
  %15 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %16 = icmp eq %struct.gomp_team* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %0
  %18 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %19 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %0
  br label %110

23:                                               ; preds = %17
  %24 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %25 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %27 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %32 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %35 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gomp_sem_post(i32 %39)
  br label %110

41:                                               ; preds = %23
  %42 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %43 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %46 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %41
  %50 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %51 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %54 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %52, %55
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %59 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp uge i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %64 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %49
  %69 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %70 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %75 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %68, %41
  %81 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %82 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add i32 %83, 1
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %87 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %80
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %94 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.gomp_work_share*, %struct.gomp_work_share** %3, align 8
  %96 = getelementptr inbounds %struct.gomp_work_share, %struct.gomp_work_share* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %5, align 4
  %102 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %103 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @gomp_sem_post(i32 %108)
  br label %110

110:                                              ; preds = %91, %30, %22
  ret void
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i32 @gomp_sem_post(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
