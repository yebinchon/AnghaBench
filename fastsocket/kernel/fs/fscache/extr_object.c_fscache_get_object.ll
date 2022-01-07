; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_get_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.fscache_object*)* }

@fscache_n_cop_grab_object = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscache_object*)* @fscache_get_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscache_get_object(%struct.fscache_object* %0) #0 {
  %2 = alloca %struct.fscache_object*, align 8
  %3 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %2, align 8
  %4 = call i32 @fscache_stat(i32* @fscache_n_cop_grab_object)
  %5 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %6 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64 (%struct.fscache_object*)*, i64 (%struct.fscache_object*)** %10, align 8
  %12 = load %struct.fscache_object*, %struct.fscache_object** %2, align 8
  %13 = call i64 %11(%struct.fscache_object* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  br label %19

19:                                               ; preds = %16, %15
  %20 = phi i32 [ 0, %15 ], [ %18, %16 ]
  store i32 %20, i32* %3, align 4
  %21 = call i32 @fscache_stat_d(i32* @fscache_n_cop_grab_object)
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @fscache_stat_d(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
