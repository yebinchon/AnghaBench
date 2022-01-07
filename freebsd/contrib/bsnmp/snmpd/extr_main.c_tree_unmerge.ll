; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_tree_unmerge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_tree_unmerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.lmodule* }
%struct.lmodule = type { i32 }

@tree_size = common dso_local global i64 0, align 8
@tree = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lmodule*)* @tree_unmerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_unmerge(%struct.lmodule* %0) #0 {
  %2 = alloca %struct.lmodule*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.lmodule* %0, %struct.lmodule** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @tree_size, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tree, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.lmodule*, %struct.lmodule** %13, align 8
  %15 = load %struct.lmodule*, %struct.lmodule** %2, align 8
  %16 = icmp ne %struct.lmodule* %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %9
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tree, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tree, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = bitcast %struct.TYPE_2__* %24 to i8*
  %29 = bitcast %struct.TYPE_2__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  br label %30

30:                                               ; preds = %21, %17
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %30, %9
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %5

37:                                               ; preds = %5
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* @tree_size, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
