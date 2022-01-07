; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_filename_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_filename_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filename = type { i32 }
%struct.nameidata = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@LOOKUP_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.filename*, i32, %struct.nameidata*)* @filename_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filename_lookup(i32 %0, %struct.filename* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.filename*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.filename* %1, %struct.filename** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nameidata* %3, %struct.nameidata** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.filename*, %struct.filename** %6, align 8
  %12 = getelementptr inbounds %struct.filename, %struct.filename* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %16 = call i32 @path_init(i32 %10, i32 %13, i32 %14, %struct.nameidata* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load %struct.filename*, %struct.filename** %6, align 8
  %21 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %22 = call i32 @path_walk(%struct.filename* %20, %struct.nameidata* %21)
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = call i32 (...) @audit_dummy_context()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %31 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %37 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %35, %29, %26, %23
  %44 = phi i1 [ false, %29 ], [ false, %26 ], [ false, %23 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.filename*, %struct.filename** %6, align 8
  %50 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %51 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @LOOKUP_PARENT, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @audit_inode(%struct.filename* %49, %struct.TYPE_6__* %53, i32 %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %66 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %65, i32 0, i32 0
  %67 = call i32 @path_put(%struct.TYPE_5__* %66)
  %68 = load %struct.nameidata*, %struct.nameidata** %8, align 8
  %69 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @path_init(i32, i32, i32, %struct.nameidata*) #1

declare dso_local i32 @path_walk(%struct.filename*, %struct.nameidata*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_dummy_context(...) #1

declare dso_local i32 @audit_inode(%struct.filename*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @path_put(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
