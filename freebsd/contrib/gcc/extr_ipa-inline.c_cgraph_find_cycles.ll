; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_find_cycles.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_find_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_node*, %struct.cgraph_edge* }
%struct.cgraph_edge = type { %struct.cgraph_node*, %struct.cgraph_edge* }

@INSERT = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Cycle contains %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*, i32)* @cgraph_find_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgraph_find_cycles(%struct.cgraph_node* %0, i32 %1) #0 {
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgraph_edge*, align 8
  %6 = alloca i8**, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %8 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %7, i32 0, i32 0
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %10 = icmp ne %struct.cgraph_node* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %14 = load i32, i32* @INSERT, align 4
  %15 = call i8** @htab_find_slot(i32 %12, %struct.cgraph_node* %13, i32 %14)
  store i8** %15, i8*** %6, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %11
  %20 = load i64, i64* @dump_file, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i64, i64* @dump_file, align 8
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %25 = call i8* @cgraph_node_name(%struct.cgraph_node* %24)
  %26 = call i32 @fprintf(i64 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %29 = bitcast %struct.cgraph_node* %28 to i8*
  %30 = load i8**, i8*** %6, align 8
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %27, %11
  br label %54

32:                                               ; preds = %2
  %33 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %34 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %35 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %34, i32 0, i32 0
  store %struct.cgraph_node* %33, %struct.cgraph_node** %35, align 8
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %37 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %36, i32 0, i32 1
  %38 = load %struct.cgraph_edge*, %struct.cgraph_edge** %37, align 8
  store %struct.cgraph_edge* %38, %struct.cgraph_edge** %5, align 8
  br label %39

39:                                               ; preds = %47, %32
  %40 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %41 = icmp ne %struct.cgraph_edge* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %44 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %43, i32 0, i32 0
  %45 = load %struct.cgraph_node*, %struct.cgraph_node** %44, align 8
  %46 = load i32, i32* %4, align 4
  call void @cgraph_find_cycles(%struct.cgraph_node* %45, i32 %46)
  br label %47

47:                                               ; preds = %42
  %48 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %49 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %48, i32 0, i32 1
  %50 = load %struct.cgraph_edge*, %struct.cgraph_edge** %49, align 8
  store %struct.cgraph_edge* %50, %struct.cgraph_edge** %5, align 8
  br label %39

51:                                               ; preds = %39
  %52 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %53 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %52, i32 0, i32 0
  store %struct.cgraph_node* null, %struct.cgraph_node** %53, align 8
  br label %54

54:                                               ; preds = %51, %31
  ret void
}

declare dso_local i8** @htab_find_slot(i32, %struct.cgraph_node*, i32) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
