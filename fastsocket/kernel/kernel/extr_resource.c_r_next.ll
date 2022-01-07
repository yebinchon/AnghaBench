; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_r_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_r_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.resource = type { i8*, i8*, %struct.resource* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i8*, i32*)* @r_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_next(%struct.seq_file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.resource*
  store %struct.resource* %10, %struct.resource** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.resource*, %struct.resource** %8, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.resource*, %struct.resource** %8, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %4, align 8
  br label %43

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %35, %22
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.resource*, %struct.resource** %8, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 2
  %31 = load %struct.resource*, %struct.resource** %30, align 8
  %32 = icmp ne %struct.resource* %31, null
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load %struct.resource*, %struct.resource** %8, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 2
  %38 = load %struct.resource*, %struct.resource** %37, align 8
  store %struct.resource* %38, %struct.resource** %8, align 8
  br label %23

39:                                               ; preds = %33
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %39, %18
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
