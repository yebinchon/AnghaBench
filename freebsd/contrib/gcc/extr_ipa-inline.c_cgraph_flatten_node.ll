; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_flatten_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_flatten_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_2__, %struct.cgraph_edge* }
%struct.TYPE_2__ = type { i64 }
%struct.cgraph_edge = type { %struct.cgraph_node*, i64, %struct.cgraph_edge* }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c" inlining %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" !inlining %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*, i32)* @cgraph_flatten_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgraph_flatten_node(%struct.cgraph_node* %0, i32 %1) #0 {
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgraph_edge*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %6, i32 0, i32 1
  %8 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  store %struct.cgraph_edge* %8, %struct.cgraph_edge** %5, align 8
  br label %9

9:                                                ; preds = %70, %2
  %10 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %11 = icmp ne %struct.cgraph_edge* %10, null
  br i1 %11, label %12, label %74

12:                                               ; preds = %9
  %13 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %14 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %12
  %18 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %19 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %18, i32 0, i32 0
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %19, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %17
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %27 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %28 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %27, i32 0, i32 0
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %28, align 8
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %31 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %30, i32 0, i32 1
  %32 = call i32 @cgraph_recursive_inlining_p(%struct.cgraph_node* %26, %struct.cgraph_node* %29, i64* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %37 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %36, i32 0, i32 0
  %38 = load %struct.cgraph_node*, %struct.cgraph_node** %37, align 8
  %39 = call i32 @htab_find(i32 %35, %struct.cgraph_node* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* @dump_file, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i64, i64* @dump_file, align 8
  %46 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %47 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %46, i32 0, i32 0
  %48 = load %struct.cgraph_node*, %struct.cgraph_node** %47, align 8
  %49 = call i8* @cgraph_node_name(%struct.cgraph_node* %48)
  %50 = call i32 @fprintf(i64 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %44, %41
  %52 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %53 = call i32 @cgraph_mark_inline_edge(%struct.cgraph_edge* %52, i32 1)
  %54 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %55 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %54, i32 0, i32 0
  %56 = load %struct.cgraph_node*, %struct.cgraph_node** %55, align 8
  %57 = load i32, i32* %4, align 4
  call void @cgraph_flatten_node(%struct.cgraph_node* %56, i32 %57)
  br label %69

58:                                               ; preds = %34, %25, %17, %12
  %59 = load i64, i64* @dump_file, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i64, i64* @dump_file, align 8
  %63 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %64 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %63, i32 0, i32 0
  %65 = load %struct.cgraph_node*, %struct.cgraph_node** %64, align 8
  %66 = call i8* @cgraph_node_name(%struct.cgraph_node* %65)
  %67 = call i32 @fprintf(i64 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %61, %58
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %72 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %71, i32 0, i32 2
  %73 = load %struct.cgraph_edge*, %struct.cgraph_edge** %72, align 8
  store %struct.cgraph_edge* %73, %struct.cgraph_edge** %5, align 8
  br label %9

74:                                               ; preds = %9
  ret void
}

declare dso_local i32 @cgraph_recursive_inlining_p(%struct.cgraph_node*, %struct.cgraph_node*, i64*) #1

declare dso_local i32 @htab_find(i32, %struct.cgraph_node*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) #1

declare dso_local i32 @cgraph_mark_inline_edge(%struct.cgraph_edge*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
