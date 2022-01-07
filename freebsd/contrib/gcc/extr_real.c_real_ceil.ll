; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_real_ceil.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_real_ceil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@dconst1 = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @real_ceil(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %9 = call i32 @do_fix_trunc(%struct.TYPE_12__* %7, %struct.TYPE_12__* %8)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = call i32 @real_identical(%struct.TYPE_12__* %7, %struct.TYPE_12__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @do_add(%struct.TYPE_12__* %7, %struct.TYPE_12__* %7, i32* @dconst1, i32 0)
  br label %20

20:                                               ; preds = %18, %13, %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @VOIDmode, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @real_convert(%struct.TYPE_12__* %25, i32 %26, %struct.TYPE_12__* %7)
  br label %32

28:                                               ; preds = %20
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = bitcast %struct.TYPE_12__* %29 to i8*
  %31 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %32

32:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @do_fix_trunc(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @real_identical(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @do_add(%struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @real_convert(%struct.TYPE_12__*, i32, %struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
