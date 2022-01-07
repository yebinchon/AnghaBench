; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_check_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32)* }

@fscache_n_checkaux_none = common dso_local global i32 0, align 4
@fscache_n_checkaux_okay = common dso_local global i32 0, align 4
@fscache_n_checkaux_update = common dso_local global i32 0, align 4
@fscache_n_checkaux_obsolete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscache_check_aux(%struct.fscache_object* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fscache_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %10 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %14, align 8
  %16 = icmp ne i32 (i32, i8*, i32)* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 @fscache_stat(i32* @fscache_n_checkaux_none)
  store i32 128, i32* %4, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %21 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %25, align 8
  %27 = load %struct.fscache_object*, %struct.fscache_object** %5, align 8
  %28 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 %26(i32 %31, i8* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %42 [
    i32 128, label %36
    i32 130, label %38
    i32 129, label %40
  ]

36:                                               ; preds = %19
  %37 = call i32 @fscache_stat(i32* @fscache_n_checkaux_okay)
  br label %44

38:                                               ; preds = %19
  %39 = call i32 @fscache_stat(i32* @fscache_n_checkaux_update)
  br label %44

40:                                               ; preds = %19
  %41 = call i32 @fscache_stat(i32* @fscache_n_checkaux_obsolete)
  br label %44

42:                                               ; preds = %19
  %43 = call i32 (...) @BUG()
  br label %44

44:                                               ; preds = %42, %40, %38, %36
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
