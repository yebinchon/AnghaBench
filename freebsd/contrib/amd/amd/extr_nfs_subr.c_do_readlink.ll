; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_nfs_subr.c_do_readlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_nfs_subr.c_do_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* (%struct.TYPE_11__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, i32*)* @do_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_readlink(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__* (%struct.TYPE_11__*, i32*)*, %struct.TYPE_11__* (%struct.TYPE_11__*, i32*)** %15, align 8
  %17 = icmp ne %struct.TYPE_11__* (%struct.TYPE_11__*, i32*)* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__* (%struct.TYPE_11__*, i32*)*, %struct.TYPE_11__* (%struct.TYPE_11__*, i32*)** %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = call %struct.TYPE_11__* %27(%struct.TYPE_11__* %28, i32* %7)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %4, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = icmp eq %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  store i8* null, i8** %3, align 8
  br label %55

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %6, align 8
  br label %53

45:                                               ; preds = %36
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %6, align 8
  br label %53

53:                                               ; preds = %45, %41
  %54 = load i8*, i8** %6, align 8
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %53, %32
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
