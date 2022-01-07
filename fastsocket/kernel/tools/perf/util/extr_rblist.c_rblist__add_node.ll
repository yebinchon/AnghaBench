; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_rblist.c_rblist__add_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_rblist.c_rblist__add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rblist = type { i32 (%struct.rb_node*, i8*)*, i32, %struct.TYPE_2__, %struct.rb_node* (%struct.rblist*, i8*)* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.TYPE_2__ = type { %struct.rb_node* }

@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rblist__add_node(%struct.rblist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rblist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rb_node**, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca i32, align 4
  store %struct.rblist* %0, %struct.rblist** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.rblist*, %struct.rblist** %4, align 8
  %11 = getelementptr inbounds %struct.rblist, %struct.rblist* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.rb_node** %12, %struct.rb_node*** %6, align 8
  store %struct.rb_node* null, %struct.rb_node** %7, align 8
  br label %13

13:                                               ; preds = %43, %2
  %14 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %15 = load %struct.rb_node*, %struct.rb_node** %14, align 8
  %16 = icmp ne %struct.rb_node* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %19 = load %struct.rb_node*, %struct.rb_node** %18, align 8
  store %struct.rb_node* %19, %struct.rb_node** %7, align 8
  %20 = load %struct.rblist*, %struct.rblist** %4, align 8
  %21 = getelementptr inbounds %struct.rblist, %struct.rblist* %20, i32 0, i32 0
  %22 = load i32 (%struct.rb_node*, i8*)*, i32 (%struct.rb_node*, i8*)** %21, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 %22(%struct.rb_node* %23, i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %30 = load %struct.rb_node*, %struct.rb_node** %29, align 8
  %31 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %30, i32 0, i32 1
  store %struct.rb_node** %31, %struct.rb_node*** %6, align 8
  br label %43

32:                                               ; preds = %17
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %37 = load %struct.rb_node*, %struct.rb_node** %36, align 8
  %38 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %37, i32 0, i32 0
  store %struct.rb_node** %38, %struct.rb_node*** %6, align 8
  br label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EEXIST, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %28
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.rblist*, %struct.rblist** %4, align 8
  %46 = getelementptr inbounds %struct.rblist, %struct.rblist* %45, i32 0, i32 3
  %47 = load %struct.rb_node* (%struct.rblist*, i8*)*, %struct.rb_node* (%struct.rblist*, i8*)** %46, align 8
  %48 = load %struct.rblist*, %struct.rblist** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call %struct.rb_node* %47(%struct.rblist* %48, i8* %49)
  store %struct.rb_node* %50, %struct.rb_node** %8, align 8
  %51 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %52 = icmp eq %struct.rb_node* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %69

56:                                               ; preds = %44
  %57 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %58 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %59 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %60 = call i32 @rb_link_node(%struct.rb_node* %57, %struct.rb_node* %58, %struct.rb_node** %59)
  %61 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %62 = load %struct.rblist*, %struct.rblist** %4, align 8
  %63 = getelementptr inbounds %struct.rblist, %struct.rblist* %62, i32 0, i32 2
  %64 = call i32 @rb_insert_color(%struct.rb_node* %61, %struct.TYPE_2__* %63)
  %65 = load %struct.rblist*, %struct.rblist** %4, align 8
  %66 = getelementptr inbounds %struct.rblist, %struct.rblist* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %56, %53, %39
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @rb_link_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(%struct.rb_node*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
