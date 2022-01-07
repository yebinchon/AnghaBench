; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_targets.c_find_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_targets.c_find_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.targmatch = type { %struct.TYPE_4__*, i32* }

@bfd_target_vector = common dso_local global %struct.TYPE_4__** null, align 8
@bfd_target_match = common dso_local global %struct.targmatch* null, align 8
@bfd_error_invalid_target = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*)* @find_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @find_target(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.targmatch*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @bfd_target_vector, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %6, i64 0
  store %struct.TYPE_4__** %7, %struct.TYPE_4__*** %4, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strcmp(i8* %13, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %2, align 8
  br label %62

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i32 1
  store %struct.TYPE_4__** %26, %struct.TYPE_4__*** %4, align 8
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.targmatch*, %struct.targmatch** @bfd_target_match, align 8
  %29 = getelementptr inbounds %struct.targmatch, %struct.targmatch* %28, i64 0
  store %struct.targmatch* %29, %struct.targmatch** %5, align 8
  br label %30

30:                                               ; preds = %56, %27
  %31 = load %struct.targmatch*, %struct.targmatch** %5, align 8
  %32 = getelementptr inbounds %struct.targmatch, %struct.targmatch* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load %struct.targmatch*, %struct.targmatch** %5, align 8
  %37 = getelementptr inbounds %struct.targmatch, %struct.targmatch* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @fnmatch(i32* %38, i8* %39, i32 0)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %48, %42
  %44 = load %struct.targmatch*, %struct.targmatch** %5, align 8
  %45 = getelementptr inbounds %struct.targmatch, %struct.targmatch* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp eq %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.targmatch*, %struct.targmatch** %5, align 8
  %50 = getelementptr inbounds %struct.targmatch, %struct.targmatch* %49, i32 1
  store %struct.targmatch* %50, %struct.targmatch** %5, align 8
  br label %43

51:                                               ; preds = %43
  %52 = load %struct.targmatch*, %struct.targmatch** %5, align 8
  %53 = getelementptr inbounds %struct.targmatch, %struct.targmatch* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %2, align 8
  br label %62

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.targmatch*, %struct.targmatch** %5, align 8
  %58 = getelementptr inbounds %struct.targmatch, %struct.targmatch* %57, i32 1
  store %struct.targmatch* %58, %struct.targmatch** %5, align 8
  br label %30

59:                                               ; preds = %30
  %60 = load i32, i32* @bfd_error_invalid_target, align 4
  %61 = call i32 @bfd_set_error(i32 %60)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %62

62:                                               ; preds = %59, %51, %20
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %63
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @fnmatch(i32*, i8*, i32) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
