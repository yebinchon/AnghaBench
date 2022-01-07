; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_rblist.c_rblist__find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_rblist.c_rblist__find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.rblist = type { i32 (%struct.rb_node*, i8*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rb_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rb_node* @rblist__find(%struct.rblist* %0, i8* %1) #0 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rblist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rb_node**, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca i32, align 4
  store %struct.rblist* %0, %struct.rblist** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.rblist*, %struct.rblist** %4, align 8
  %10 = getelementptr inbounds %struct.rblist, %struct.rblist* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.rb_node** %11, %struct.rb_node*** %6, align 8
  store %struct.rb_node* null, %struct.rb_node** %7, align 8
  br label %12

12:                                               ; preds = %41, %2
  %13 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %13, align 8
  %15 = icmp ne %struct.rb_node* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %18 = load %struct.rb_node*, %struct.rb_node** %17, align 8
  store %struct.rb_node* %18, %struct.rb_node** %7, align 8
  %19 = load %struct.rblist*, %struct.rblist** %4, align 8
  %20 = getelementptr inbounds %struct.rblist, %struct.rblist* %19, i32 0, i32 0
  %21 = load i32 (%struct.rb_node*, i8*)*, i32 (%struct.rb_node*, i8*)** %20, align 8
  %22 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 %21(%struct.rb_node* %22, i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %29 = load %struct.rb_node*, %struct.rb_node** %28, align 8
  %30 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %29, i32 0, i32 1
  store %struct.rb_node** %30, %struct.rb_node*** %6, align 8
  br label %41

31:                                               ; preds = %16
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %36 = load %struct.rb_node*, %struct.rb_node** %35, align 8
  %37 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %36, i32 0, i32 0
  store %struct.rb_node** %37, %struct.rb_node*** %6, align 8
  br label %40

38:                                               ; preds = %31
  %39 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  store %struct.rb_node* %39, %struct.rb_node** %3, align 8
  br label %43

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %27
  br label %12

42:                                               ; preds = %12
  store %struct.rb_node* null, %struct.rb_node** %3, align 8
  br label %43

43:                                               ; preds = %42, %38
  %44 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  ret %struct.rb_node* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
